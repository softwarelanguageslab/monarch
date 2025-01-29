(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7449 #t)) g7449)))
      (meta (lambda (v) (letrec* ((g7450 v)) g7450)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7451
            (letrec*
             ((g7452
               (letrec*
                ((x-e7453 lst))
                (letrec*
                 ((v1742 x-e7453))
                 (cond
                  ((begin (write '(funapp 22 20)) (display "\n") (null? v1742))
                   (letrec* () #f))
                  ((begin (write '(funapp 23 20)) (display "\n") (and #t #t))
                   (letrec*
                    ((v1
                      (begin
                        (write '(funapp 25 26))
                        (display "\n")
                        (car v1742)))
                     (vs
                      (begin
                        (write '(funapp 25 43))
                        (display "\n")
                        (cdr v1742))))
                    (letrec*
                     ((x-cnd7454
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7454
                       #t
                       (begin
                         (write '(funapp 28 39))
                         (display "\n")
                         (member v vs))))))
                  (else
                   (begin
                     (write '(funapp 29 25))
                     (display "\n")
                     (error "no match found"))))))))
             g7452)))
          g7451)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7455 (lambda (v) (letrec* ((g7456 v)) g7456)))) g7455)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7457
            (letrec*
             ((x7458 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7458)))))
          g7457))))
     (letrec*
      ((g7459
        (letrec*
         ((g7460
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
             ((g7461 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7462
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7262 g7263 g7264)
                    (letrec*
                     ((g7463
                       (letrec*
                        ((x-cnd7464
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7264))))
                        (if x-cnd7464
                          g7264
                          (begin
                            (write '(blame g7262 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7262)))))))
                     g7463)))
                 (boolean?/c
                  (lambda (g7265 g7266 g7267)
                    (letrec*
                     ((g7465
                       (letrec*
                        ((x-cnd7466
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7267))))
                        (if x-cnd7466
                          g7267
                          (begin
                            (write '(blame g7265 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7265)))))))
                     g7465)))
                 (number?/c
                  (lambda (g7268 g7269 g7270)
                    (letrec*
                     ((g7467
                       (letrec*
                        ((x-cnd7468
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7270))))
                        (if x-cnd7468
                          g7270
                          (begin
                            (write '(blame g7268 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7268)))))))
                     g7467)))
                 (any/c
                  (lambda (g7271 g7272 g7273)
                    (letrec*
                     ((g7469
                       (letrec*
                        ((x-cnd7470
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7471 #t)) g7471))
                             g7273))))
                        (if x-cnd7470
                          g7273
                          (begin
                            (write '(blame g7271 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7271)))))))
                     g7469)))
                 (any?/c
                  (lambda (g7274 g7275 g7276)
                    (letrec*
                     ((g7472
                       (letrec*
                        ((x-cnd7473
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7474 #t)) g7474))
                             g7276))))
                        (if x-cnd7473
                          g7276
                          (begin
                            (write '(blame g7274 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7274)))))))
                     g7472)))
                 (cons?/c
                  (lambda (g7277 g7278 g7279)
                    (letrec*
                     ((g7475
                       (letrec*
                        ((x-cnd7476
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7279))))
                        (if x-cnd7476
                          g7279
                          (begin
                            (write '(blame g7277 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7277)))))))
                     g7475)))
                 (pair?/c
                  (lambda (g7280 g7281 g7282)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x-cnd7478
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7282))))
                        (if x-cnd7478
                          g7282
                          (begin
                            (write '(blame g7280 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7280)))))))
                     g7477)))
                 (integer?/c
                  (lambda (g7283 g7284 g7285)
                    (letrec*
                     ((g7479
                       (letrec*
                        ((x-cnd7480
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7285))))
                        (if x-cnd7480
                          g7285
                          (begin
                            (write '(blame g7283 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7283)))))))
                     g7479)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7481
                       (lambda (k j v)
                         (letrec*
                          ((g7482
                            (letrec*
                             ((x-cnd7483
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7483
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7482))))
                     g7481)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7484
                       (lambda (k j v)
                         (letrec*
                          ((g7485
                            (letrec*
                             ((x-cnd7486
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7486
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7490
                                  (letrec*
                                   ((x7491
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7491))))
                                 (x7487
                                  (letrec*
                                   ((x7489
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7488
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7489 k j x7488)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7490 x7487)))))))
                          g7485))))
                     g7484)))
                 (any? (lambda (v) (letrec* ((g7492 #t)) g7492)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7493
                       (letrec*
                        ((x7494
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7494)))))
                     g7493)))
                 (nonzero?/c
                  (lambda (g7286 g7287 g7288)
                    (letrec*
                     ((g7495
                       (letrec*
                        ((x-cnd7496
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7497
                                  (letrec*
                                   ((x7498
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7498)))))
                                g7497))
                             g7288))))
                        (if x-cnd7496
                          g7288
                          (begin
                            (write '(blame g7286 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7286)))))))
                     g7495)))
                 (meta (lambda (v) (letrec* ((g7499 v)) g7499)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7291 k7292 f7293)
                       (letrec*
                        ((g7501
                          (lambda (g7289 g7290)
                            (letrec*
                             ((g7502
                               (letrec*
                                ((x7503
                                  (letrec*
                                   ((x7505
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7291 k7292 g7289)))
                                    (x7504
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7291 k7292 g7290))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7293 x7505 x7504)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7291 k7292 x7503)))))
                             g7502))))
                        g7501))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7500
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7500)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7296 k7297 f7298)
                       (letrec*
                        ((g7507
                          (lambda (g7294 g7295)
                            (letrec*
                             ((g7508
                               (letrec*
                                ((x7509
                                  (letrec*
                                   ((x7511
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7296 k7297 g7294)))
                                    (x7510
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7296 k7297 g7295))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7298 x7511 x7510)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7296 k7297 x7509)))))
                             g7508))))
                        g7507))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7506
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7506)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7301 k7302 f7303)
                       (letrec*
                        ((g7513
                          (lambda (g7299 g7300)
                            (letrec*
                             ((g7514
                               (letrec*
                                ((x7515
                                  (letrec*
                                   ((x7517
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7301 k7302 g7299)))
                                    (x7516
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7301 k7302 g7300))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7303 x7517 x7516)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7301 k7302 x7515)))))
                             g7514))))
                        g7513))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7512
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7512)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7519
                          (lambda (g7304 g7305)
                            (letrec*
                             ((g7520
                               (letrec*
                                ((x7521
                                  (letrec*
                                   ((x7523
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7306 k7307 g7304)))
                                    (x7522
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7308 x7523 x7522)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7306 k7307 x7521)))))
                             g7520))))
                        g7519))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7518
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7518)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7525
                          (lambda (g7309)
                            (letrec*
                             ((g7526
                               (letrec*
                                ((x7527
                                  (letrec*
                                   ((x7528
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7312 x7528)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7527)))))
                             g7526))))
                        g7525))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7524
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7524)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7314 k7315 f7316)
                       (letrec*
                        ((g7530
                          (lambda (g7313)
                            (letrec*
                             ((g7531
                               (letrec*
                                ((x7532
                                  (letrec*
                                   ((x7533
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7314 k7315 g7313))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7316 x7533)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7314 k7315 x7532)))))
                             g7531))))
                        g7530))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7529
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7529)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7535
                          (lambda (g7317 g7318)
                            (letrec*
                             ((g7536
                               (letrec*
                                ((x7537
                                  (letrec*
                                   ((x7539
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7319 k7320 g7317)))
                                    (x7538
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7321 x7539 x7538)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7319 k7320 x7537)))))
                             g7536))))
                        g7535))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7534
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7534)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7323 k7324 f7325)
                       (letrec*
                        ((g7541
                          (lambda (g7322)
                            (letrec*
                             ((g7542
                               (letrec*
                                ((x7543
                                  (letrec*
                                   ((x7544
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7323 k7324 g7322))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7325 x7544)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7323 k7324 x7543)))))
                             g7542))))
                        g7541))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7540
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7540)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7328 k7329 f7330)
                       (letrec*
                        ((g7546
                          (lambda (g7326 g7327)
                            (letrec*
                             ((g7547
                               (letrec*
                                ((x7548
                                  (letrec*
                                   ((x7550
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7328 k7329 g7326)))
                                    (x7549
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7328 k7329 g7327))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7330 x7550 x7549)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7328 k7329 x7548)))))
                             g7547))))
                        g7546))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7545
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7545)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7551
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7551)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7552
                       (letrec*
                        ((x7553
                          (letrec*
                           ((x7554
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7554)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7553)))))
                     g7552)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7555
                       (letrec*
                        ((x7558
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7558))))
                      (g7556
                       (letrec*
                        ((x7559
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7559))))
                      (g7557
                       (letrec*
                        ((x-cnd7560
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7560
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7563
                             (letrec*
                              ((x7564
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7564))))
                            (x7561
                             (letrec*
                              ((x7562
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7562)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7563 x7561)))))))
                     g7557)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7565
                       (letrec*
                        ((x7566
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7566)))))
                     g7565)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7567
                       (letrec*
                        ((x7568
                          (letrec*
                           ((x7569
                             (letrec*
                              ((x7570
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7570)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7569)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7568)))))
                     g7567)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7571
                       (letrec*
                        ((x7572
                          (letrec*
                           ((x7573
                             (letrec*
                              ((x7574
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7574)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7573)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7572)))))
                     g7571)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7575
                       (letrec*
                        ((x7578
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7578))))
                      (g7576
                       (letrec*
                        ((x7579
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7579))))
                      (g7577
                       (letrec*
                        ((output-port
                          (begin
                            (write '(funapp 416 39))
                            (display "\n")
                            (open-output-file filename)))
                         (res
                          (begin
                            (write '(funapp 417 31))
                            (display "\n")
                            (proc output-port))))
                        (letrec*
                         ((g7580
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7581 res))
                         g7581))))
                     g7577)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7582
                       (letrec*
                        ((x7583
                          (letrec*
                           ((x7584
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7584)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7583)))))
                     g7582)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7585
                       (letrec*
                        ((x7586
                          (letrec*
                           ((x7587
                             (letrec*
                              ((x7588
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7588)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7587)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7586)))))
                     g7585)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7589
                       (letrec*
                        ((x7591
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7591))))
                      (g7590
                       (letrec*
                        ((x-cnd7592
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7592
                          #f
                          (letrec*
                           ((x-cnd7593
                             (letrec*
                              ((x7594
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7594 k)))))
                           (if x-cnd7593
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7595
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7595)))))))))
                     g7590)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7596
                       (letrec*
                        ((x7597
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7597)))))
                     g7596)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7598
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7600))))
                      (g7599
                       (letrec*
                        ((x-cnd7601
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7601
                          ""
                          (letrec*
                           ((x7604
                             (letrec*
                              ((x7605
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7605))))
                            (x7602
                             (letrec*
                              ((x7603
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7603)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7604 x7602)))))))
                     g7599)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7609
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7609))))
                      (g7607
                       (letrec*
                        ((x7610
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7610))))
                      (g7608
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7611
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7611))))
                     g7608)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7612
                       (letrec*
                        ((x7613
                          (letrec*
                           ((x7614
                             (letrec*
                              ((x7615
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7615)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7614)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7613)))))
                     g7612)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x7619
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7619))))
                      (g7617
                       (letrec*
                        ((x7620
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7620))))
                      (g7618
                       (letrec*
                        ((x-cnd7621
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7621
                          x
                          (letrec*
                           ((x7623
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7622
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7623 x7622)))))))
                     g7618)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7624
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7624)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7625
                       (letrec*
                        ((x-cnd7626
                          (letrec*
                           ((x7627 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7627)))))
                        (if x-cnd7626
                          (letrec*
                           ((x7628 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7628)))
                          #f))))
                     g7625)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7629
                       (letrec*
                        ((x7631
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7631))))
                      (g7630
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7632
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7633 (if val7243 val7243 #f)))
                               g7633)))))
                         g7632))))
                     g7630)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7634
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7635
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7635 9)))))
                        (letrec*
                         ((g7636
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7637
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7637 10)))))
                              (letrec*
                               ((g7638
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7639
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7639 32))))))
                               g7638)))))
                         g7636))))
                     g7634)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7640
                       (letrec*
                        ((x7641
                          (letrec*
                           ((x7642
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7642)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7641)))))
                     g7640)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7643
                       (letrec*
                        ((x7645
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7645))))
                      (g7644
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7644)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7646 #f)) g7646)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7647
                       (letrec*
                        ((x7648
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7648)))))
                     g7647)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7649
                       (letrec*
                        ((x7651
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7651))))
                      (g7650
                       (letrec*
                        ((x-cnd7652
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7652
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7650)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7653
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7654
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7656
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7655
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7656 x7655)))))
                              (letrec*
                               ((g7657
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7660
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7659
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7658
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7660 x7659 x7658)))))
                                    (letrec*
                                     ((g7661
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7669
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7668
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7665
                                               (letrec*
                                                ((x7667
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7666
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7667 x7666))))
                                              (x7662
                                               (letrec*
                                                ((x7664
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7663
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7664 x7663)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7669
                                                    x7668
                                                    x7665
                                                    x7662)))))
                                          (letrec*
                                           ((g7670
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7686
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7685
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7671
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7672
                                                      (letrec*
                                                       ((x7683
                                                         (letrec*
                                                          ((x7684
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 665
                                                                 61))
                                                              (display "\n")
                                                              (vector-length
                                                               b))))
                                                          (begin
                                                            (write
                                                             '(funapp 666 59))
                                                            (display "\n")
                                                            (= x7684 n))))
                                                        (x7673
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7674
                                                                 (letrec*
                                                                  ((x7681
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7675
                                                                    (letrec*
                                                                     ((x7678
                                                                       (letrec*
                                                                        ((x7680
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               681
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             a
                                                                             i)))
                                                                         (x7679
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               685
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             b
                                                                             i))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             688
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (equal?
                                                                           x7680
                                                                           x7679))))
                                                                      (x7676
                                                                       (letrec*
                                                                        ((x7677
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               694
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (+
                                                                             i
                                                                             1))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             697
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (loop
                                                                           x7677)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7678
                                                                            x7676)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7681
                                                                        x7675)))))
                                                               g7674))))
                                                          (letrec*
                                                           ((g7682
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7682))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7683 x7673)))))
                                                    g7672))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7686 x7685 x7671))))))
                                           g7670)))))
                                     g7661)))))
                               g7657)))))
                         g7654))))
                     g7653)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7687
                       (letrec*
                        ((x7688
                          (letrec*
                           ((x7689
                             (letrec*
                              ((x7690
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7690)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7689)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7688)))))
                     g7687)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7691
                       (letrec*
                        ((x7692
                          (letrec*
                           ((x7693
                             (letrec*
                              ((x7694
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7694)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7693)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7692)))))
                     g7691)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7695
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7695)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7696
                       (letrec*
                        ((x7698
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7698))))
                      (g7697
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7699
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7700 (if val7251 val7251 #f)))
                               g7700)))))
                         g7699))))
                     g7697)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7701
                       (letrec*
                        ((x7704
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7704))))
                      (g7702
                       (letrec*
                        ((x7705
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7705))))
                      (g7703
                       (letrec*
                        ((input-port
                          (begin
                            (write '(funapp 765 38))
                            (display "\n")
                            (open-input-file filename)))
                         (res
                          (begin
                            (write '(funapp 766 31))
                            (display "\n")
                            (proc input-port))))
                        (letrec*
                         ((g7706
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7707 res))
                         g7707))))
                     g7703)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7708
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7708)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7709
                       (letrec*
                        ((x7712
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7712))))
                      (g7710
                       (letrec*
                        ((x7713
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7713))))
                      (g7711
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7714
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7714))))
                     g7711)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7715
                       (letrec*
                        ((x7716
                          (letrec*
                           ((x7717
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7717)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7716)))))
                     g7715)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7719
                          (letrec*
                           ((x7720
                             (letrec*
                              ((x7721
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7721)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7720)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7719)))))
                     g7718)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((x7723
                          (letrec*
                           ((x7724
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7724)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7723)))))
                     g7722)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((x7726
                          (letrec*
                           ((x7727
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7727)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7726)))))
                     g7725)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((x7731
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7731))))
                      (g7729
                       (letrec*
                        ((x7732
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7732))))
                      (g7730
                       (letrec*
                        ((x7733
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7733)))))
                     g7730)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7734
                       (letrec*
                        ((x7735
                          (letrec*
                           ((x7736
                             (letrec*
                              ((x7737
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7737)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7736)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7735)))))
                     g7734)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7738
                       (letrec*
                        ((x7740
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7740))))
                      (g7739
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7739)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7741
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7741)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x7743
                          (letrec*
                           ((x7744
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7744)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7743)))))
                     g7742)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7745
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7745)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7746
                       (letrec*
                        ((x7748
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7748))))
                      (g7747
                       (letrec*
                        ((x-cnd7749
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7749
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7752
                             (letrec*
                              ((x7753
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7753))))
                            (x7750
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7751)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7752 x7750)))))))
                     g7747)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7754
                       (letrec*
                        ((x7755
                          (letrec*
                           ((x7756
                             (letrec*
                              ((x7757
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7757)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7756)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7755)))))
                     g7754)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7758
                       (letrec*
                        ((x7759
                          (letrec*
                           ((x7760
                             (letrec*
                              ((x7761
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7761)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7760)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7759)))))
                     g7758)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7762
                       (letrec*
                        ((x7764
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7764))))
                      (g7763
                       (letrec*
                        ((x7765
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7765)))))
                     g7763)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7766
                       (letrec*
                        ((x7767
                          (letrec*
                           ((x7768
                             (letrec*
                              ((x7769
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7769)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7768)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7767)))))
                     g7766)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7770
                       (letrec*
                        ((x7773
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7773))))
                      (g7771
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7774))))
                      (g7772
                       (if cnd
                         (letrec*
                          ((g7775
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7775)
                         (if cnd
                           (letrec*
                            ((g7776
                              (letrec*
                               ((x7777
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7777)))))
                            g7776)
                           (if cnd
                             (letrec*
                              ((g7778
                                (letrec*
                                 ((x7780
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7779
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7780 x7779)))))
                              g7778)
                             (if cnd
                               (letrec*
                                ((g7781
                                  (letrec*
                                   ((x7784
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7783
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7782
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7784 x7783 x7782)))))
                                g7781)
                               (if cnd
                                 (letrec*
                                  ((g7785
                                    (letrec*
                                     ((x7789
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7788
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7787
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7786
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7789 x7788 x7787 x7786)))))
                                  g7785)
                                 (if cnd
                                   (letrec*
                                    ((g7790
                                      (letrec*
                                       ((x7796
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7795
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7794
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7793
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7791
                                         (letrec*
                                          ((x7792
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7792)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7796
                                          x7795
                                          x7794
                                          x7793
                                          x7791)))))
                                    g7790)
                                   (if cnd
                                     (letrec*
                                      ((g7797
                                        (letrec*
                                         ((x7805
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7804
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7803
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7802
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7800
                                           (letrec*
                                            ((x7801
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7801))))
                                          (x7798
                                           (letrec*
                                            ((x7799
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7799)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7805
                                            x7804
                                            x7803
                                            x7802
                                            x7800
                                            x7798)))))
                                      g7797)
                                     (if cnd
                                       (letrec*
                                        ((g7806
                                          (letrec*
                                           ((x7816
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7815
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7814
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7813
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7811
                                             (letrec*
                                              ((x7812
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7812))))
                                            (x7809
                                             (letrec*
                                              ((x7810
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7810))))
                                            (x7807
                                             (letrec*
                                              ((x7808
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7808)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7816
                                              x7815
                                              x7814
                                              x7813
                                              x7811
                                              x7809
                                              x7807)))))
                                        g7806)
                                       (letrec*
                                        ((g7817
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7817)))))))))))
                     g7772)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7818
                       (letrec*
                        ((x7820
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7820))))
                      (g7819
                       (letrec*
                        ((x-cnd7821
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7821
                          #f
                          (letrec*
                           ((x-cnd7822
                             (letrec*
                              ((x7823
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7823 e)))))
                           (if x-cnd7822
                             l
                             (letrec*
                              ((x7824
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7824)))))))))
                     g7819)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7825
                       (letrec*
                        ((x7826
                          (letrec*
                           ((x7827
                             (letrec*
                              ((x7828
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7828)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7827)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7826)))))
                     g7825)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7829
                       (letrec*
                        ((x7830
                          (letrec*
                           ((x7831
                             (letrec*
                              ((x7832
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7832)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7831)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7830)))))
                     g7829)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7833
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7833)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7834
                       (letrec*
                        ((x7836
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7836))))
                      (g7835
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7835)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7837
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7838
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7838))))
                     g7837)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7839
                       (letrec*
                        ((x7840
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7840)))))
                     g7839)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7841
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7844
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7842
                             (letrec*
                              ((x7843
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7843)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7844 x7842)))))
                        (letrec*
                         ((g7845
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7845))))
                     g7841)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7846
                       (letrec*
                        ((x7847
                          (letrec*
                           ((x7848
                             (letrec*
                              ((x7849
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7849)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7848)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7847)))))
                     g7846)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((x-cnd7851
                          (letrec*
                           ((x7852 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7852 c)))))
                        (if x-cnd7851
                          (letrec*
                           ((x7853 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7853)))
                          #f))))
                     g7850)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7854
                       (letrec*
                        ((x7856
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7856))))
                      (g7855
                       (letrec*
                        ((x-cnd7857
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7857
                          #f
                          (letrec*
                           ((x-cnd7858
                             (letrec*
                              ((x7859
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7859 k)))))
                           (if x-cnd7858
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7860
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7860)))))))))
                     g7855)))
                 (not (lambda (x) (letrec* ((g7861 (if x #f #t))) g7861)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7862
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7862)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7863
                       (letrec*
                        ((x7865
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7865))))
                      (g7864
                       (letrec*
                        ((x-cnd7866
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7866
                          #f
                          (letrec*
                           ((x-cnd7867
                             (letrec*
                              ((x7868
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7868 e)))))
                           (if x-cnd7867
                             l
                             (letrec*
                              ((x7869
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7869)))))))))
                     g7864)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7870
                       (letrec*
                        ((x7871
                          (letrec*
                           ((x7872
                             (letrec*
                              ((x7873
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7873)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7872)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7871)))))
                     g7870)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7874
                       (letrec*
                        ((x7876
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7876))))
                      (g7875
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7877
                               (letrec*
                                ((x-cnd7878
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7878
                                  0
                                  (letrec*
                                   ((x7879
                                     (letrec*
                                      ((x7880
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7880)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7879)))))))
                             g7877))))
                        (letrec*
                         ((g7881
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7881))))
                     g7875)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7882
                       (letrec*
                        ((x7885
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7885))))
                      (g7883
                       (letrec*
                        ((x7886
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7886))))
                      (g7884
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7887
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7887))))
                     g7884)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7888
                       (letrec*
                        ((x7889
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7889)))))
                     g7888)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7890
                       (letrec*
                        ((x7891
                          (letrec*
                           ((x7892
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7892)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7891)))))
                     g7890)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7893
                       (letrec*
                        ((x7895
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7895))))
                      (g7894
                       (letrec*
                        ((x-cnd7896
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7896
                          #f
                          (letrec*
                           ((x-cnd7897
                             (letrec*
                              ((x7898
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7898 k)))))
                           (if x-cnd7897
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7899
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7899)))))))))
                     g7894)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7900
                       (letrec*
                        ((x7901
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7901)))))
                     g7900)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7902
                       (letrec*
                        ((x7905
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7905))))
                      (g7903
                       (letrec*
                        ((x7906
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7906))))
                      (g7904
                       (letrec*
                        ((x7907
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7907)))))
                     g7904)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7908
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7909
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7909))))
                     g7908)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7910
                       (letrec*
                        ((x7913
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7913))))
                      (g7911
                       (letrec*
                        ((x7914
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7914))))
                      (g7912
                       (letrec*
                        ((x-cnd7915
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7915
                          #t
                          (letrec*
                           ((x-cnd7916
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7916
                             (letrec*
                              ((g7917
                                (letrec*
                                 ((x7919
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7919))))
                               (g7918
                                (letrec*
                                 ((x7920
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7920)))))
                              g7918)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7912)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7921
                       (letrec*
                        ((x7923
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7923))))
                      (g7922
                       (letrec*
                        ((x-cnd7924
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7924
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7922)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7925
                       (letrec*
                        ((x7928
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7928))))
                      (g7926
                       (letrec*
                        ((x7929
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7929))))
                      (g7927
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7930
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7930))))
                     g7927)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7931
                       (letrec*
                        ((x7932
                          (letrec*
                           ((x7933
                             (letrec*
                              ((x7934
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7934)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7933)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7932)))))
                     g7931)))
                 (newline (lambda () (letrec* ((g7935 #f)) g7935)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7936
                       (letrec*
                        ((x7938
                          (letrec*
                           ((x7939
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7939))))
                         (x7937
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7938 x7937)))))
                     g7936)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7940
                       (letrec*
                        ((x7942
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7942))))
                      (g7941
                       (letrec*
                        ((x7943
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7943)))))
                     g7941)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7944
                       (letrec*
                        ((x7948
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7948))))
                      (g7945
                       (letrec*
                        ((x7949
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7949))))
                      (g7946
                       (letrec*
                        ((x7950
                          (letrec*
                           ((x7951
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7951)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7950))))
                      (g7947
                       (letrec*
                        ((x-cnd7952
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7952
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7954
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7953
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7954 x7953)))))))
                     g7947)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7955
                       (letrec*
                        ((x-cnd7956
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7956
                          a
                          (letrec*
                           ((x7957
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7957)))))))
                     g7955)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g7958
                       (begin
                         (write '(funapp 1350 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 1350 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 1350 59))
                            (display "\n")
                            '())))))
                     g7958)))
                 (image?
                  (lambda (image7433)
                    (letrec*
                     ((g7959
                       (letrec*
                        ((x7960
                          (begin
                            (write '(funapp 1355 41))
                            (display "\n")
                            (car image7433))))
                        (begin
                          (write '(funapp 1355 59))
                          (display "\n")
                          (eq?
                           x7960
                           (begin
                             (write '(funapp 1355 69))
                             (display "\n")
                             'image))))))
                     g7959)))
                 (image/c
                  (lambda (j7332 k7333 v7331)
                    (letrec*
                     ((g7961
                       (begin
                         (write '(funapp 1359 38))
                         (display "\n")
                         (cons
                          image
                          (begin
                            (write '(funapp 1359 49))
                            (display "\n")
                            '())))))
                     g7961)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g7962
                       (begin
                         (write '(funapp 1360 59))
                         (display "\n")
                         (image))))
                     g7962)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g7963
                       (begin
                         (write '(funapp 1361 62))
                         (display "\n")
                         (image))))
                     g7963)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g7964
                       (begin
                         (write '(funapp 1363 56))
                         (display "\n")
                         (image))))
                     g7964)))
                 (posn
                  (lambda (x7435 y7436)
                    (letrec*
                     ((g7965
                       (letrec*
                        ((x7966
                          (letrec*
                           ((x7967
                             (begin
                               (write '(funapp 1371 36))
                               (display "\n")
                               (cons
                                y7436
                                (begin
                                  (write '(funapp 1371 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1372 28))
                             (display "\n")
                             (cons x7435 x7967)))))
                        (begin
                          (write '(funapp 1373 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1373 30))
                             (display "\n")
                             'posn)
                           x7966)))))
                     g7965)))
                 (posn?
                  (lambda (posn7434)
                    (letrec*
                     ((g7968
                       (letrec*
                        ((x7969
                          (begin
                            (write '(funapp 1379 41))
                            (display "\n")
                            (car posn7434))))
                        (begin
                          (write '(funapp 1379 58))
                          (display "\n")
                          (eq?
                           x7969
                           (begin
                             (write '(funapp 1379 68))
                             (display "\n")
                             'posn))))))
                     g7968)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g7970
                       (letrec*
                        ((x7971
                          (begin
                            (write '(funapp 1384 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1384 60))
                          (display "\n")
                          (car x7971)))))
                     g7970)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g7972
                       (letrec*
                        ((x7973
                          (letrec*
                           ((x7974
                             (begin
                               (write '(funapp 1391 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1391 63))
                             (display "\n")
                             (cdr x7974)))))
                        (begin
                          (write '(funapp 1392 25))
                          (display "\n")
                          (car x7973)))))
                     g7972)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g7975
                       (letrec*
                        ((x-cnd7976
                          (letrec*
                           ((x7978
                             (begin
                               (write '(funapp 1401 36))
                               (display "\n")
                               (posn-x p1)))
                            (x7977
                             (begin
                               (write '(funapp 1401 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1402 28))
                             (display "\n")
                             (= x7978 x7977)))))
                        (if x-cnd7976
                          (letrec*
                           ((x7980
                             (begin
                               (write '(funapp 1405 36))
                               (display "\n")
                               (posn-y p1)))
                            (x7979
                             (begin
                               (write '(funapp 1405 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1406 28))
                             (display "\n")
                             (= x7980 x7979)))
                          #f))))
                     g7975)))
                 (snake
                  (lambda (dir7440 segs7441)
                    (letrec*
                     ((g7981
                       (letrec*
                        ((x7982
                          (letrec*
                           ((x7983
                             (begin
                               (write '(funapp 1416 36))
                               (display "\n")
                               (cons
                                segs7441
                                (begin
                                  (write '(funapp 1416 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1417 28))
                             (display "\n")
                             (cons dir7440 x7983)))))
                        (begin
                          (write '(funapp 1418 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1418 30))
                             (display "\n")
                             'snake)
                           x7982)))))
                     g7981)))
                 (snake?
                  (lambda (snake7439)
                    (letrec*
                     ((g7984
                       (letrec*
                        ((x7985
                          (begin
                            (write '(funapp 1424 41))
                            (display "\n")
                            (car snake7439))))
                        (begin
                          (write '(funapp 1424 59))
                          (display "\n")
                          (eq?
                           x7985
                           (begin
                             (write '(funapp 1424 69))
                             (display "\n")
                             'snake))))))
                     g7984)))
                 (snake-dir
                  (lambda (snake)
                    (letrec*
                     ((g7986
                       (letrec*
                        ((x7987
                          (begin
                            (write '(funapp 1429 47))
                            (display "\n")
                            (cdr snake))))
                        (begin
                          (write '(funapp 1429 61))
                          (display "\n")
                          (car x7987)))))
                     g7986)))
                 (snake-segs
                  (lambda (snake)
                    (letrec*
                     ((g7988
                       (letrec*
                        ((x7989
                          (letrec*
                           ((x7990
                             (begin
                               (write '(funapp 1436 50))
                               (display "\n")
                               (cdr snake))))
                           (begin
                             (write '(funapp 1436 64))
                             (display "\n")
                             (cdr x7990)))))
                        (begin
                          (write '(funapp 1437 25))
                          (display "\n")
                          (car x7989)))))
                     g7988)))
                 (world
                  (lambda (snake7445 food7446)
                    (letrec*
                     ((g7991
                       (letrec*
                        ((x7992
                          (letrec*
                           ((x7993
                             (begin
                               (write '(funapp 1446 36))
                               (display "\n")
                               (cons
                                food7446
                                (begin
                                  (write '(funapp 1446 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1447 28))
                             (display "\n")
                             (cons snake7445 x7993)))))
                        (begin
                          (write '(funapp 1448 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1448 30))
                             (display "\n")
                             'world)
                           x7992)))))
                     g7991)))
                 (world?
                  (lambda (world7444)
                    (letrec*
                     ((g7994
                       (letrec*
                        ((x7995
                          (begin
                            (write '(funapp 1454 41))
                            (display "\n")
                            (car world7444))))
                        (begin
                          (write '(funapp 1454 59))
                          (display "\n")
                          (eq?
                           x7995
                           (begin
                             (write '(funapp 1454 69))
                             (display "\n")
                             'world))))))
                     g7994)))
                 (world-snake
                  (lambda (world)
                    (letrec*
                     ((g7996
                       (letrec*
                        ((x7997
                          (begin
                            (write '(funapp 1459 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1459 61))
                          (display "\n")
                          (car x7997)))))
                     g7996)))
                 (world-food
                  (lambda (world)
                    (letrec*
                     ((g7998
                       (letrec*
                        ((x7999
                          (letrec*
                           ((x8000
                             (begin
                               (write '(funapp 1466 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1466 64))
                             (display "\n")
                             (cdr x8000)))))
                        (begin
                          (write '(funapp 1467 25))
                          (display "\n")
                          (car x7999)))))
                     g7998)))
                 (DIR/C
                  (lambda (g7338 g7339 g7340)
                    (letrec*
                     ((g8001
                       (letrec*
                        ((x-cnd8002
                          (begin
                            (write '(funapp 1475 27))
                            (display "\n")
                            ((lambda (v7337)
                               (letrec*
                                ((g8003
                                  (letrec*
                                   ((x-cnd8004
                                     (begin
                                       (write '(funapp 1479 46))
                                       (display "\n")
                                       (eq?
                                        (begin
                                          (write '(funapp 1479 50))
                                          (display "\n")
                                          'up)
                                        v7337))))
                                   (if x-cnd8004
                                     #t
                                     (letrec*
                                      ((x-cnd8005
                                        (begin
                                          (write '(funapp 1483 49))
                                          (display "\n")
                                          (eq?
                                           (begin
                                             (write '(funapp 1483 53))
                                             (display "\n")
                                             'down)
                                           v7337))))
                                      (if x-cnd8005
                                        #t
                                        (letrec*
                                         ((x-cnd8006
                                           (begin
                                             (write '(funapp 1487 52))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1487 56))
                                                (display "\n")
                                                'left)
                                              v7337))))
                                         (if x-cnd8006
                                           #t
                                           (begin
                                             (write '(funapp 1490 42))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1490 46))
                                                (display "\n")
                                                'right)
                                              v7337))))))))))
                                g8003))
                             g7340))))
                        (if x-cnd8002
                          g7340
                          (begin
                            (write '(blame g7338 1495 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7338)))))))
                     g8001)))
                 (POSN/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8007
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8008
                             (begin
                               (write '(funapp 1513 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1514 28))
                             (display "\n")
                             (real?/c j7342 k7343 x8008)))))
                        (letrec*
                         ((g8009
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8010
                                 (letrec*
                                  ((x8011
                                    (begin
                                      (write '(funapp 1521 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1521 65))
                                    (display "\n")
                                    (car x8011)))))
                               (begin
                                 (write '(funapp 1522 32))
                                 (display "\n")
                                 (real?/c j7342 k7343 x8010)))))
                            (letrec*
                             ((g8012
                               (letrec*
                                ((x8013
                                  (letrec*
                                   ((x8014
                                     (begin
                                       (write '(funapp 1528 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1528 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1529 36))
                                     (display "\n")
                                     (cons checked7344 x8014)))))
                                (begin
                                  (write '(funapp 1530 33))
                                  (display "\n")
                                  (cons posn x8013)))))
                             g8012))))
                         g8009))))
                     g8007)))
                 (SNAKE/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8015
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8016
                             (begin
                               (write '(funapp 1541 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1542 28))
                             (display "\n")
                             (DIR/C j7348 k7349 x8016)))))
                        (letrec*
                         ((g8017
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8020
                                 (letrec*
                                  ((x8021
                                    (begin
                                      (write '(funapp 1550 43))
                                      (display "\n")
                                      (listof POSN/C))))
                                  (begin
                                    (write '(funapp 1551 35))
                                    (display "\n")
                                    (and/c cons?/c x8021))))
                                (x8018
                                 (letrec*
                                  ((x8019
                                    (begin
                                      (write '(funapp 1553 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1553 65))
                                    (display "\n")
                                    (car x8019)))))
                               (begin
                                 (write '(funapp 1554 32))
                                 (display "\n")
                                 (x8020 j7348 k7349 x8018)))))
                            (letrec*
                             ((g8022
                               (letrec*
                                ((x8023
                                  (letrec*
                                   ((x8024
                                     (begin
                                       (write '(funapp 1560 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1560 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1561 36))
                                     (display "\n")
                                     (cons checked7350 x8024)))))
                                (begin
                                  (write '(funapp 1562 33))
                                  (display "\n")
                                  (cons snake x8023)))))
                             g8022))))
                         g8017))))
                     g8015)))
                 (WORLD/C
                  (lambda (j7354 k7355 v7353)
                    (letrec*
                     ((g8025
                       (letrec*
                        ((checked7356
                          (letrec*
                           ((x8026
                             (begin
                               (write '(funapp 1573 36))
                               (display "\n")
                               (car v7353))))
                           (begin
                             (write '(funapp 1574 28))
                             (display "\n")
                             (SNAKE/C j7354 k7355 x8026)))))
                        (letrec*
                         ((g8027
                           (letrec*
                            ((checked7357
                              (letrec*
                               ((x8028
                                 (letrec*
                                  ((x8029
                                    (begin
                                      (write '(funapp 1581 51))
                                      (display "\n")
                                      (cdr v7353))))
                                  (begin
                                    (write '(funapp 1581 65))
                                    (display "\n")
                                    (car x8029)))))
                               (begin
                                 (write '(funapp 1582 32))
                                 (display "\n")
                                 (POSN/C j7354 k7355 x8028)))))
                            (letrec*
                             ((g8030
                               (letrec*
                                ((x8031
                                  (letrec*
                                   ((x8032
                                     (begin
                                       (write '(funapp 1588 44))
                                       (display "\n")
                                       (cons
                                        checked7357
                                        (begin
                                          (write '(funapp 1588 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1589 36))
                                     (display "\n")
                                     (cons checked7356 x8032)))))
                                (begin
                                  (write '(funapp 1590 33))
                                  (display "\n")
                                  (cons world x8031)))))
                             g8030))))
                         g8027))))
                     g8025)))
                 (GRID-SIZE 30)
                 (BOARD-HEIGHT 20)
                 (BOARD-WIDTH 30)
                 (BOARD-HEIGHT-PIXELS
                  (begin
                    (write '(funapp 1597 39))
                    (display "\n")
                    (* GRID-SIZE BOARD-HEIGHT)))
                 (BOARD-WIDTH-PIXELS
                  (begin
                    (write '(funapp 1598 38))
                    (display "\n")
                    (* GRID-SIZE BOARD-WIDTH)))
                 (BACKGROUND
                  (begin
                    (write '(funapp 1600 19))
                    (display "\n")
                    (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
                 (SEGMENT-RADIUS
                  (begin
                    (write '(funapp 1601 34))
                    (display "\n")
                    (/ GRID-SIZE 2)))
                 (SEGMENT-IMAGE
                  (begin
                    (write '(funapp 1602 33))
                    (display "\n")
                    (circle SEGMENT-RADIUS "solid" "red")))
                 (FOOD-RADIUS SEGMENT-RADIUS)
                 (FOOD-IMAGE
                  (begin
                    (write '(funapp 1604 30))
                    (display "\n")
                    (circle FOOD-RADIUS "solid" "green")))
                 (WORLD
                  (letrec*
                   ((x8034
                     (letrec*
                      ((x8035
                        (letrec*
                         ((x8036
                           (begin
                             (write '(funapp 1610 42))
                             (display "\n")
                             (posn 5 3))))
                         (begin
                           (write '(funapp 1610 55))
                           (display "\n")
                           (cons x8036 empty)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (snake
                         (begin
                           (write '(funapp 1611 29))
                           (display "\n")
                           'right)
                         x8035))))
                    (x8033
                     (begin
                       (write '(funapp 1612 28))
                       (display "\n")
                       (posn 8 12))))
                   (begin
                     (write '(funapp 1613 20))
                     (display "\n")
                     (world x8034 x8033))))
                 (snake-wall-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8037
                       (letrec*
                        ((x8038
                          (letrec*
                           ((x8039
                             (begin
                               (write '(funapp 1620 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1620 63))
                             (display "\n")
                             (car x8039)))))
                        (begin
                          (write '(funapp 1621 25))
                          (display "\n")
                          (head-collide? x8038)))))
                     g8037)))
                 (head-collide?
                  (lambda (p)
                    (letrec*
                     ((g8040
                       (letrec*
                        ((val7258
                          (letrec*
                           ((x8041
                             (begin
                               (write '(funapp 1628 52))
                               (display "\n")
                               (posn-x p))))
                           (begin
                             (write '(funapp 1628 65))
                             (display "\n")
                             (<= x8041 0)))))
                        (letrec*
                         ((g8042
                           (if val7258
                             val7258
                             (letrec*
                              ((val7259
                                (letrec*
                                 ((x8043
                                   (begin
                                     (write '(funapp 1636 42))
                                     (display "\n")
                                     (posn-x p))))
                                 (begin
                                   (write '(funapp 1637 34))
                                   (display "\n")
                                   (>= x8043 BOARD-WIDTH)))))
                              (letrec*
                               ((g8044
                                 (if val7259
                                   val7259
                                   (letrec*
                                    ((val7260
                                      (letrec*
                                       ((x8045
                                         (begin
                                           (write '(funapp 1645 48))
                                           (display "\n")
                                           (posn-y p))))
                                       (begin
                                         (write '(funapp 1646 40))
                                         (display "\n")
                                         (<= x8045 0)))))
                                    (letrec*
                                     ((g8046
                                       (if val7260
                                         val7260
                                         (letrec*
                                          ((x8047
                                            (begin
                                              (write '(funapp 1652 51))
                                              (display "\n")
                                              (posn-y p))))
                                          (begin
                                            (write '(funapp 1653 43))
                                            (display "\n")
                                            (>= x8047 BOARD-HEIGHT))))))
                                     g8046)))))
                               g8044)))))
                         g8042))))
                     g8040)))
                 (snake-self-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8048
                       (letrec*
                        ((x8051
                          (letrec*
                           ((x8052
                             (begin
                               (write '(funapp 1664 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1664 63))
                             (display "\n")
                             (car x8052))))
                         (x8049
                          (letrec*
                           ((x8050
                             (begin
                               (write '(funapp 1666 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1666 63))
                             (display "\n")
                             (cdr x8050)))))
                        (begin
                          (write '(funapp 1667 25))
                          (display "\n")
                          (segs-self-collide? x8051 x8049)))))
                     g8048)))
                 (segs-self-collide?
                  (lambda (h segs)
                    (letrec*
                     ((g8053
                       (if cnd
                         (letrec* ((g8054 #f)) g8054)
                         (letrec*
                          ((g8055
                            (letrec*
                             ((x8058
                               (letrec*
                                ((x8059
                                  (begin
                                    (write '(funapp 1679 49))
                                    (display "\n")
                                    (car segs))))
                                (begin
                                  (write '(funapp 1679 62))
                                  (display "\n")
                                  (posn=? x8059 h))))
                              (x8056
                               (letrec*
                                ((x8057
                                  (begin
                                    (write '(funapp 1682 41))
                                    (display "\n")
                                    (cdr segs))))
                                (begin
                                  (write '(funapp 1683 33))
                                  (display "\n")
                                  (segs-self-collide? h x8057)))))
                             (begin
                               (write '(funapp 1684 30))
                               (display "\n")
                               (or x8058 x8056)))))
                          g8055))))
                     g8053)))
                 (cut-tail
                  (lambda (segs)
                    (letrec*
                     ((g8060
                       (letrec*
                        ((r
                          (begin
                            (write '(funapp 1692 29))
                            (display "\n")
                            (cdr segs))))
                        (letrec*
                         ((g8061
                           (if cnd
                             (letrec* ((g8062 empty)) g8062)
                             (letrec*
                              ((g8063
                                (letrec*
                                 ((x8065
                                   (begin
                                     (write '(funapp 1700 42))
                                     (display "\n")
                                     (car segs)))
                                  (x8064
                                   (begin
                                     (write '(funapp 1700 61))
                                     (display "\n")
                                     (cut-tail r))))
                                 (begin
                                   (write '(funapp 1701 34))
                                   (display "\n")
                                   (cons x8065 x8064)))))
                              g8063))))
                         g8061))))
                     g8060)))
                 (next-head
                  (lambda (seg dir)
                    (letrec*
                     ((g8066
                       (if cnd
                         (letrec*
                          ((g8067
                            (letrec*
                             ((x8069
                               (letrec*
                                ((x8070
                                  (begin
                                    (write '(funapp 1714 49))
                                    (display "\n")
                                    (posn-x seg))))
                                (begin
                                  (write '(funapp 1714 64))
                                  (display "\n")
                                  (add1 x8070))))
                              (x8068
                               (begin
                                 (write '(funapp 1715 38))
                                 (display "\n")
                                 (posn-y seg))))
                             (begin
                               (write '(funapp 1716 30))
                               (display "\n")
                               (posn x8069 x8068)))))
                          g8067)
                         (if cnd
                           (letrec*
                            ((g8071
                              (letrec*
                               ((x8073
                                 (letrec*
                                  ((x8074
                                    (begin
                                      (write '(funapp 1723 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1723 66))
                                    (display "\n")
                                    (sub1 x8074))))
                                (x8072
                                 (begin
                                   (write '(funapp 1724 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1725 32))
                                 (display "\n")
                                 (posn x8073 x8072)))))
                            g8071)
                           (if cnd
                             (letrec*
                              ((g8075
                                (letrec*
                                 ((x8078
                                   (begin
                                     (write '(funapp 1731 42))
                                     (display "\n")
                                     (posn-x seg)))
                                  (x8076
                                   (letrec*
                                    ((x8077
                                      (begin
                                        (write '(funapp 1734 45))
                                        (display "\n")
                                        (posn-y seg))))
                                    (begin
                                      (write '(funapp 1735 37))
                                      (display "\n")
                                      (sub1 x8077)))))
                                 (begin
                                   (write '(funapp 1736 34))
                                   (display "\n")
                                   (posn x8078 x8076)))))
                              g8075)
                             (letrec*
                              ((g8079
                                (letrec*
                                 ((x8082
                                   (begin
                                     (write '(funapp 1741 42))
                                     (display "\n")
                                     (posn-x seg)))
                                  (x8080
                                   (letrec*
                                    ((x8081
                                      (begin
                                        (write '(funapp 1744 45))
                                        (display "\n")
                                        (posn-y seg))))
                                    (begin
                                      (write '(funapp 1745 37))
                                      (display "\n")
                                      (add1 x8081)))))
                                 (begin
                                   (write '(funapp 1746 34))
                                   (display "\n")
                                   (posn x8082 x8080)))))
                              g8079))))))
                     g8066)))
                 (snake-slither
                  (lambda (snk)
                    (letrec*
                     ((g8083
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1754 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8084
                           (letrec*
                            ((x8085
                              (letrec*
                               ((x8088
                                 (letrec*
                                  ((x8089
                                    (letrec*
                                     ((x8090
                                       (begin
                                         (write '(funapp 1764 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1765 38))
                                       (display "\n")
                                       (car x8090)))))
                                  (begin
                                    (write '(funapp 1766 35))
                                    (display "\n")
                                    (next-head x8089 d))))
                                (x8086
                                 (letrec*
                                  ((x8087
                                    (begin
                                      (write '(funapp 1769 43))
                                      (display "\n")
                                      (snake-segs snk))))
                                  (begin
                                    (write '(funapp 1770 35))
                                    (display "\n")
                                    (cut-tail x8087)))))
                               (begin
                                 (write '(funapp 1771 32))
                                 (display "\n")
                                 (cons x8088 x8086)))))
                            (begin
                              (write '(funapp 1772 29))
                              (display "\n")
                              (snake d x8085)))))
                         g8084))))
                     g8083)))
                 (snake-grow
                  (lambda (snk)
                    (letrec*
                     ((g8091
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1780 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8092
                           (letrec*
                            ((x8093
                              (letrec*
                               ((x8095
                                 (letrec*
                                  ((x8096
                                    (letrec*
                                     ((x8097
                                       (begin
                                         (write '(funapp 1790 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1791 38))
                                       (display "\n")
                                       (car x8097)))))
                                  (begin
                                    (write '(funapp 1792 35))
                                    (display "\n")
                                    (next-head x8096 d))))
                                (x8094
                                 (begin
                                   (write '(funapp 1793 40))
                                   (display "\n")
                                   (snake-segs snk))))
                               (begin
                                 (write '(funapp 1794 32))
                                 (display "\n")
                                 (cons x8095 x8094)))))
                            (begin
                              (write '(funapp 1795 29))
                              (display "\n")
                              (snake d x8093)))))
                         g8092))))
                     g8091)))
                 (world->world
                  (lambda (w)
                    (letrec*
                     ((g8098
                       (if cnd
                         (letrec*
                          ((g8099
                            (begin
                              (write '(funapp 1803 43))
                              (display "\n")
                              (snake-eat w))))
                          g8099)
                         (letrec*
                          ((g8100
                            (letrec*
                             ((x8102
                               (letrec*
                                ((x8103
                                  (begin
                                    (write '(funapp 1809 41))
                                    (display "\n")
                                    (world-snake w))))
                                (begin
                                  (write '(funapp 1810 33))
                                  (display "\n")
                                  (snake-slither x8103))))
                              (x8101
                               (begin
                                 (write '(funapp 1811 38))
                                 (display "\n")
                                 (world-food w))))
                             (begin
                               (write '(funapp 1812 30))
                               (display "\n")
                               (world x8102 x8101)))))
                          g8100))))
                     g8098)))
                 (eating?
                  (lambda (w)
                    (letrec*
                     ((g8104
                       (letrec*
                        ((x8108
                          (begin
                            (write '(funapp 1820 33))
                            (display "\n")
                            (world-food w)))
                         (x8105
                          (letrec*
                           ((x8106
                             (letrec*
                              ((x8107
                                (begin
                                  (write '(funapp 1825 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1826 31))
                                (display "\n")
                                (snake-segs x8107)))))
                           (begin
                             (write '(funapp 1827 28))
                             (display "\n")
                             (car x8106)))))
                        (begin
                          (write '(funapp 1828 25))
                          (display "\n")
                          (posn=? x8108 x8105)))))
                     g8104)))
                 (snake-change-direction
                  (lambda (snk dir)
                    (letrec*
                     ((g8109
                       (letrec*
                        ((x8110
                          (begin
                            (write '(funapp 1834 41))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 1834 60))
                          (display "\n")
                          (snake dir x8110)))))
                     g8109)))
                 (world-change-dir
                  (lambda (w dir)
                    (letrec*
                     ((g8111
                       (letrec*
                        ((x8113
                          (letrec*
                           ((x8114
                             (begin
                               (write '(funapp 1843 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1844 28))
                             (display "\n")
                             (snake-change-direction x8114 dir))))
                         (x8112
                          (begin
                            (write '(funapp 1845 33))
                            (display "\n")
                            (world-food w))))
                        (begin
                          (write '(funapp 1846 25))
                          (display "\n")
                          (world x8113 x8112)))))
                     g8111)))
                 (snake-eat
                  (lambda (w)
                    (letrec*
                     ((g8115
                       (letrec*
                        ((x8119
                          (letrec*
                           ((x8120
                             (begin
                               (write '(funapp 1855 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1856 28))
                             (display "\n")
                             (snake-grow x8120))))
                         (x8116
                          (letrec*
                           ((x8118
                             (begin
                               (write '(funapp 1859 36))
                               (display "\n")
                               (- BOARD-WIDTH 1)))
                            (x8117
                             (begin
                               (write '(funapp 1860 36))
                               (display "\n")
                               (- BOARD-HEIGHT 1))))
                           (begin
                             (write '(funapp 1861 28))
                             (display "\n")
                             (posn x8118 x8117)))))
                        (begin
                          (write '(funapp 1862 25))
                          (display "\n")
                          (world x8119 x8116)))))
                     g8115)))
                 (handle-key
                  (lambda (w ke)
                    (letrec*
                     ((g8121
                       (if cnd
                         (letrec*
                          ((g8122
                            (begin
                              (write '(funapp 1869 43))
                              (display "\n")
                              (world-change-dir
                               w
                               (begin
                                 (write '(funapp 1869 62))
                                 (display "\n")
                                 'up)))))
                          g8122)
                         (if cnd
                           (letrec*
                            ((g8123
                              (begin
                                (write '(funapp 1871 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 1871 64))
                                   (display "\n")
                                   'down)))))
                            g8123)
                           (if cnd
                             (letrec*
                              ((g8124
                                (begin
                                  (write '(funapp 1874 39))
                                  (display "\n")
                                  (world-change-dir
                                   w
                                   (begin
                                     (write '(funapp 1874 58))
                                     (display "\n")
                                     'left)))))
                              g8124)
                             (if cnd
                               (letrec*
                                ((g8125
                                  (begin
                                    (write '(funapp 1878 41))
                                    (display "\n")
                                    (world-change-dir
                                     w
                                     (begin
                                       (write '(funapp 1878 60))
                                       (display "\n")
                                       'right)))))
                                g8125)
                               (letrec* ((g8126 w)) g8126)))))))
                     g8121)))
                 (game-over?
                  (lambda (w)
                    (letrec*
                     ((g8127
                       (letrec*
                        ((val7261
                          (letrec*
                           ((x8128
                             (begin
                               (write '(funapp 1889 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1890 28))
                             (display "\n")
                             (snake-wall-collide? x8128)))))
                        (letrec*
                         ((g8129
                           (if val7261
                             val7261
                             (letrec*
                              ((x8130
                                (begin
                                  (write '(funapp 1896 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1897 31))
                                (display "\n")
                                (snake-self-collide? x8130))))))
                         g8129))))
                     g8127)))
                 (world->scene
                  (lambda (w)
                    (letrec*
                     ((g8131
                       (letrec*
                        ((x8134
                          (begin
                            (write '(funapp 1905 33))
                            (display "\n")
                            (world-snake w)))
                         (x8132
                          (letrec*
                           ((x8133
                             (begin
                               (write '(funapp 1908 36))
                               (display "\n")
                               (world-food w))))
                           (begin
                             (write '(funapp 1909 28))
                             (display "\n")
                             (food+scene x8133 BACKGROUND)))))
                        (begin
                          (write '(funapp 1910 25))
                          (display "\n")
                          (snake+scene x8134 x8132)))))
                     g8131)))
                 (food+scene
                  (lambda (f scn)
                    (letrec*
                     ((g8135
                       (letrec*
                        ((x8137
                          (begin
                            (write '(funapp 1917 33))
                            (display "\n")
                            (posn-x f)))
                         (x8136
                          (begin
                            (write '(funapp 1917 52))
                            (display "\n")
                            (posn-y f))))
                        (begin
                          (write '(funapp 1918 25))
                          (display "\n")
                          (place-image-on-grid FOOD-IMAGE x8137 x8136 scn)))))
                     g8135)))
                 (place-image-on-grid
                  (lambda (img x y scn)
                    (letrec*
                     ((g8138
                       (letrec*
                        ((x8141
                          (begin
                            (write '(funapp 1925 33))
                            (display "\n")
                            (* GRID-SIZE x)))
                         (x8139
                          (letrec*
                           ((x8140
                             (begin
                               (write '(funapp 1928 36))
                               (display "\n")
                               (* GRID-SIZE y))))
                           (begin
                             (write '(funapp 1929 28))
                             (display "\n")
                             (- BOARD-HEIGHT-PIXELS x8140)))))
                        (begin
                          (write '(funapp 1930 25))
                          (display "\n")
                          (place-image img x8141 x8139 scn)))))
                     g8138)))
                 (snake+scene
                  (lambda (snk scn)
                    (letrec*
                     ((g8142
                       (letrec*
                        ((x8143
                          (begin
                            (write '(funapp 1937 33))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 1938 25))
                          (display "\n")
                          (segments+scene x8143 scn)))))
                     g8142)))
                 (segments+scene
                  (lambda (segs scn)
                    (letrec*
                     ((g8144
                       (if cnd
                         (letrec* ((g8145 scn)) g8145)
                         (letrec*
                          ((g8146
                            (letrec*
                             ((x8149
                               (begin
                                 (write '(funapp 1949 38))
                                 (display "\n")
                                 (cdr segs)))
                              (x8147
                               (letrec*
                                ((x8148
                                  (begin
                                    (write '(funapp 1952 41))
                                    (display "\n")
                                    (car segs))))
                                (begin
                                  (write '(funapp 1953 33))
                                  (display "\n")
                                  (segment+scene x8148 scn)))))
                             (begin
                               (write '(funapp 1954 30))
                               (display "\n")
                               (segments+scene x8149 x8147)))))
                          g8146))))
                     g8144)))
                 (segment+scene
                  (lambda (seg scn)
                    (letrec*
                     ((g8150
                       (letrec*
                        ((x8152
                          (begin
                            (write '(funapp 1962 33))
                            (display "\n")
                            (posn-x seg)))
                         (x8151
                          (begin
                            (write '(funapp 1962 54))
                            (display "\n")
                            (posn-y seg))))
                        (begin
                          (write '(funapp 1963 25))
                          (display "\n")
                          (place-image-on-grid
                           SEGMENT-IMAGE
                           x8152
                           x8151
                           scn)))))
                     g8150))))
                (letrec*
                 ((g8153
                   (letrec*
                    ((x8187
                      (begin
                        (write '(funapp 1969 23))
                        (display "\n")
                        ((lambda (j7361 k7362 f7363)
                           (letrec*
                            ((g8188
                              (lambda (g7359 g7360)
                                (letrec*
                                 ((g8189
                                   (letrec*
                                    ((x8190
                                      (letrec*
                                       ((x8192
                                         (begin
                                           (write '(funapp 1978 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7359)))
                                        (x8191
                                         (begin
                                           (write '(funapp 1979 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7360))))
                                       (begin
                                         (write '(funapp 1980 38))
                                         (display "\n")
                                         (f7363 x8192 x8191)))))
                                    (begin
                                      (write '(funapp 1981 35))
                                      (display "\n")
                                      (boolean?/c j7361 k7362 x8190)))))
                                 g8189))))
                            g8188))
                         (begin
                           (write '(funapp 1984 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1985 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8182
                      (letrec*
                       ((x8183
                         (letrec*
                          ((x8186 (input))
                           (x8184
                            (letrec*
                             ((x8185 (input)))
                             (begin
                               (write '(funapp 1993 56))
                               (display "\n")
                               (cons
                                x8185
                                (begin
                                  (write '(funapp 1993 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 1994 27))
                            (display "\n")
                            (cons x8186 x8184)))))
                       (begin
                         (write '(funapp 1995 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 1995 29))
                            (display "\n")
                            'posn)
                          x8183))))
                     (x8177
                      (letrec*
                       ((x8178
                         (letrec*
                          ((x8181 (input))
                           (x8179
                            (letrec*
                             ((x8180 (input)))
                             (begin
                               (write '(funapp 2002 56))
                               (display "\n")
                               (cons
                                x8180
                                (begin
                                  (write '(funapp 2002 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2003 27))
                            (display "\n")
                            (cons x8181 x8179)))))
                       (begin
                         (write '(funapp 2004 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2004 29))
                            (display "\n")
                            'posn)
                          x8178)))))
                    (begin
                      (write '(funapp 2005 21))
                      (display "\n")
                      (x8187 x8182 x8177))))
                  (g8154
                   (begin
                     (write '(funapp 2006 26))
                     (display "\n")
                     (WORLD/C
                      (begin (write '(funapp 2006 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2006 42))
                        (display "\n")
                        'importer)
                      WORLD)))
                  (g8155
                   (begin
                     (write '(funapp 2007 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2007 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2007 42))
                        (display "\n")
                        'importer)
                      BACKGROUND)))
                  (g8156
                   (begin
                     (write '(funapp 2008 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2008 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2008 42))
                        (display "\n")
                        'importer)
                      FOOD-IMAGE)))
                  (g8157
                   (begin
                     (write '(funapp 2009 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2009 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2009 42))
                        (display "\n")
                        'importer)
                      SEGMENT-IMAGE)))
                  (g8158
                   (begin
                     (write '(funapp 2010 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2010 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2010 40))
                        (display "\n")
                        'importer)
                      GRID-SIZE)))
                  (g8159
                   (begin
                     (write '(funapp 2011 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2011 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2011 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT-PIXELS)))
                  (g8160
                   (begin
                     (write '(funapp 2012 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2012 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2012 40))
                        (display "\n")
                        'importer)
                      BOARD-WIDTH)))
                  (g8161
                   (begin
                     (write '(funapp 2013 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2013 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2013 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT)))
                  (g8162
                   (letrec*
                    ((x8198
                      (begin
                        (write '(funapp 2017 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8199
                              (lambda (g7364)
                                (letrec*
                                 ((g8200
                                   (letrec*
                                    ((x8201
                                      (letrec*
                                       ((x8202
                                         (begin
                                           (write '(funapp 2026 46))
                                           (display "\n")
                                           (SNAKE/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2027 38))
                                         (display "\n")
                                         (f7367 x8202)))))
                                    (begin
                                      (write '(funapp 2028 35))
                                      (display "\n")
                                      (boolean?/c j7365 k7366 x8201)))))
                                 g8200))))
                            g8199))
                         (begin
                           (write '(funapp 2031 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2032 23))
                           (display "\n")
                           'importer)
                         snake-wall-collide?)))
                     (x8193
                      (letrec*
                       ((x8194
                         (letrec*
                          ((x8197 (input))
                           (x8195
                            (letrec*
                             ((x8196 (input)))
                             (begin
                               (write '(funapp 2040 56))
                               (display "\n")
                               (cons
                                x8196
                                (begin
                                  (write '(funapp 2040 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2041 27))
                            (display "\n")
                            (cons x8197 x8195)))))
                       (begin
                         (write '(funapp 2042 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2042 29))
                            (display "\n")
                            'snake)
                          x8194)))))
                    (begin
                      (write '(funapp 2043 21))
                      (display "\n")
                      (x8198 x8193))))
                  (g8163
                   (letrec*
                    ((x8208
                      (begin
                        (write '(funapp 2047 23))
                        (display "\n")
                        ((lambda (j7369 k7370 f7371)
                           (letrec*
                            ((g8209
                              (lambda (g7368)
                                (letrec*
                                 ((g8210
                                   (letrec*
                                    ((x8211
                                      (letrec*
                                       ((x8212
                                         (begin
                                           (write '(funapp 2056 46))
                                           (display "\n")
                                           (SNAKE/C j7369 k7370 g7368))))
                                       (begin
                                         (write '(funapp 2057 38))
                                         (display "\n")
                                         (f7371 x8212)))))
                                    (begin
                                      (write '(funapp 2058 35))
                                      (display "\n")
                                      (boolean?/c j7369 k7370 x8211)))))
                                 g8210))))
                            g8209))
                         (begin
                           (write '(funapp 2061 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2062 23))
                           (display "\n")
                           'importer)
                         snake-self-collide?)))
                     (x8203
                      (letrec*
                       ((x8204
                         (letrec*
                          ((x8207 (input))
                           (x8205
                            (letrec*
                             ((x8206 (input)))
                             (begin
                               (write '(funapp 2070 56))
                               (display "\n")
                               (cons
                                x8206
                                (begin
                                  (write '(funapp 2070 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2071 27))
                            (display "\n")
                            (cons x8207 x8205)))))
                       (begin
                         (write '(funapp 2072 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2072 29))
                            (display "\n")
                            'snake)
                          x8204)))))
                    (begin
                      (write '(funapp 2073 21))
                      (display "\n")
                      (x8208 x8203))))
                  (g8164
                   (letrec*
                    ((x8214
                      (begin
                        (write '(funapp 2077 23))
                        (display "\n")
                        ((lambda (j7373 k7374 f7375)
                           (letrec*
                            ((g8215
                              (lambda (g7372)
                                (letrec*
                                 ((g8216
                                   (letrec*
                                    ((x8221
                                      (begin
                                        (write '(funapp 2084 43))
                                        (display "\n")
                                        (listof POSN/C)))
                                     (x8217
                                      (letrec*
                                       ((x8218
                                         (letrec*
                                          ((x8219
                                            (letrec*
                                             ((x8220
                                               (begin
                                                 (write '(funapp 2091 52))
                                                 (display "\n")
                                                 (listof POSN/C))))
                                             (begin
                                               (write '(funapp 2092 44))
                                               (display "\n")
                                               (and/c cons?/c x8220)))))
                                          (begin
                                            (write '(funapp 2093 41))
                                            (display "\n")
                                            (x8219 j7373 k7374 g7372)))))
                                       (begin
                                         (write '(funapp 2094 38))
                                         (display "\n")
                                         (f7375 x8218)))))
                                    (begin
                                      (write '(funapp 2095 35))
                                      (display "\n")
                                      (x8221 j7373 k7374 x8217)))))
                                 g8216))))
                            g8215))
                         (begin
                           (write '(funapp 2098 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2099 23))
                           (display "\n")
                           'importer)
                         cut-tail)))
                     (x8213 (input)))
                    (begin
                      (write '(funapp 2102 21))
                      (display "\n")
                      (x8214 x8213))))
                  (g8165
                   (letrec*
                    ((x8227
                      (begin
                        (write '(funapp 2106 23))
                        (display "\n")
                        ((lambda (j7377 k7378 f7379)
                           (letrec*
                            ((g8228
                              (lambda (g7376)
                                (letrec*
                                 ((g8229
                                   (letrec*
                                    ((x8230
                                      (letrec*
                                       ((x8231
                                         (begin
                                           (write '(funapp 2115 46))
                                           (display "\n")
                                           (SNAKE/C j7377 k7378 g7376))))
                                       (begin
                                         (write '(funapp 2116 38))
                                         (display "\n")
                                         (f7379 x8231)))))
                                    (begin
                                      (write '(funapp 2117 35))
                                      (display "\n")
                                      (SNAKE/C j7377 k7378 x8230)))))
                                 g8229))))
                            g8228))
                         (begin
                           (write '(funapp 2120 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2121 23))
                           (display "\n")
                           'importer)
                         snake-slither)))
                     (x8222
                      (letrec*
                       ((x8223
                         (letrec*
                          ((x8226 (input))
                           (x8224
                            (letrec*
                             ((x8225 (input)))
                             (begin
                               (write '(funapp 2129 56))
                               (display "\n")
                               (cons
                                x8225
                                (begin
                                  (write '(funapp 2129 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2130 27))
                            (display "\n")
                            (cons x8226 x8224)))))
                       (begin
                         (write '(funapp 2131 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2131 29))
                            (display "\n")
                            'snake)
                          x8223)))))
                    (begin
                      (write '(funapp 2132 21))
                      (display "\n")
                      (x8227 x8222))))
                  (g8166
                   (letrec*
                    ((x8237
                      (begin
                        (write '(funapp 2136 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8238
                              (lambda (g7380)
                                (letrec*
                                 ((g8239
                                   (letrec*
                                    ((x8240
                                      (letrec*
                                       ((x8241
                                         (begin
                                           (write '(funapp 2145 46))
                                           (display "\n")
                                           (SNAKE/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2146 38))
                                         (display "\n")
                                         (f7383 x8241)))))
                                    (begin
                                      (write '(funapp 2147 35))
                                      (display "\n")
                                      (SNAKE/C j7381 k7382 x8240)))))
                                 g8239))))
                            g8238))
                         (begin
                           (write '(funapp 2150 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2151 23))
                           (display "\n")
                           'importer)
                         snake-grow)))
                     (x8232
                      (letrec*
                       ((x8233
                         (letrec*
                          ((x8236 (input))
                           (x8234
                            (letrec*
                             ((x8235 (input)))
                             (begin
                               (write '(funapp 2159 56))
                               (display "\n")
                               (cons
                                x8235
                                (begin
                                  (write '(funapp 2159 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2160 27))
                            (display "\n")
                            (cons x8236 x8234)))))
                       (begin
                         (write '(funapp 2161 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2161 29))
                            (display "\n")
                            'snake)
                          x8233)))))
                    (begin
                      (write '(funapp 2162 21))
                      (display "\n")
                      (x8237 x8232))))
                  (g8167
                   (letrec*
                    ((x8256
                      (begin
                        (write '(funapp 2166 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8257
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8258
                                   (letrec*
                                    ((x8259
                                      (letrec*
                                       ((x8261
                                         (begin
                                           (write '(funapp 2175 46))
                                           (display "\n")
                                           (WORLD/C j7386 k7387 g7384)))
                                        (x8260
                                         (begin
                                           (write '(funapp 2176 46))
                                           (display "\n")
                                           (DIR/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2177 38))
                                         (display "\n")
                                         (f7388 x8261 x8260)))))
                                    (begin
                                      (write '(funapp 2178 35))
                                      (display "\n")
                                      (WORLD/C j7386 k7387 x8259)))))
                                 g8258))))
                            g8257))
                         (begin
                           (write '(funapp 2181 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2182 23))
                           (display "\n")
                           'importer)
                         world-change-dir)))
                     (x8243
                      (letrec*
                       ((x8244
                         (letrec*
                          ((x8251
                            (letrec*
                             ((x8252
                               (letrec*
                                ((x8255 (input))
                                 (x8253
                                  (letrec*
                                   ((x8254 (input)))
                                   (begin
                                     (write '(funapp 2196 36))
                                     (display "\n")
                                     (cons
                                      x8254
                                      (begin
                                        (write '(funapp 2196 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2197 33))
                                  (display "\n")
                                  (cons x8255 x8253)))))
                             (begin
                               (write '(funapp 2198 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2198 35))
                                  (display "\n")
                                  'snake)
                                x8252))))
                           (x8245
                            (letrec*
                             ((x8246
                               (letrec*
                                ((x8247
                                  (letrec*
                                   ((x8250 (input))
                                    (x8248
                                     (letrec*
                                      ((x8249 (input)))
                                      (begin
                                        (write '(funapp 2209 39))
                                        (display "\n")
                                        (cons
                                         x8249
                                         (begin
                                           (write '(funapp 2209 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2210 36))
                                     (display "\n")
                                     (cons x8250 x8248)))))
                                (begin
                                  (write '(funapp 2211 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2211 38))
                                     (display "\n")
                                     'posn)
                                   x8247)))))
                             (begin
                               (write '(funapp 2212 30))
                               (display "\n")
                               (cons
                                x8246
                                (begin
                                  (write '(funapp 2212 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2213 27))
                            (display "\n")
                            (cons x8251 x8245)))))
                       (begin
                         (write '(funapp 2214 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2214 29))
                            (display "\n")
                            'world)
                          x8244))))
                     (x8242 (input)))
                    (begin
                      (write '(funapp 2216 21))
                      (display "\n")
                      (x8256 x8243 x8242))))
                  (g8168
                   (letrec*
                    ((x8275
                      (begin
                        (write '(funapp 2220 23))
                        (display "\n")
                        ((lambda (j7390 k7391 f7392)
                           (letrec*
                            ((g8276
                              (lambda (g7389)
                                (letrec*
                                 ((g8277
                                   (letrec*
                                    ((x8278
                                      (letrec*
                                       ((x8279
                                         (begin
                                           (write '(funapp 2229 46))
                                           (display "\n")
                                           (WORLD/C j7390 k7391 g7389))))
                                       (begin
                                         (write '(funapp 2230 38))
                                         (display "\n")
                                         (f7392 x8279)))))
                                    (begin
                                      (write '(funapp 2231 35))
                                      (display "\n")
                                      (WORLD/C j7390 k7391 x8278)))))
                                 g8277))))
                            g8276))
                         (begin
                           (write '(funapp 2234 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2235 23))
                           (display "\n")
                           'importer)
                         world->world)))
                     (x8262
                      (letrec*
                       ((x8263
                         (letrec*
                          ((x8270
                            (letrec*
                             ((x8271
                               (letrec*
                                ((x8274 (input))
                                 (x8272
                                  (letrec*
                                   ((x8273 (input)))
                                   (begin
                                     (write '(funapp 2249 36))
                                     (display "\n")
                                     (cons
                                      x8273
                                      (begin
                                        (write '(funapp 2249 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2250 33))
                                  (display "\n")
                                  (cons x8274 x8272)))))
                             (begin
                               (write '(funapp 2251 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2251 35))
                                  (display "\n")
                                  'snake)
                                x8271))))
                           (x8264
                            (letrec*
                             ((x8265
                               (letrec*
                                ((x8266
                                  (letrec*
                                   ((x8269 (input))
                                    (x8267
                                     (letrec*
                                      ((x8268 (input)))
                                      (begin
                                        (write '(funapp 2262 39))
                                        (display "\n")
                                        (cons
                                         x8268
                                         (begin
                                           (write '(funapp 2262 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2263 36))
                                     (display "\n")
                                     (cons x8269 x8267)))))
                                (begin
                                  (write '(funapp 2264 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2264 38))
                                     (display "\n")
                                     'posn)
                                   x8266)))))
                             (begin
                               (write '(funapp 2265 30))
                               (display "\n")
                               (cons
                                x8265
                                (begin
                                  (write '(funapp 2265 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2266 27))
                            (display "\n")
                            (cons x8270 x8264)))))
                       (begin
                         (write '(funapp 2267 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2267 29))
                            (display "\n")
                            'world)
                          x8263)))))
                    (begin
                      (write '(funapp 2268 21))
                      (display "\n")
                      (x8275 x8262))))
                  (g8169
                   (letrec*
                    ((x8294
                      (begin
                        (write '(funapp 2272 23))
                        (display "\n")
                        ((lambda (j7395 k7396 f7397)
                           (letrec*
                            ((g8295
                              (lambda (g7393 g7394)
                                (letrec*
                                 ((g8296
                                   (letrec*
                                    ((x8297
                                      (letrec*
                                       ((x8299
                                         (begin
                                           (write '(funapp 2281 46))
                                           (display "\n")
                                           (WORLD/C j7395 k7396 g7393)))
                                        (x8298
                                         (begin
                                           (write '(funapp 2282 46))
                                           (display "\n")
                                           (string?/c j7395 k7396 g7394))))
                                       (begin
                                         (write '(funapp 2283 38))
                                         (display "\n")
                                         (f7397 x8299 x8298)))))
                                    (begin
                                      (write '(funapp 2284 35))
                                      (display "\n")
                                      (WORLD/C j7395 k7396 x8297)))))
                                 g8296))))
                            g8295))
                         (begin
                           (write '(funapp 2287 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2288 23))
                           (display "\n")
                           'importer)
                         handle-key)))
                     (x8281
                      (letrec*
                       ((x8282
                         (letrec*
                          ((x8289
                            (letrec*
                             ((x8290
                               (letrec*
                                ((x8293 (input))
                                 (x8291
                                  (letrec*
                                   ((x8292 (input)))
                                   (begin
                                     (write '(funapp 2302 36))
                                     (display "\n")
                                     (cons
                                      x8292
                                      (begin
                                        (write '(funapp 2302 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2303 33))
                                  (display "\n")
                                  (cons x8293 x8291)))))
                             (begin
                               (write '(funapp 2304 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2304 35))
                                  (display "\n")
                                  'snake)
                                x8290))))
                           (x8283
                            (letrec*
                             ((x8284
                               (letrec*
                                ((x8285
                                  (letrec*
                                   ((x8288 (input))
                                    (x8286
                                     (letrec*
                                      ((x8287 (input)))
                                      (begin
                                        (write '(funapp 2315 39))
                                        (display "\n")
                                        (cons
                                         x8287
                                         (begin
                                           (write '(funapp 2315 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2316 36))
                                     (display "\n")
                                     (cons x8288 x8286)))))
                                (begin
                                  (write '(funapp 2317 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2317 38))
                                     (display "\n")
                                     'posn)
                                   x8285)))))
                             (begin
                               (write '(funapp 2318 30))
                               (display "\n")
                               (cons
                                x8284
                                (begin
                                  (write '(funapp 2318 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2319 27))
                            (display "\n")
                            (cons x8289 x8283)))))
                       (begin
                         (write '(funapp 2320 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2320 29))
                            (display "\n")
                            'world)
                          x8282))))
                     (x8280 (input)))
                    (begin
                      (write '(funapp 2322 21))
                      (display "\n")
                      (x8294 x8281 x8280))))
                  (g8170
                   (letrec*
                    ((x8313
                      (begin
                        (write '(funapp 2326 23))
                        (display "\n")
                        ((lambda (j7399 k7400 f7401)
                           (letrec*
                            ((g8314
                              (lambda (g7398)
                                (letrec*
                                 ((g8315
                                   (letrec*
                                    ((x8316
                                      (letrec*
                                       ((x8317
                                         (begin
                                           (write '(funapp 2335 46))
                                           (display "\n")
                                           (WORLD/C j7399 k7400 g7398))))
                                       (begin
                                         (write '(funapp 2336 38))
                                         (display "\n")
                                         (f7401 x8317)))))
                                    (begin
                                      (write '(funapp 2337 35))
                                      (display "\n")
                                      (boolean?/c j7399 k7400 x8316)))))
                                 g8315))))
                            g8314))
                         (begin
                           (write '(funapp 2340 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2341 23))
                           (display "\n")
                           'importer)
                         game-over?)))
                     (x8300
                      (letrec*
                       ((x8301
                         (letrec*
                          ((x8308
                            (letrec*
                             ((x8309
                               (letrec*
                                ((x8312 (input))
                                 (x8310
                                  (letrec*
                                   ((x8311 (input)))
                                   (begin
                                     (write '(funapp 2355 36))
                                     (display "\n")
                                     (cons
                                      x8311
                                      (begin
                                        (write '(funapp 2355 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2356 33))
                                  (display "\n")
                                  (cons x8312 x8310)))))
                             (begin
                               (write '(funapp 2357 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2357 35))
                                  (display "\n")
                                  'snake)
                                x8309))))
                           (x8302
                            (letrec*
                             ((x8303
                               (letrec*
                                ((x8304
                                  (letrec*
                                   ((x8307 (input))
                                    (x8305
                                     (letrec*
                                      ((x8306 (input)))
                                      (begin
                                        (write '(funapp 2368 39))
                                        (display "\n")
                                        (cons
                                         x8306
                                         (begin
                                           (write '(funapp 2368 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2369 36))
                                     (display "\n")
                                     (cons x8307 x8305)))))
                                (begin
                                  (write '(funapp 2370 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2370 38))
                                     (display "\n")
                                     'posn)
                                   x8304)))))
                             (begin
                               (write '(funapp 2371 30))
                               (display "\n")
                               (cons
                                x8303
                                (begin
                                  (write '(funapp 2371 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2372 27))
                            (display "\n")
                            (cons x8308 x8302)))))
                       (begin
                         (write '(funapp 2373 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2373 29))
                            (display "\n")
                            'world)
                          x8301)))))
                    (begin
                      (write '(funapp 2374 21))
                      (display "\n")
                      (x8313 x8300))))
                  (g8171
                   (letrec*
                    ((x8331
                      (begin
                        (write '(funapp 2378 23))
                        (display "\n")
                        ((lambda (j7403 k7404 f7405)
                           (letrec*
                            ((g8332
                              (lambda (g7402)
                                (letrec*
                                 ((g8333
                                   (letrec*
                                    ((x8334
                                      (letrec*
                                       ((x8335
                                         (begin
                                           (write '(funapp 2387 46))
                                           (display "\n")
                                           (WORLD/C j7403 k7404 g7402))))
                                       (begin
                                         (write '(funapp 2388 38))
                                         (display "\n")
                                         (f7405 x8335)))))
                                    (begin
                                      (write '(funapp 2389 35))
                                      (display "\n")
                                      (image/c j7403 k7404 x8334)))))
                                 g8333))))
                            g8332))
                         (begin
                           (write '(funapp 2392 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2393 23))
                           (display "\n")
                           'importer)
                         world->scene)))
                     (x8318
                      (letrec*
                       ((x8319
                         (letrec*
                          ((x8326
                            (letrec*
                             ((x8327
                               (letrec*
                                ((x8330 (input))
                                 (x8328
                                  (letrec*
                                   ((x8329 (input)))
                                   (begin
                                     (write '(funapp 2407 36))
                                     (display "\n")
                                     (cons
                                      x8329
                                      (begin
                                        (write '(funapp 2407 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2408 33))
                                  (display "\n")
                                  (cons x8330 x8328)))))
                             (begin
                               (write '(funapp 2409 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2409 35))
                                  (display "\n")
                                  'snake)
                                x8327))))
                           (x8320
                            (letrec*
                             ((x8321
                               (letrec*
                                ((x8322
                                  (letrec*
                                   ((x8325 (input))
                                    (x8323
                                     (letrec*
                                      ((x8324 (input)))
                                      (begin
                                        (write '(funapp 2420 39))
                                        (display "\n")
                                        (cons
                                         x8324
                                         (begin
                                           (write '(funapp 2420 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2421 36))
                                     (display "\n")
                                     (cons x8325 x8323)))))
                                (begin
                                  (write '(funapp 2422 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2422 38))
                                     (display "\n")
                                     'posn)
                                   x8322)))))
                             (begin
                               (write '(funapp 2423 30))
                               (display "\n")
                               (cons
                                x8321
                                (begin
                                  (write '(funapp 2423 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2424 27))
                            (display "\n")
                            (cons x8326 x8320)))))
                       (begin
                         (write '(funapp 2425 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2425 29))
                            (display "\n")
                            'world)
                          x8319)))))
                    (begin
                      (write '(funapp 2426 21))
                      (display "\n")
                      (x8331 x8318))))
                  (g8172
                   (letrec*
                    ((x8342
                      (begin
                        (write '(funapp 2430 23))
                        (display "\n")
                        ((lambda (j7408 k7409 f7410)
                           (letrec*
                            ((g8343
                              (lambda (g7406 g7407)
                                (letrec*
                                 ((g8344
                                   (letrec*
                                    ((x8345
                                      (letrec*
                                       ((x8347
                                         (begin
                                           (write '(funapp 2439 46))
                                           (display "\n")
                                           (POSN/C j7408 k7409 g7406)))
                                        (x8346
                                         (begin
                                           (write '(funapp 2440 46))
                                           (display "\n")
                                           (image/c j7408 k7409 g7407))))
                                       (begin
                                         (write '(funapp 2441 38))
                                         (display "\n")
                                         (f7410 x8347 x8346)))))
                                    (begin
                                      (write '(funapp 2442 35))
                                      (display "\n")
                                      (image/c j7408 k7409 x8345)))))
                                 g8344))))
                            g8343))
                         (begin
                           (write '(funapp 2445 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2446 23))
                           (display "\n")
                           'importer)
                         food+scene)))
                     (x8337
                      (letrec*
                       ((x8338
                         (letrec*
                          ((x8341 (input))
                           (x8339
                            (letrec*
                             ((x8340 (input)))
                             (begin
                               (write '(funapp 2454 56))
                               (display "\n")
                               (cons
                                x8340
                                (begin
                                  (write '(funapp 2454 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2455 27))
                            (display "\n")
                            (cons x8341 x8339)))))
                       (begin
                         (write '(funapp 2456 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2456 29))
                            (display "\n")
                            'posn)
                          x8338))))
                     (x8336
                      (begin
                        (write '(funapp 2457 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2457 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2457 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2458 21))
                      (display "\n")
                      (x8342 x8337 x8336))))
                  (g8173
                   (letrec*
                    ((x8352
                      (begin
                        (write '(funapp 2462 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8353
                              (lambda (g7411 g7412 g7413 g7414)
                                (letrec*
                                 ((g8354
                                   (letrec*
                                    ((x8355
                                      (letrec*
                                       ((x8359
                                         (begin
                                           (write '(funapp 2471 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7411)))
                                        (x8358
                                         (begin
                                           (write '(funapp 2472 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7412)))
                                        (x8357
                                         (begin
                                           (write '(funapp 2473 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7413)))
                                        (x8356
                                         (begin
                                           (write '(funapp 2474 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2475 38))
                                         (display "\n")
                                         (f7417 x8359 x8358 x8357 x8356)))))
                                    (begin
                                      (write '(funapp 2476 35))
                                      (display "\n")
                                      (image/c j7415 k7416 x8355)))))
                                 g8354))))
                            g8353))
                         (begin
                           (write '(funapp 2479 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2480 23))
                           (display "\n")
                           'importer)
                         place-image-on-grid)))
                     (x8351
                      (begin
                        (write '(funapp 2482 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2482 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2482 41))
                           (display "\n")
                           '()))))
                     (x8350 (input))
                     (x8349 (input))
                     (x8348
                      (begin
                        (write '(funapp 2485 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2485 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2485 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2486 21))
                      (display "\n")
                      (x8352 x8351 x8350 x8349 x8348))))
                  (g8174
                   (letrec*
                    ((x8366
                      (begin
                        (write '(funapp 2490 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8367
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8368
                                   (letrec*
                                    ((x8369
                                      (letrec*
                                       ((x8371
                                         (begin
                                           (write '(funapp 2499 46))
                                           (display "\n")
                                           (SNAKE/C j7420 k7421 g7418)))
                                        (x8370
                                         (begin
                                           (write '(funapp 2500 46))
                                           (display "\n")
                                           (image/c j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2501 38))
                                         (display "\n")
                                         (f7422 x8371 x8370)))))
                                    (begin
                                      (write '(funapp 2502 35))
                                      (display "\n")
                                      (image/c j7420 k7421 x8369)))))
                                 g8368))))
                            g8367))
                         (begin
                           (write '(funapp 2505 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2506 23))
                           (display "\n")
                           'importer)
                         snake+scene)))
                     (x8361
                      (letrec*
                       ((x8362
                         (letrec*
                          ((x8365 (input))
                           (x8363
                            (letrec*
                             ((x8364 (input)))
                             (begin
                               (write '(funapp 2514 56))
                               (display "\n")
                               (cons
                                x8364
                                (begin
                                  (write '(funapp 2514 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2515 27))
                            (display "\n")
                            (cons x8365 x8363)))))
                       (begin
                         (write '(funapp 2516 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2516 29))
                            (display "\n")
                            'snake)
                          x8362))))
                     (x8360
                      (begin
                        (write '(funapp 2517 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2517 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2517 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2518 21))
                      (display "\n")
                      (x8366 x8361 x8360))))
                  (g8175
                   (letrec*
                    ((x8374
                      (begin
                        (write '(funapp 2522 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8375
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8376
                                   (letrec*
                                    ((x8377
                                      (letrec*
                                       ((x8379
                                         (letrec*
                                          ((x8380
                                            (begin
                                              (write '(funapp 2533 49))
                                              (display "\n")
                                              (listof POSN/C))))
                                          (begin
                                            (write '(funapp 2534 41))
                                            (display "\n")
                                            (x8380 j7425 k7426 g7423))))
                                        (x8378
                                         (begin
                                           (write '(funapp 2535 46))
                                           (display "\n")
                                           (image/c j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2536 38))
                                         (display "\n")
                                         (f7427 x8379 x8378)))))
                                    (begin
                                      (write '(funapp 2537 35))
                                      (display "\n")
                                      (image/c j7425 k7426 x8377)))))
                                 g8376))))
                            g8375))
                         (begin
                           (write '(funapp 2540 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2541 23))
                           (display "\n")
                           'importer)
                         segments+scene)))
                     (x8373 (input))
                     (x8372
                      (begin
                        (write '(funapp 2544 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2544 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2544 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2545 21))
                      (display "\n")
                      (x8374 x8373 x8372))))
                  (g8176
                   (letrec*
                    ((x8387
                      (begin
                        (write '(funapp 2549 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8388
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8389
                                   (letrec*
                                    ((x8390
                                      (letrec*
                                       ((x8392
                                         (begin
                                           (write '(funapp 2558 46))
                                           (display "\n")
                                           (POSN/C j7430 k7431 g7428)))
                                        (x8391
                                         (begin
                                           (write '(funapp 2559 46))
                                           (display "\n")
                                           (image/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 2560 38))
                                         (display "\n")
                                         (f7432 x8392 x8391)))))
                                    (begin
                                      (write '(funapp 2561 35))
                                      (display "\n")
                                      (image/c j7430 k7431 x8390)))))
                                 g8389))))
                            g8388))
                         (begin
                           (write '(funapp 2564 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2565 23))
                           (display "\n")
                           'importer)
                         segment+scene)))
                     (x8382
                      (letrec*
                       ((x8383
                         (letrec*
                          ((x8386 (input))
                           (x8384
                            (letrec*
                             ((x8385 (input)))
                             (begin
                               (write '(funapp 2573 56))
                               (display "\n")
                               (cons
                                x8385
                                (begin
                                  (write '(funapp 2573 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2574 27))
                            (display "\n")
                            (cons x8386 x8384)))))
                       (begin
                         (write '(funapp 2575 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2575 29))
                            (display "\n")
                            'posn)
                          x8383))))
                     (x8381
                      (begin
                        (write '(funapp 2576 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2576 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2576 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2577 21))
                      (display "\n")
                      (x8387 x8382 x8381)))))
                 g8176))))
             g7462))))
         g7460)))
      g7459))))
