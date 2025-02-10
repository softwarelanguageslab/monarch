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
                 (listof
                  (lambda (contract)
                    (letrec*
                     ((g7463
                       (lambda (k j lst)
                         (letrec*
                          ((g7464
                            (begin
                              (write '(funapp 65 29))
                              (display "\n")
                              (map
                               (lambda (v)
                                 (letrec*
                                  ((g7465
                                    (begin
                                      (write '(funapp 67 49))
                                      (display "\n")
                                      (contract k j v))))
                                  g7465))
                               lst))))
                          g7464))))
                     g7463)))
                 (real?/c
                  (lambda (g7262 g7263 g7264)
                    (letrec*
                     ((g7466
                       (letrec*
                        ((x-cnd7467
                          (begin
                            (write '(funapp 76 37))
                            (display "\n")
                            (real? g7264))))
                        (if x-cnd7467
                          g7264
                          (begin
                            (write '(blame g7262 77 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7262)))))))
                     g7466)))
                 (boolean?/c
                  (lambda (g7265 g7266 g7267)
                    (letrec*
                     ((g7468
                       (letrec*
                        ((x-cnd7469
                          (begin
                            (write '(funapp 84 37))
                            (display "\n")
                            (boolean? g7267))))
                        (if x-cnd7469
                          g7267
                          (begin
                            (write '(blame g7265 85 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7265)))))))
                     g7468)))
                 (number?/c
                  (lambda (g7268 g7269 g7270)
                    (letrec*
                     ((g7470
                       (letrec*
                        ((x-cnd7471
                          (begin
                            (write '(funapp 92 37))
                            (display "\n")
                            (number? g7270))))
                        (if x-cnd7471
                          g7270
                          (begin
                            (write '(blame g7268 93 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7268)))))))
                     g7470)))
                 (any/c
                  (lambda (g7271 g7272 g7273)
                    (letrec*
                     ((g7472
                       (letrec*
                        ((x-cnd7473
                          (begin
                            (write '(funapp 101 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7474 #t)) g7474))
                             g7273))))
                        (if x-cnd7473
                          g7273
                          (begin
                            (write '(blame g7271 102 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7271)))))))
                     g7472)))
                 (any?/c
                  (lambda (g7274 g7275 g7276)
                    (letrec*
                     ((g7475
                       (letrec*
                        ((x-cnd7476
                          (begin
                            (write '(funapp 110 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7477 #t)) g7477))
                             g7276))))
                        (if x-cnd7476
                          g7276
                          (begin
                            (write '(blame g7274 111 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7274)))))))
                     g7475)))
                 (cons?/c
                  (lambda (g7277 g7278 g7279)
                    (letrec*
                     ((g7478
                       (letrec*
                        ((x-cnd7479
                          (begin
                            (write '(funapp 118 37))
                            (display "\n")
                            (pair? g7279))))
                        (if x-cnd7479
                          g7279
                          (begin
                            (write '(blame g7277 119 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7277)))))))
                     g7478)))
                 (pair?/c
                  (lambda (g7280 g7281 g7282)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x-cnd7481
                          (begin
                            (write '(funapp 126 37))
                            (display "\n")
                            (pair? g7282))))
                        (if x-cnd7481
                          g7282
                          (begin
                            (write '(blame g7280 127 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7280)))))))
                     g7480)))
                 (integer?/c
                  (lambda (g7283 g7284 g7285)
                    (letrec*
                     ((g7482
                       (letrec*
                        ((x-cnd7483
                          (begin
                            (write '(funapp 134 37))
                            (display "\n")
                            (integer? g7285))))
                        (if x-cnd7483
                          g7285
                          (begin
                            (write '(blame g7283 135 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7283)))))))
                     g7482)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7484
                       (lambda (k j v)
                         (letrec*
                          ((g7485
                            (letrec*
                             ((x-cnd7486
                               (begin
                                 (write '(funapp 145 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7486
                               (begin
                                 (write '(funapp 146 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7485))))
                     g7484)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7487
                       (lambda (k j v)
                         (letrec*
                          ((g7488
                            (letrec*
                             ((x-cnd7489
                               (begin
                                 (write '(funapp 157 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7489
                               (begin
                                 (write '(funapp 159 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7493
                                  (letrec*
                                   ((x7494
                                     (begin
                                       (write '(funapp 163 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 164 36))
                                     (display "\n")
                                     (contract k j x7494))))
                                 (x7490
                                  (letrec*
                                   ((x7492
                                     (begin
                                       (write '(funapp 167 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7491
                                     (begin
                                       (write '(funapp 167 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 168 36))
                                     (display "\n")
                                     (x7492 k j x7491)))))
                                (begin
                                  (write '(funapp 169 33))
                                  (display "\n")
                                  (orig-cons x7493 x7490)))))))
                          g7488))))
                     g7487)))
                 (any? (lambda (v) (letrec* ((g7495 #t)) g7495)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7496
                       (letrec*
                        ((x7497
                          (begin
                            (write '(funapp 176 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 176 57))
                          (display "\n")
                          (not x7497)))))
                     g7496)))
                 (nonzero?/c
                  (lambda (g7286 g7287 g7288)
                    (letrec*
                     ((g7498
                       (letrec*
                        ((x-cnd7499
                          (begin
                            (write '(funapp 184 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7500
                                  (letrec*
                                   ((x7501
                                     (begin
                                       (write '(funapp 186 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 186 66))
                                     (display "\n")
                                     (not x7501)))))
                                g7500))
                             g7288))))
                        (if x-cnd7499
                          g7288
                          (begin
                            (write '(blame g7286 191 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7286)))))))
                     g7498)))
                 (meta (lambda (v) (letrec* ((g7502 v)) g7502)))
                 (+
                  (begin
                    (write '(funapp 195 19))
                    (display "\n")
                    ((lambda (j7291 k7292 f7293)
                       (letrec*
                        ((g7504
                          (lambda (g7289 g7290)
                            (letrec*
                             ((g7505
                               (letrec*
                                ((x7506
                                  (letrec*
                                   ((x7508
                                     (begin
                                       (write '(funapp 204 42))
                                       (display "\n")
                                       (number?/c j7291 k7292 g7289)))
                                    (x7507
                                     (begin
                                       (write '(funapp 205 42))
                                       (display "\n")
                                       (number?/c j7291 k7292 g7290))))
                                   (begin
                                     (write '(funapp 206 34))
                                     (display "\n")
                                     (f7293 x7508 x7507)))))
                                (begin
                                  (write '(funapp 207 31))
                                  (display "\n")
                                  (number?/c j7291 k7292 x7506)))))
                             g7505))))
                        g7504))
                     (begin (write '(funapp 210 19)) (display "\n") 'server)
                     (begin (write '(funapp 211 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7503
                          (begin
                            (write '(funapp 212 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7503)))))
                 (-
                  (begin
                    (write '(funapp 214 19))
                    (display "\n")
                    ((lambda (j7296 k7297 f7298)
                       (letrec*
                        ((g7510
                          (lambda (g7294 g7295)
                            (letrec*
                             ((g7511
                               (letrec*
                                ((x7512
                                  (letrec*
                                   ((x7514
                                     (begin
                                       (write '(funapp 223 42))
                                       (display "\n")
                                       (number?/c j7296 k7297 g7294)))
                                    (x7513
                                     (begin
                                       (write '(funapp 224 42))
                                       (display "\n")
                                       (number?/c j7296 k7297 g7295))))
                                   (begin
                                     (write '(funapp 225 34))
                                     (display "\n")
                                     (f7298 x7514 x7513)))))
                                (begin
                                  (write '(funapp 226 31))
                                  (display "\n")
                                  (number?/c j7296 k7297 x7512)))))
                             g7511))))
                        g7510))
                     (begin (write '(funapp 229 19)) (display "\n") 'server)
                     (begin (write '(funapp 230 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7509
                          (begin
                            (write '(funapp 231 51))
                            (display "\n")
                            (orig-- a b))))
                        g7509)))))
                 (*
                  (begin
                    (write '(funapp 233 19))
                    (display "\n")
                    ((lambda (j7301 k7302 f7303)
                       (letrec*
                        ((g7516
                          (lambda (g7299 g7300)
                            (letrec*
                             ((g7517
                               (letrec*
                                ((x7518
                                  (letrec*
                                   ((x7520
                                     (begin
                                       (write '(funapp 242 42))
                                       (display "\n")
                                       (number?/c j7301 k7302 g7299)))
                                    (x7519
                                     (begin
                                       (write '(funapp 243 42))
                                       (display "\n")
                                       (number?/c j7301 k7302 g7300))))
                                   (begin
                                     (write '(funapp 244 34))
                                     (display "\n")
                                     (f7303 x7520 x7519)))))
                                (begin
                                  (write '(funapp 245 31))
                                  (display "\n")
                                  (number?/c j7301 k7302 x7518)))))
                             g7517))))
                        g7516))
                     (begin (write '(funapp 248 19)) (display "\n") 'server)
                     (begin (write '(funapp 249 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7515
                          (begin
                            (write '(funapp 250 51))
                            (display "\n")
                            (orig-* a b))))
                        g7515)))))
                 (/
                  (begin
                    (write '(funapp 252 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7522
                          (lambda (g7304 g7305)
                            (letrec*
                             ((g7523
                               (letrec*
                                ((x7524
                                  (letrec*
                                   ((x7526
                                     (begin
                                       (write '(funapp 261 42))
                                       (display "\n")
                                       (number?/c j7306 k7307 g7304)))
                                    (x7525
                                     (begin
                                       (write '(funapp 262 42))
                                       (display "\n")
                                       (number?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 263 34))
                                     (display "\n")
                                     (f7308 x7526 x7525)))))
                                (begin
                                  (write '(funapp 264 31))
                                  (display "\n")
                                  (number?/c j7306 k7307 x7524)))))
                             g7523))))
                        g7522))
                     (begin (write '(funapp 267 19)) (display "\n") 'server)
                     (begin (write '(funapp 268 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7521
                          (begin
                            (write '(funapp 269 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7521)))))
                 (car
                  (begin
                    (write '(funapp 271 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7528
                          (lambda (g7309)
                            (letrec*
                             ((g7529
                               (letrec*
                                ((x7530
                                  (letrec*
                                   ((x7531
                                     (begin
                                       (write '(funapp 280 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 281 34))
                                     (display "\n")
                                     (f7312 x7531)))))
                                (begin
                                  (write '(funapp 282 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7530)))))
                             g7529))))
                        g7528))
                     (begin (write '(funapp 285 19)) (display "\n") 'server)
                     (begin (write '(funapp 286 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7527
                          (begin
                            (write '(funapp 287 49))
                            (display "\n")
                            (orig-car p))))
                        g7527)))))
                 (cdr
                  (begin
                    (write '(funapp 289 19))
                    (display "\n")
                    ((lambda (j7314 k7315 f7316)
                       (letrec*
                        ((g7533
                          (lambda (g7313)
                            (letrec*
                             ((g7534
                               (letrec*
                                ((x7535
                                  (letrec*
                                   ((x7536
                                     (begin
                                       (write '(funapp 298 42))
                                       (display "\n")
                                       (pair?/c j7314 k7315 g7313))))
                                   (begin
                                     (write '(funapp 299 34))
                                     (display "\n")
                                     (f7316 x7536)))))
                                (begin
                                  (write '(funapp 300 31))
                                  (display "\n")
                                  (any/c j7314 k7315 x7535)))))
                             g7534))))
                        g7533))
                     (begin (write '(funapp 303 19)) (display "\n") 'server)
                     (begin (write '(funapp 304 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7532
                          (begin
                            (write '(funapp 305 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7532)))))
                 (cons
                  (begin
                    (write '(funapp 307 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7538
                          (lambda (g7317 g7318)
                            (letrec*
                             ((g7539
                               (letrec*
                                ((x7540
                                  (letrec*
                                   ((x7542
                                     (begin
                                       (write '(funapp 316 42))
                                       (display "\n")
                                       (any/c j7319 k7320 g7317)))
                                    (x7541
                                     (begin
                                       (write '(funapp 317 42))
                                       (display "\n")
                                       (any/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 318 34))
                                     (display "\n")
                                     (f7321 x7542 x7541)))))
                                (begin
                                  (write '(funapp 319 31))
                                  (display "\n")
                                  (pair?/c j7319 k7320 x7540)))))
                             g7539))))
                        g7538))
                     (begin (write '(funapp 322 19)) (display "\n") 'server)
                     (begin (write '(funapp 323 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7537
                          (begin
                            (write '(funapp 324 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7537)))))
                 (vector-ref
                  (begin
                    (write '(funapp 326 19))
                    (display "\n")
                    ((lambda (j7323 k7324 f7325)
                       (letrec*
                        ((g7544
                          (lambda (g7322)
                            (letrec*
                             ((g7545
                               (letrec*
                                ((x7546
                                  (letrec*
                                   ((x7547
                                     (begin
                                       (write '(funapp 335 42))
                                       (display "\n")
                                       (vector?/c j7323 k7324 g7322))))
                                   (begin
                                     (write '(funapp 336 34))
                                     (display "\n")
                                     (f7325 x7547)))))
                                (begin
                                  (write '(funapp 337 31))
                                  (display "\n")
                                  (integer?/c j7323 k7324 x7546)))))
                             g7545))))
                        g7544))
                     (begin (write '(funapp 340 19)) (display "\n") 'server)
                     (begin (write '(funapp 341 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7543
                          (begin
                            (write '(funapp 343 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7543)))))
                 (vector-set!
                  (begin
                    (write '(funapp 345 19))
                    (display "\n")
                    ((lambda (j7328 k7329 f7330)
                       (letrec*
                        ((g7549
                          (lambda (g7326 g7327)
                            (letrec*
                             ((g7550
                               (letrec*
                                ((x7551
                                  (letrec*
                                   ((x7553
                                     (begin
                                       (write '(funapp 354 42))
                                       (display "\n")
                                       (vector?/c j7328 k7329 g7326)))
                                    (x7552
                                     (begin
                                       (write '(funapp 355 42))
                                       (display "\n")
                                       (integer?/c j7328 k7329 g7327))))
                                   (begin
                                     (write '(funapp 356 34))
                                     (display "\n")
                                     (f7330 x7553 x7552)))))
                                (begin
                                  (write '(funapp 357 31))
                                  (display "\n")
                                  (any/c j7328 k7329 x7551)))))
                             g7550))))
                        g7549))
                     (begin (write '(funapp 360 19)) (display "\n") 'server)
                     (begin (write '(funapp 361 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7548
                          (begin
                            (write '(funapp 363 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7548)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7554
                       (if cnd
                         (begin (write '(funapp 367 37)) (display "\n") '())
                         (begin
                           (write '(funapp 367 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7554)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7555
                       (letrec*
                        ((x7556
                          (letrec*
                           ((x7557
                             (begin
                               (write '(funapp 374 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 374 60))
                             (display "\n")
                             (cdr x7557)))))
                        (begin
                          (write '(funapp 375 25))
                          (display "\n")
                          (cdr x7556)))))
                     g7555)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7558
                       (letrec*
                        ((x7561
                          (begin
                            (write '(funapp 381 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 381 64))
                          (display "\n")
                          (assert x7561))))
                      (g7559
                       (letrec*
                        ((x7562
                          (begin
                            (write '(funapp 382 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 382 59))
                          (display "\n")
                          (assert x7562))))
                      (g7560
                       (letrec*
                        ((x-cnd7563
                          (begin
                            (write '(funapp 385 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7563
                          (begin (write '(funapp 387 26)) (display "\n") '())
                          (letrec*
                           ((x7566
                             (letrec*
                              ((x7567
                                (begin
                                  (write '(funapp 389 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 389 63))
                                (display "\n")
                                (f x7567))))
                            (x7564
                             (letrec*
                              ((x7565
                                (begin
                                  (write '(funapp 390 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 390 63))
                                (display "\n")
                                (map f x7565)))))
                           (begin
                             (write '(funapp 391 28))
                             (display "\n")
                             (cons x7566 x7564)))))))
                     g7560)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7568
                       (letrec*
                        ((x7569
                          (begin
                            (write '(funapp 396 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 396 57))
                          (display "\n")
                          (cdr x7569)))))
                     g7568)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7570
                       (letrec*
                        ((x7571
                          (letrec*
                           ((x7572
                             (letrec*
                              ((x7573
                                (begin
                                  (write '(funapp 405 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 405 63))
                                (display "\n")
                                (car x7573)))))
                           (begin
                             (write '(funapp 406 28))
                             (display "\n")
                             (cdr x7572)))))
                        (begin
                          (write '(funapp 407 25))
                          (display "\n")
                          (car x7571)))))
                     g7570)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7574
                       (letrec*
                        ((x7575
                          (letrec*
                           ((x7576
                             (letrec*
                              ((x7577
                                (begin
                                  (write '(funapp 416 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 416 63))
                                (display "\n")
                                (cdr x7577)))))
                           (begin
                             (write '(funapp 417 28))
                             (display "\n")
                             (car x7576)))))
                        (begin
                          (write '(funapp 418 25))
                          (display "\n")
                          (cdr x7575)))))
                     g7574)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7578
                       (letrec*
                        ((x7581
                          (begin
                            (write '(funapp 424 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 424 62))
                          (display "\n")
                          (assert x7581))))
                      (g7579
                       (letrec*
                        ((x7582
                          (begin
                            (write '(funapp 426 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 426 61))
                          (display "\n")
                          (assert x7582))))
                      (g7580
                       (letrec*
                        ((output-port
                          (begin
                            (write '(funapp 429 39))
                            (display "\n")
                            (open-output-file filename)))
                         (res
                          (begin
                            (write '(funapp 430 31))
                            (display "\n")
                            (proc output-port))))
                        (letrec*
                         ((g7583
                           (begin
                             (write '(funapp 432 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7584 res))
                         g7584))))
                     g7580)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7585
                       (letrec*
                        ((x7586
                          (letrec*
                           ((x7587
                             (begin
                               (write '(funapp 440 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 440 60))
                             (display "\n")
                             (cdr x7587)))))
                        (begin
                          (write '(funapp 441 25))
                          (display "\n")
                          (car x7586)))))
                     g7585)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7588
                       (letrec*
                        ((x7589
                          (letrec*
                           ((x7590
                             (letrec*
                              ((x7591
                                (begin
                                  (write '(funapp 450 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 450 63))
                                (display "\n")
                                (car x7591)))))
                           (begin
                             (write '(funapp 451 28))
                             (display "\n")
                             (car x7590)))))
                        (begin
                          (write '(funapp 452 25))
                          (display "\n")
                          (cdr x7589)))))
                     g7588)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7592
                       (letrec*
                        ((x7594
                          (begin
                            (write '(funapp 457 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 457 59))
                          (display "\n")
                          (assert x7594))))
                      (g7593
                       (letrec*
                        ((x-cnd7595
                          (begin
                            (write '(funapp 460 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7595
                          #f
                          (letrec*
                           ((x-cnd7596
                             (letrec*
                              ((x7597
                                (begin
                                  (write '(funapp 465 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 465 58))
                                (display "\n")
                                (eq? x7597 k)))))
                           (if x-cnd7596
                             (begin
                               (write '(funapp 467 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7598
                                (begin
                                  (write '(funapp 468 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 468 57))
                                (display "\n")
                                (assq k x7598)))))))))
                     g7593)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7599
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 473 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 473 62))
                          (display "\n")
                          (= 0 x7600)))))
                     g7599)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7601
                       (letrec*
                        ((x7603
                          (begin
                            (write '(funapp 478 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 478 59))
                          (display "\n")
                          (assert x7603))))
                      (g7602
                       (letrec*
                        ((x-cnd7604
                          (begin
                            (write '(funapp 481 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7604
                          ""
                          (letrec*
                           ((x7607
                             (letrec*
                              ((x7608
                                (begin
                                  (write '(funapp 486 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 486 57))
                                (display "\n")
                                (char->string x7608))))
                            (x7605
                             (letrec*
                              ((x7606
                                (begin
                                  (write '(funapp 488 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 488 57))
                                (display "\n")
                                (list->string x7606)))))
                           (begin
                             (write '(funapp 489 28))
                             (display "\n")
                             (string-append x7607 x7605)))))))
                     g7602)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x7612
                          (begin
                            (write '(funapp 494 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 494 60))
                          (display "\n")
                          (assert x7612))))
                      (g7610
                       (letrec*
                        ((x7613
                          (begin
                            (write '(funapp 495 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 495 60))
                          (display "\n")
                          (assert x7613))))
                      (g7611
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 498 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7614
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 500 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7614))))
                     g7611)))
                 (cdddar
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
                                  (write '(funapp 510 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 510 63))
                                (display "\n")
                                (cdr x7618)))))
                           (begin
                             (write '(funapp 511 28))
                             (display "\n")
                             (cdr x7617)))))
                        (begin
                          (write '(funapp 512 25))
                          (display "\n")
                          (cdr x7616)))))
                     g7615)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x7622
                          (begin
                            (write '(funapp 517 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 517 59))
                          (display "\n")
                          (assert x7622))))
                      (g7620
                       (letrec*
                        ((x7623
                          (begin
                            (write '(funapp 518 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 518 59))
                          (display "\n")
                          (assert x7623))))
                      (g7621
                       (letrec*
                        ((x-cnd7624
                          (begin
                            (write '(funapp 521 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7624
                          x
                          (letrec*
                           ((x7626
                             (begin
                               (write '(funapp 525 36))
                               (display "\n")
                               (cdr x)))
                            (x7625
                             (begin
                               (write '(funapp 525 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 526 28))
                             (display "\n")
                             (list-tail x7626 x7625)))))))
                     g7621)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7627
                       (begin (write '(funapp 528 51)) (display "\n") '())))
                     g7627)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7628
                       (letrec*
                        ((x-cnd7629
                          (letrec*
                           ((x7630 #\a))
                           (begin
                             (write '(funapp 535 50))
                             (display "\n")
                             (char-ci>=? c x7630)))))
                        (if x-cnd7629
                          (letrec*
                           ((x7631 #\z))
                           (begin
                             (write '(funapp 537 50))
                             (display "\n")
                             (char-ci<=? c x7631)))
                          #f))))
                     g7628)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7632
                       (letrec*
                        ((x7634
                          (begin
                            (write '(funapp 543 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 543 61))
                          (display "\n")
                          (assert x7634))))
                      (g7633
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 546 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7635
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 552 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7636 (if val7243 val7243 #f)))
                               g7636)))))
                         g7635))))
                     g7633)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7637
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7638
                             (begin
                               (write '(funapp 564 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 564 64))
                             (display "\n")
                             (= x7638 9)))))
                        (letrec*
                         ((g7639
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7640
                                   (begin
                                     (write '(funapp 572 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 573 34))
                                   (display "\n")
                                   (= x7640 10)))))
                              (letrec*
                               ((g7641
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7642
                                      (begin
                                        (write '(funapp 579 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 580 37))
                                      (display "\n")
                                      (= x7642 32))))))
                               g7641)))))
                         g7639))))
                     g7637)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7643
                       (letrec*
                        ((x7644
                          (letrec*
                           ((x7645
                             (begin
                               (write '(funapp 589 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 589 60))
                             (display "\n")
                             (cdr x7645)))))
                        (begin
                          (write '(funapp 590 25))
                          (display "\n")
                          (cdr x7644)))))
                     g7643)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7646
                       (letrec*
                        ((x7648
                          (begin
                            (write '(funapp 595 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 595 61))
                          (display "\n")
                          (assert x7648))))
                      (g7647
                       (begin
                         (write '(funapp 596 30))
                         (display "\n")
                         (> x 0))))
                     g7647)))
                 ($pc (begin (write '(funapp 598 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7649 #f)) g7649)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7650
                       (letrec*
                        ((x7651
                          (begin
                            (write '(funapp 604 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 604 57))
                          (display "\n")
                          (cdr x7651)))))
                     g7650)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7652
                       (letrec*
                        ((x7654
                          (begin
                            (write '(funapp 609 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 609 61))
                          (display "\n")
                          (assert x7654))))
                      (g7653
                       (letrec*
                        ((x-cnd7655
                          (begin
                            (write '(funapp 612 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7655
                          (begin
                            (write '(funapp 613 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 613 51))
                            (display "\n")
                            (floor x))))))
                     g7653)))
                 ($cmp (begin (write '(funapp 615 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7656
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 621 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7657
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7659
                                   (begin
                                     (write '(funapp 629 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7658
                                   (begin
                                     (write '(funapp 629 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 630 34))
                                   (display "\n")
                                   (and x7659 x7658)))))
                              (letrec*
                               ((g7660
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7663
                                         (begin
                                           (write '(funapp 638 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7662
                                         (begin
                                           (write '(funapp 639 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7661
                                         (begin
                                           (write '(funapp 640 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 641 40))
                                         (display "\n")
                                         (and x7663 x7662 x7661)))))
                                    (letrec*
                                     ((g7664
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7672
                                               (begin
                                                 (write '(funapp 649 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7671
                                               (begin
                                                 (write '(funapp 650 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7668
                                               (letrec*
                                                ((x7670
                                                  (begin
                                                    (write '(funapp 653 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7669
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 655 49))
                                                  (display "\n")
                                                  (equal? x7670 x7669))))
                                              (x7665
                                               (letrec*
                                                ((x7667
                                                  (begin
                                                    (write '(funapp 658 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7666
                                                  (begin
                                                    (write '(funapp 659 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 660 49))
                                                  (display "\n")
                                                  (equal? x7667 x7666)))))
                                             (begin
                                               (write '(funapp 661 46))
                                               (display "\n")
                                               (and x7672
                                                    x7671
                                                    x7668
                                                    x7665)))))
                                          (letrec*
                                           ((g7673
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7689
                                                  (begin
                                                    (write '(funapp 667 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7688
                                                  (begin
                                                    (write '(funapp 668 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7674
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 671 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7675
                                                      (letrec*
                                                       ((x7686
                                                         (letrec*
                                                          ((x7687
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 678
                                                                 61))
                                                              (display "\n")
                                                              (vector-length
                                                               b))))
                                                          (begin
                                                            (write
                                                             '(funapp 679 59))
                                                            (display "\n")
                                                            (= x7687 n))))
                                                        (x7676
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7677
                                                                 (letrec*
                                                                  ((x7684
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         688
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7678
                                                                    (letrec*
                                                                     ((x7681
                                                                       (letrec*
                                                                        ((x7683
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               694
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             a
                                                                             i)))
                                                                         (x7682
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               698
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             b
                                                                             i))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             701
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (equal?
                                                                           x7683
                                                                           x7682))))
                                                                      (x7679
                                                                       (letrec*
                                                                        ((x7680
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               707
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (+
                                                                             i
                                                                             1))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             710
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (loop
                                                                           x7680)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          712
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7681
                                                                            x7679)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       714
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7684
                                                                        x7678)))))
                                                               g7677))))
                                                          (letrec*
                                                           ((g7685
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  718
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7685))))
                                                       (begin
                                                         (write
                                                          '(funapp 720 56))
                                                         (display "\n")
                                                         (and x7686 x7676)))))
                                                    g7675))))
                                                (begin
                                                  (write '(funapp 722 49))
                                                  (display "\n")
                                                  (and x7689 x7688 x7674))))))
                                           g7673)))))
                                     g7664)))))
                               g7660)))))
                         g7657))))
                     g7656)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7690
                       (letrec*
                        ((x7691
                          (letrec*
                           ((x7692
                             (letrec*
                              ((x7693
                                (begin
                                  (write '(funapp 735 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 735 63))
                                (display "\n")
                                (car x7693)))))
                           (begin
                             (write '(funapp 736 28))
                             (display "\n")
                             (car x7692)))))
                        (begin
                          (write '(funapp 737 25))
                          (display "\n")
                          (cdr x7691)))))
                     g7690)))
                 (caaddr
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
                                  (write '(funapp 746 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 746 63))
                                (display "\n")
                                (cdr x7697)))))
                           (begin
                             (write '(funapp 747 28))
                             (display "\n")
                             (car x7696)))))
                        (begin
                          (write '(funapp 748 25))
                          (display "\n")
                          (car x7695)))))
                     g7694)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7698
                       (begin
                         (write '(funapp 750 55))
                         (display "\n")
                         (eq? x y))))
                     g7698)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7699
                       (letrec*
                        ((x7701
                          (begin
                            (write '(funapp 754 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 754 61))
                          (display "\n")
                          (assert x7701))))
                      (g7700
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 757 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7702
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 763 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7703 (if val7251 val7251 #f)))
                               g7703)))))
                         g7702))))
                     g7700)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7704
                       (letrec*
                        ((x7707
                          (begin
                            (write '(funapp 773 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 773 62))
                          (display "\n")
                          (assert x7707))))
                      (g7705
                       (letrec*
                        ((x7708
                          (begin
                            (write '(funapp 775 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 775 61))
                          (display "\n")
                          (assert x7708))))
                      (g7706
                       (letrec*
                        ((input-port
                          (begin
                            (write '(funapp 778 38))
                            (display "\n")
                            (open-input-file filename)))
                         (res
                          (begin
                            (write '(funapp 779 31))
                            (display "\n")
                            (proc input-port))))
                        (letrec*
                         ((g7709
                           (begin
                             (write '(funapp 781 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7710 res))
                         g7710))))
                     g7706)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7711
                       (begin
                         (write '(funapp 784 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 784 59))
                            (display "\n")
                            '())))))
                     g7711)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7712
                       (letrec*
                        ((x7715
                          (begin
                            (write '(funapp 788 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 788 60))
                          (display "\n")
                          (assert x7715))))
                      (g7713
                       (letrec*
                        ((x7716
                          (begin
                            (write '(funapp 789 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 789 60))
                          (display "\n")
                          (assert x7716))))
                      (g7714
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 792 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7717
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 794 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7717))))
                     g7714)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7719
                          (letrec*
                           ((x7720
                             (begin
                               (write '(funapp 802 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 802 60))
                             (display "\n")
                             (car x7720)))))
                        (begin
                          (write '(funapp 803 25))
                          (display "\n")
                          (cdr x7719)))))
                     g7718)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7721
                       (letrec*
                        ((x7722
                          (letrec*
                           ((x7723
                             (letrec*
                              ((x7724
                                (begin
                                  (write '(funapp 812 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 812 63))
                                (display "\n")
                                (cdr x7724)))))
                           (begin
                             (write '(funapp 813 28))
                             (display "\n")
                             (car x7723)))))
                        (begin
                          (write '(funapp 814 25))
                          (display "\n")
                          (cdr x7722)))))
                     g7721)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((x7726
                          (letrec*
                           ((x7727
                             (begin
                               (write '(funapp 822 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 822 60))
                             (display "\n")
                             (cdr x7727)))))
                        (begin
                          (write '(funapp 823 25))
                          (display "\n")
                          (car x7726)))))
                     g7725)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((x7729
                          (letrec*
                           ((x7730
                             (begin
                               (write '(funapp 830 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 830 60))
                             (display "\n")
                             (car x7730)))))
                        (begin
                          (write '(funapp 831 25))
                          (display "\n")
                          (car x7729)))))
                     g7728)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7731
                       (letrec*
                        ((x7734
                          (begin
                            (write '(funapp 836 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 836 60))
                          (display "\n")
                          (assert x7734))))
                      (g7732
                       (letrec*
                        ((x7735
                          (begin
                            (write '(funapp 837 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 837 60))
                          (display "\n")
                          (assert x7735))))
                      (g7733
                       (letrec*
                        ((x7736
                          (begin
                            (write '(funapp 839 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 839 62))
                          (display "\n")
                          (not x7736)))))
                     g7733)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((x7738
                          (letrec*
                           ((x7739
                             (letrec*
                              ((x7740
                                (begin
                                  (write '(funapp 849 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 849 63))
                                (display "\n")
                                (car x7740)))))
                           (begin
                             (write '(funapp 850 28))
                             (display "\n")
                             (car x7739)))))
                        (begin
                          (write '(funapp 851 25))
                          (display "\n")
                          (car x7738)))))
                     g7737)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7741
                       (letrec*
                        ((x7743
                          (begin
                            (write '(funapp 856 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 856 61))
                          (display "\n")
                          (assert x7743))))
                      (g7742
                       (begin
                         (write '(funapp 857 30))
                         (display "\n")
                         (< x 0))))
                     g7742)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7744
                       (begin
                         (write '(funapp 859 55))
                         (display "\n")
                         (memq e l))))
                     g7744)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7745
                       (letrec*
                        ((x7746
                          (letrec*
                           ((x7747
                             (begin
                               (write '(funapp 865 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 865 60))
                             (display "\n")
                             (car x7747)))))
                        (begin
                          (write '(funapp 866 25))
                          (display "\n")
                          (car x7746)))))
                     g7745)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7748
                       (begin (write '(funapp 868 53)) (display "\n") '())))
                     g7748)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7749
                       (letrec*
                        ((x7751
                          (begin
                            (write '(funapp 872 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 872 59))
                          (display "\n")
                          (assert x7751))))
                      (g7750
                       (letrec*
                        ((x-cnd7752
                          (begin
                            (write '(funapp 875 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7752
                          (begin (write '(funapp 877 26)) (display "\n") '())
                          (letrec*
                           ((x7755
                             (letrec*
                              ((x7756
                                (begin
                                  (write '(funapp 879 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 879 63))
                                (display "\n")
                                (reverse x7756))))
                            (x7753
                             (letrec*
                              ((x7754
                                (begin
                                  (write '(funapp 880 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 880 63))
                                (display "\n")
                                (list x7754)))))
                           (begin
                             (write '(funapp 881 28))
                             (display "\n")
                             (append x7755 x7753)))))))
                     g7750)))
                 (caaadr
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
                                  (write '(funapp 890 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 890 63))
                                (display "\n")
                                (car x7760)))))
                           (begin
                             (write '(funapp 891 28))
                             (display "\n")
                             (car x7759)))))
                        (begin
                          (write '(funapp 892 25))
                          (display "\n")
                          (car x7758)))))
                     g7757)))
                 (cddadr
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
                                  (write '(funapp 901 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 901 63))
                                (display "\n")
                                (car x7764)))))
                           (begin
                             (write '(funapp 902 28))
                             (display "\n")
                             (cdr x7763)))))
                        (begin
                          (write '(funapp 903 25))
                          (display "\n")
                          (cdr x7762)))))
                     g7761)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7765
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 908 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 908 61))
                          (display "\n")
                          (assert x7767))))
                      (g7766
                       (letrec*
                        ((x7768
                          (begin
                            (write '(funapp 909 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 909 62))
                          (display "\n")
                          (= 1 x7768)))))
                     g7766)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x7770
                          (letrec*
                           ((x7771
                             (letrec*
                              ((x7772
                                (begin
                                  (write '(funapp 918 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 918 63))
                                (display "\n")
                                (cdr x7772)))))
                           (begin
                             (write '(funapp 919 28))
                             (display "\n")
                             (car x7771)))))
                        (begin
                          (write '(funapp 920 25))
                          (display "\n")
                          (car x7770)))))
                     g7769)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7773
                       (letrec*
                        ((x7776
                          (begin
                            (write '(funapp 926 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 926 61))
                          (display "\n")
                          (assert x7776))))
                      (g7774
                       (letrec*
                        ((x7777
                          (begin
                            (write '(funapp 927 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 927 62))
                          (display "\n")
                          (assert x7777))))
                      (g7775
                       (letrec*
                        ((x-cnd7778
                          (begin
                            (write '(funapp 930 37))
                            (display "\n")
                            (null? args))))
                        (if x-cnd7778
                          (letrec*
                           ((g7779
                             (begin
                               (write '(funapp 932 44))
                               (display "\n")
                               (proc))))
                           g7779)
                          (letrec*
                           ((x-cnd7780
                             (letrec*
                              ((x7781
                                (begin
                                  (write '(funapp 935 47))
                                  (display "\n")
                                  (cdr args))))
                              (begin
                                (write '(funapp 935 60))
                                (display "\n")
                                (null? x7781)))))
                           (if x-cnd7780
                             (letrec*
                              ((g7782
                                (letrec*
                                 ((x7783
                                   (begin
                                     (write '(funapp 939 50))
                                     (display "\n")
                                     (car args))))
                                 (begin
                                   (write '(funapp 939 63))
                                   (display "\n")
                                   (proc x7783)))))
                              g7782)
                             (letrec*
                              ((x-cnd7784
                                (letrec*
                                 ((x7785
                                   (begin
                                     (write '(funapp 943 50))
                                     (display "\n")
                                     (cddr args))))
                                 (begin
                                   (write '(funapp 943 64))
                                   (display "\n")
                                   (null? x7785)))))
                              (if x-cnd7784
                                (letrec*
                                 ((g7786
                                   (letrec*
                                    ((x7788
                                      (begin
                                        (write '(funapp 948 45))
                                        (display "\n")
                                        (car args)))
                                     (x7787
                                      (begin
                                        (write '(funapp 948 64))
                                        (display "\n")
                                        (cadr args))))
                                    (begin
                                      (write '(funapp 949 37))
                                      (display "\n")
                                      (proc x7788 x7787)))))
                                 g7786)
                                (letrec*
                                 ((x-cnd7789
                                   (letrec*
                                    ((x7790
                                      (begin
                                        (write '(funapp 954 45))
                                        (display "\n")
                                        (cdddr args))))
                                    (begin
                                      (write '(funapp 955 37))
                                      (display "\n")
                                      (null? x7790)))))
                                 (if x-cnd7789
                                   (letrec*
                                    ((g7791
                                      (letrec*
                                       ((x7794
                                         (begin
                                           (write '(funapp 960 48))
                                           (display "\n")
                                           (car args)))
                                        (x7793
                                         (begin
                                           (write '(funapp 961 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7792
                                         (begin
                                           (write '(funapp 962 48))
                                           (display "\n")
                                           (caddr args))))
                                       (begin
                                         (write '(funapp 963 40))
                                         (display "\n")
                                         (proc x7794 x7793 x7792)))))
                                    g7791)
                                   (letrec*
                                    ((x-cnd7795
                                      (letrec*
                                       ((x7796
                                         (begin
                                           (write '(funapp 968 48))
                                           (display "\n")
                                           (cddddr args))))
                                       (begin
                                         (write '(funapp 969 40))
                                         (display "\n")
                                         (null? x7796)))))
                                    (if x-cnd7795
                                      (letrec*
                                       ((g7797
                                         (letrec*
                                          ((x7801
                                            (begin
                                              (write '(funapp 974 51))
                                              (display "\n")
                                              (car args)))
                                           (x7800
                                            (begin
                                              (write '(funapp 975 51))
                                              (display "\n")
                                              (cadr args)))
                                           (x7799
                                            (begin
                                              (write '(funapp 976 51))
                                              (display "\n")
                                              (caddr args)))
                                           (x7798
                                            (begin
                                              (write '(funapp 977 51))
                                              (display "\n")
                                              (cadddr args))))
                                          (begin
                                            (write '(funapp 978 43))
                                            (display "\n")
                                            (proc x7801 x7800 x7799 x7798)))))
                                       g7797)
                                      (letrec*
                                       ((x-cnd7802
                                         (letrec*
                                          ((x7803
                                            (letrec*
                                             ((x7804
                                               (begin
                                                 (write '(funapp 985 54))
                                                 (display "\n")
                                                 (cddddr args))))
                                             (begin
                                               (write '(funapp 986 46))
                                               (display "\n")
                                               (cdr x7804)))))
                                          (begin
                                            (write '(funapp 987 43))
                                            (display "\n")
                                            (null? x7803)))))
                                       (if x-cnd7802
                                         (letrec*
                                          ((g7805
                                            (letrec*
                                             ((x7811
                                               (begin
                                                 (write '(funapp 992 54))
                                                 (display "\n")
                                                 (car args)))
                                              (x7810
                                               (begin
                                                 (write '(funapp 993 54))
                                                 (display "\n")
                                                 (cadr args)))
                                              (x7809
                                               (begin
                                                 (write '(funapp 994 54))
                                                 (display "\n")
                                                 (caddr args)))
                                              (x7808
                                               (begin
                                                 (write '(funapp 995 54))
                                                 (display "\n")
                                                 (cadddr args)))
                                              (x7806
                                               (letrec*
                                                ((x7807
                                                  (begin
                                                    (write '(funapp 998 57))
                                                    (display "\n")
                                                    (cddddr args))))
                                                (begin
                                                  (write '(funapp 999 49))
                                                  (display "\n")
                                                  (car x7807)))))
                                             (begin
                                               (write '(funapp 1000 46))
                                               (display "\n")
                                               (proc
                                                x7811
                                                x7810
                                                x7809
                                                x7808
                                                x7806)))))
                                          g7805)
                                         (letrec*
                                          ((x-cnd7812
                                            (letrec*
                                             ((x7813
                                               (letrec*
                                                ((x7814
                                                  (begin
                                                    (write '(funapp 1012 57))
                                                    (display "\n")
                                                    (cddddr args))))
                                                (begin
                                                  (write '(funapp 1013 49))
                                                  (display "\n")
                                                  (cddr x7814)))))
                                             (begin
                                               (write '(funapp 1014 46))
                                               (display "\n")
                                               (null? x7813)))))
                                          (if x-cnd7812
                                            (letrec*
                                             ((g7815
                                               (letrec*
                                                ((x7823
                                                  (begin
                                                    (write '(funapp 1019 57))
                                                    (display "\n")
                                                    (car args)))
                                                 (x7822
                                                  (begin
                                                    (write '(funapp 1020 57))
                                                    (display "\n")
                                                    (cadr args)))
                                                 (x7821
                                                  (begin
                                                    (write '(funapp 1021 57))
                                                    (display "\n")
                                                    (caddr args)))
                                                 (x7820
                                                  (begin
                                                    (write '(funapp 1022 57))
                                                    (display "\n")
                                                    (cadddr args)))
                                                 (x7818
                                                  (letrec*
                                                   ((x7819
                                                     (begin
                                                       (write
                                                        '(funapp 1025 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1026 52))
                                                     (display "\n")
                                                     (car x7819))))
                                                 (x7816
                                                  (letrec*
                                                   ((x7817
                                                     (begin
                                                       (write
                                                        '(funapp 1029 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1030 52))
                                                     (display "\n")
                                                     (cadr x7817)))))
                                                (begin
                                                  (write '(funapp 1031 49))
                                                  (display "\n")
                                                  (proc
                                                   x7823
                                                   x7822
                                                   x7821
                                                   x7820
                                                   x7818
                                                   x7816)))))
                                             g7815)
                                            (letrec*
                                             ((x-cnd7824
                                               (letrec*
                                                ((x7825
                                                  (letrec*
                                                   ((x7826
                                                     (begin
                                                       (write
                                                        '(funapp 1044 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1045 52))
                                                     (display "\n")
                                                     (cdddr x7826)))))
                                                (begin
                                                  (write '(funapp 1046 49))
                                                  (display "\n")
                                                  (null? x7825)))))
                                             (if x-cnd7824
                                               (letrec*
                                                ((g7827
                                                  (letrec*
                                                   ((x7837
                                                     (begin
                                                       (write
                                                        '(funapp 1051 60))
                                                       (display "\n")
                                                       (car args)))
                                                    (x7836
                                                     (begin
                                                       (write
                                                        '(funapp 1052 60))
                                                       (display "\n")
                                                       (cadr args)))
                                                    (x7835
                                                     (begin
                                                       (write
                                                        '(funapp 1053 60))
                                                       (display "\n")
                                                       (caddr args)))
                                                    (x7834
                                                     (begin
                                                       (write
                                                        '(funapp 1054 60))
                                                       (display "\n")
                                                       (cadddr args)))
                                                    (x7832
                                                     (letrec*
                                                      ((x7833
                                                        (begin
                                                          (write
                                                           '(funapp 1057 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1058 55))
                                                        (display "\n")
                                                        (car x7833))))
                                                    (x7830
                                                     (letrec*
                                                      ((x7831
                                                        (begin
                                                          (write
                                                           '(funapp 1061 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1062 55))
                                                        (display "\n")
                                                        (cadr x7831))))
                                                    (x7828
                                                     (letrec*
                                                      ((x7829
                                                        (begin
                                                          (write
                                                           '(funapp 1065 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1066 55))
                                                        (display "\n")
                                                        (caddr x7829)))))
                                                   (begin
                                                     (write '(funapp 1067 52))
                                                     (display "\n")
                                                     (proc
                                                      x7837
                                                      x7836
                                                      x7835
                                                      x7834
                                                      x7832
                                                      x7830
                                                      x7828)))))
                                                g7827)
                                               (letrec*
                                                ((g7838
                                                  (begin
                                                    (write '(funapp 1078 51))
                                                    (display "\n")
                                                    (error
                                                     "Unsupported call."))))
                                                g7838)))))))))))))))))))
                     g7775)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7839
                       (letrec*
                        ((x7841
                          (begin
                            (write '(funapp 1084 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1084 59))
                          (display "\n")
                          (assert x7841))))
                      (g7840
                       (letrec*
                        ((x-cnd7842
                          (begin
                            (write '(funapp 1087 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7842
                          #f
                          (letrec*
                           ((x-cnd7843
                             (letrec*
                              ((x7844
                                (begin
                                  (write '(funapp 1092 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1092 57))
                                (display "\n")
                                (equal? x7844 e)))))
                           (if x-cnd7843
                             l
                             (letrec*
                              ((x7845
                                (begin
                                  (write '(funapp 1095 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1095 57))
                                (display "\n")
                                (member e x7845)))))))))
                     g7840)))
                 (cddddr
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
                                  (write '(funapp 1104 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1104 63))
                                (display "\n")
                                (cdr x7849)))))
                           (begin
                             (write '(funapp 1105 28))
                             (display "\n")
                             (cdr x7848)))))
                        (begin
                          (write '(funapp 1106 25))
                          (display "\n")
                          (cdr x7847)))))
                     g7846)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((x7851
                          (letrec*
                           ((x7852
                             (letrec*
                              ((x7853
                                (begin
                                  (write '(funapp 1115 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1115 63))
                                (display "\n")
                                (cdr x7853)))))
                           (begin
                             (write '(funapp 1116 28))
                             (display "\n")
                             (cdr x7852)))))
                        (begin
                          (write '(funapp 1117 25))
                          (display "\n")
                          (car x7851)))))
                     g7850)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7854
                       (begin
                         (write '(funapp 1119 55))
                         (display "\n")
                         (random 42))))
                     g7854)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7855
                       (letrec*
                        ((x7857
                          (begin
                            (write '(funapp 1123 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1123 61))
                          (display "\n")
                          (assert x7857))))
                      (g7856
                       (begin
                         (write '(funapp 1124 30))
                         (display "\n")
                         (= x 0))))
                     g7856)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7858
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1131 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7859
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1133 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7859))))
                     g7858)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7860
                       (letrec*
                        ((x7861
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1139 57))
                          (display "\n")
                          (car x7861)))))
                     g7860)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7862
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7865
                             (begin
                               (write '(funapp 1149 36))
                               (display "\n")
                               (pair? l)))
                            (x7863
                             (letrec*
                              ((x7864
                                (begin
                                  (write '(funapp 1150 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 63))
                                (display "\n")
                                (list? x7864)))))
                           (begin
                             (write '(funapp 1151 28))
                             (display "\n")
                             (and x7865 x7863)))))
                        (letrec*
                         ((g7866
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1153 54))
                               (display "\n")
                               (null? l)))))
                         g7866))))
                     g7862)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7867
                       (letrec*
                        ((x7868
                          (letrec*
                           ((x7869
                             (letrec*
                              ((x7870
                                (begin
                                  (write '(funapp 1163 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1163 63))
                                (display "\n")
                                (car x7870)))))
                           (begin
                             (write '(funapp 1164 28))
                             (display "\n")
                             (cdr x7869)))))
                        (begin
                          (write '(funapp 1165 25))
                          (display "\n")
                          (cdr x7868)))))
                     g7867)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7871
                       (letrec*
                        ((x-cnd7872
                          (letrec*
                           ((x7873 #\0))
                           (begin
                             (write '(funapp 1172 60))
                             (display "\n")
                             (char<=? x7873 c)))))
                        (if x-cnd7872
                          (letrec*
                           ((x7874 #\9))
                           (begin
                             (write '(funapp 1174 50))
                             (display "\n")
                             (char<=? c x7874)))
                          #f))))
                     g7871)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7875
                       (letrec*
                        ((x7877
                          (begin
                            (write '(funapp 1181 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1181 59))
                          (display "\n")
                          (assert x7877))))
                      (g7876
                       (letrec*
                        ((x-cnd7878
                          (begin
                            (write '(funapp 1184 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7878
                          #f
                          (letrec*
                           ((x-cnd7879
                             (letrec*
                              ((x7880
                                (begin
                                  (write '(funapp 1189 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1189 58))
                                (display "\n")
                                (eqv? x7880 k)))))
                           (if x-cnd7879
                             (begin
                               (write '(funapp 1191 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7881
                                (begin
                                  (write '(funapp 1192 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1192 57))
                                (display "\n")
                                (assq k x7881)))))))))
                     g7876)))
                 (not (lambda (x) (letrec* ((g7882 (if x #f #t))) g7882)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7883
                       (begin
                         (write '(funapp 1196 52))
                         (display "\n")
                         (append l1 l2))))
                     g7883)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7884
                       (letrec*
                        ((x7886
                          (begin
                            (write '(funapp 1200 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1200 59))
                          (display "\n")
                          (assert x7886))))
                      (g7885
                       (letrec*
                        ((x-cnd7887
                          (begin
                            (write '(funapp 1203 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7887
                          #f
                          (letrec*
                           ((x-cnd7888
                             (letrec*
                              ((x7889
                                (begin
                                  (write '(funapp 1208 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1208 57))
                                (display "\n")
                                (eq? x7889 e)))))
                           (if x-cnd7888
                             l
                             (letrec*
                              ((x7890
                                (begin
                                  (write '(funapp 1211 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1211 57))
                                (display "\n")
                                (memq e x7890)))))))))
                     g7885)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7891
                       (letrec*
                        ((x7892
                          (letrec*
                           ((x7893
                             (letrec*
                              ((x7894
                                (begin
                                  (write '(funapp 1220 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1220 63))
                                (display "\n")
                                (car x7894)))))
                           (begin
                             (write '(funapp 1221 28))
                             (display "\n")
                             (cdr x7893)))))
                        (begin
                          (write '(funapp 1222 25))
                          (display "\n")
                          (car x7892)))))
                     g7891)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7895
                       (letrec*
                        ((x7897
                          (begin
                            (write '(funapp 1227 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1227 59))
                          (display "\n")
                          (assert x7897))))
                      (g7896
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7898
                               (letrec*
                                ((x-cnd7899
                                  (begin
                                    (write '(funapp 1235 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7899
                                  0
                                  (letrec*
                                   ((x7900
                                     (letrec*
                                      ((x7901
                                        (begin
                                          (write '(funapp 1240 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1240 65))
                                        (display "\n")
                                        (rec x7901)))))
                                   (begin
                                     (write '(funapp 1241 36))
                                     (display "\n")
                                     (+ 1 x7900)))))))
                             g7898))))
                        (letrec*
                         ((g7902
                           (begin
                             (write '(funapp 1243 42))
                             (display "\n")
                             (rec l))))
                         g7902))))
                     g7896)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7903
                       (letrec*
                        ((x7906
                          (begin
                            (write '(funapp 1248 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1248 60))
                          (display "\n")
                          (assert x7906))))
                      (g7904
                       (letrec*
                        ((x7907
                          (begin
                            (write '(funapp 1249 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1249 60))
                          (display "\n")
                          (assert x7907))))
                      (g7905
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1252 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7908
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1254 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7908))))
                     g7905)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7909
                       (letrec*
                        ((x7910
                          (begin
                            (write '(funapp 1261 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1261 61))
                          (display "\n")
                          (not x7910)))))
                     g7909)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7911
                       (letrec*
                        ((x7912
                          (letrec*
                           ((x7913
                             (begin
                               (write '(funapp 1268 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1268 60))
                             (display "\n")
                             (car x7913)))))
                        (begin
                          (write '(funapp 1269 25))
                          (display "\n")
                          (cdr x7912)))))
                     g7911)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7914
                       (letrec*
                        ((x7916
                          (begin
                            (write '(funapp 1274 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1274 59))
                          (display "\n")
                          (assert x7916))))
                      (g7915
                       (letrec*
                        ((x-cnd7917
                          (begin
                            (write '(funapp 1277 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7917
                          #f
                          (letrec*
                           ((x-cnd7918
                             (letrec*
                              ((x7919
                                (begin
                                  (write '(funapp 1282 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1282 58))
                                (display "\n")
                                (equal? x7919 k)))))
                           (if x-cnd7918
                             (begin
                               (write '(funapp 1284 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7920
                                (begin
                                  (write '(funapp 1285 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1285 57))
                                (display "\n")
                                (assoc k x7920)))))))))
                     g7915)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7921
                       (letrec*
                        ((x7922
                          (begin
                            (write '(funapp 1290 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1290 57))
                          (display "\n")
                          (car x7922)))))
                     g7921)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7923
                       (letrec*
                        ((x7926
                          (begin
                            (write '(funapp 1295 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1295 60))
                          (display "\n")
                          (assert x7926))))
                      (g7924
                       (letrec*
                        ((x7927
                          (begin
                            (write '(funapp 1296 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1296 60))
                          (display "\n")
                          (assert x7927))))
                      (g7925
                       (letrec*
                        ((x7928
                          (begin
                            (write '(funapp 1297 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1297 65))
                          (display "\n")
                          (not x7928)))))
                     g7925)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7929
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1304 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7930
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1306 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7930))))
                     g7929)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7931
                       (letrec*
                        ((x7934
                          (begin
                            (write '(funapp 1312 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1312 64))
                          (display "\n")
                          (assert x7934))))
                      (g7932
                       (letrec*
                        ((x7935
                          (begin
                            (write '(funapp 1313 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1313 59))
                          (display "\n")
                          (assert x7935))))
                      (g7933
                       (letrec*
                        ((x-cnd7936
                          (begin
                            (write '(funapp 1316 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7936
                          #t
                          (letrec*
                           ((x-cnd7937
                             (begin
                               (write '(funapp 1320 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7937
                             (letrec*
                              ((g7938
                                (letrec*
                                 ((x7940
                                   (begin
                                     (write '(funapp 1323 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1323 66))
                                   (display "\n")
                                   (f x7940))))
                               (g7939
                                (letrec*
                                 ((x7941
                                   (begin
                                     (write '(funapp 1326 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1327 34))
                                   (display "\n")
                                   (for-each f x7941)))))
                              g7939)
                             (begin
                               (write '(funapp 1329 29))
                               (display "\n")
                               '())))))))
                     g7933)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7942
                       (letrec*
                        ((x7944
                          (begin
                            (write '(funapp 1334 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1334 61))
                          (display "\n")
                          (assert x7944))))
                      (g7943
                       (letrec*
                        ((x-cnd7945
                          (begin
                            (write '(funapp 1337 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7945
                          (begin
                            (write '(funapp 1338 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7943)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7946
                       (letrec*
                        ((x7949
                          (begin
                            (write '(funapp 1343 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1343 60))
                          (display "\n")
                          (assert x7949))))
                      (g7947
                       (letrec*
                        ((x7950
                          (begin
                            (write '(funapp 1344 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1344 60))
                          (display "\n")
                          (assert x7950))))
                      (g7948
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1347 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7951
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1349 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7951))))
                     g7948)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7952
                       (letrec*
                        ((x7953
                          (letrec*
                           ((x7954
                             (letrec*
                              ((x7955
                                (begin
                                  (write '(funapp 1359 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1359 63))
                                (display "\n")
                                (cdr x7955)))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (cdr x7954)))))
                        (begin
                          (write '(funapp 1361 25))
                          (display "\n")
                          (car x7953)))))
                     g7952)))
                 (newline (lambda () (letrec* ((g7956 #f)) g7956)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7957
                       (letrec*
                        ((x7959
                          (letrec*
                           ((x7960
                             (begin
                               (write '(funapp 1369 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1369 60))
                             (display "\n")
                             (abs x7960))))
                         (x7958
                          (begin
                            (write '(funapp 1370 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1371 25))
                          (display "\n")
                          (/ x7959 x7958)))))
                     g7957)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7961
                       (letrec*
                        ((x7963
                          (begin
                            (write '(funapp 1377 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1377 61))
                          (display "\n")
                          (assert x7963))))
                      (g7962
                       (letrec*
                        ((x7964
                          (begin
                            (write '(funapp 1378 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1378 58))
                          (display "\n")
                          (not x7964)))))
                     g7962)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7965
                       (letrec*
                        ((x7969
                          (begin
                            (write '(funapp 1383 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1383 59))
                          (display "\n")
                          (assert x7969))))
                      (g7966
                       (letrec*
                        ((x7970
                          (begin
                            (write '(funapp 1385 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1385 59))
                          (display "\n")
                          (assert x7970))))
                      (g7967
                       (letrec*
                        ((x7971
                          (letrec*
                           ((x7972
                             (begin
                               (write '(funapp 1389 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1389 57))
                             (display "\n")
                             (< index x7972)))))
                        (begin
                          (write '(funapp 1390 25))
                          (display "\n")
                          (assert x7971))))
                      (g7968
                       (letrec*
                        ((x-cnd7973
                          (begin
                            (write '(funapp 1393 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7973
                          (begin
                            (write '(funapp 1395 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7975
                             (begin
                               (write '(funapp 1397 36))
                               (display "\n")
                               (cdr l)))
                            (x7974
                             (begin
                               (write '(funapp 1397 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1398 28))
                             (display "\n")
                             (list-ref x7975 x7974)))))))
                     g7968)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7976
                       (letrec*
                        ((x-cnd7977
                          (begin
                            (write '(funapp 1405 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7977
                          a
                          (letrec*
                           ((x7978
                             (begin
                               (write '(funapp 1408 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1408 59))
                             (display "\n")
                             (gcd b x7978)))))))
                     g7976)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g7979
                       (begin
                         (write '(funapp 1411 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 1411 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 1411 59))
                            (display "\n")
                            '())))))
                     g7979)))
                 (image?
                  (lambda (image7433)
                    (letrec*
                     ((g7980
                       (letrec*
                        ((x7981
                          (begin
                            (write '(funapp 1416 41))
                            (display "\n")
                            (car image7433))))
                        (begin
                          (write '(funapp 1416 59))
                          (display "\n")
                          (eq?
                           x7981
                           (begin
                             (write '(funapp 1416 69))
                             (display "\n")
                             'image))))))
                     g7980)))
                 (image/c
                  (lambda (j7332 k7333 v7331)
                    (letrec*
                     ((g7982
                       (begin
                         (write '(funapp 1420 38))
                         (display "\n")
                         (cons
                          image
                          (begin
                            (write '(funapp 1420 49))
                            (display "\n")
                            '())))))
                     g7982)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g7983
                       (begin
                         (write '(funapp 1421 59))
                         (display "\n")
                         (image))))
                     g7983)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g7984
                       (begin
                         (write '(funapp 1422 62))
                         (display "\n")
                         (image))))
                     g7984)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g7985
                       (begin
                         (write '(funapp 1424 56))
                         (display "\n")
                         (image))))
                     g7985)))
                 (posn
                  (lambda (x7435 y7436)
                    (letrec*
                     ((g7986
                       (letrec*
                        ((x7987
                          (letrec*
                           ((x7988
                             (begin
                               (write '(funapp 1432 36))
                               (display "\n")
                               (cons
                                y7436
                                (begin
                                  (write '(funapp 1432 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1433 28))
                             (display "\n")
                             (cons x7435 x7988)))))
                        (begin
                          (write '(funapp 1434 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1434 30))
                             (display "\n")
                             'posn)
                           x7987)))))
                     g7986)))
                 (posn?
                  (lambda (posn7434)
                    (letrec*
                     ((g7989
                       (letrec*
                        ((x7990
                          (begin
                            (write '(funapp 1440 41))
                            (display "\n")
                            (car posn7434))))
                        (begin
                          (write '(funapp 1440 58))
                          (display "\n")
                          (eq?
                           x7990
                           (begin
                             (write '(funapp 1440 68))
                             (display "\n")
                             'posn))))))
                     g7989)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g7991
                       (letrec*
                        ((x7992
                          (begin
                            (write '(funapp 1445 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1445 60))
                          (display "\n")
                          (car x7992)))))
                     g7991)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g7993
                       (letrec*
                        ((x7994
                          (letrec*
                           ((x7995
                             (begin
                               (write '(funapp 1452 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1452 63))
                             (display "\n")
                             (cdr x7995)))))
                        (begin
                          (write '(funapp 1453 25))
                          (display "\n")
                          (car x7994)))))
                     g7993)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g7996
                       (letrec*
                        ((x-cnd7997
                          (letrec*
                           ((x7999
                             (begin
                               (write '(funapp 1462 36))
                               (display "\n")
                               (posn-x p1)))
                            (x7998
                             (begin
                               (write '(funapp 1462 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1463 28))
                             (display "\n")
                             (= x7999 x7998)))))
                        (if x-cnd7997
                          (letrec*
                           ((x8001
                             (begin
                               (write '(funapp 1466 36))
                               (display "\n")
                               (posn-y p1)))
                            (x8000
                             (begin
                               (write '(funapp 1466 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1467 28))
                             (display "\n")
                             (= x8001 x8000)))
                          #f))))
                     g7996)))
                 (snake
                  (lambda (dir7440 segs7441)
                    (letrec*
                     ((g8002
                       (letrec*
                        ((x8003
                          (letrec*
                           ((x8004
                             (begin
                               (write '(funapp 1477 36))
                               (display "\n")
                               (cons
                                segs7441
                                (begin
                                  (write '(funapp 1477 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1478 28))
                             (display "\n")
                             (cons dir7440 x8004)))))
                        (begin
                          (write '(funapp 1479 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1479 30))
                             (display "\n")
                             'snake)
                           x8003)))))
                     g8002)))
                 (snake?
                  (lambda (snake7439)
                    (letrec*
                     ((g8005
                       (letrec*
                        ((x8006
                          (begin
                            (write '(funapp 1485 41))
                            (display "\n")
                            (car snake7439))))
                        (begin
                          (write '(funapp 1485 59))
                          (display "\n")
                          (eq?
                           x8006
                           (begin
                             (write '(funapp 1485 69))
                             (display "\n")
                             'snake))))))
                     g8005)))
                 (snake-dir
                  (lambda (snake)
                    (letrec*
                     ((g8007
                       (letrec*
                        ((x8008
                          (begin
                            (write '(funapp 1490 47))
                            (display "\n")
                            (cdr snake))))
                        (begin
                          (write '(funapp 1490 61))
                          (display "\n")
                          (car x8008)))))
                     g8007)))
                 (snake-segs
                  (lambda (snake)
                    (letrec*
                     ((g8009
                       (letrec*
                        ((x8010
                          (letrec*
                           ((x8011
                             (begin
                               (write '(funapp 1497 50))
                               (display "\n")
                               (cdr snake))))
                           (begin
                             (write '(funapp 1497 64))
                             (display "\n")
                             (cdr x8011)))))
                        (begin
                          (write '(funapp 1498 25))
                          (display "\n")
                          (car x8010)))))
                     g8009)))
                 (world
                  (lambda (snake7445 food7446)
                    (letrec*
                     ((g8012
                       (letrec*
                        ((x8013
                          (letrec*
                           ((x8014
                             (begin
                               (write '(funapp 1507 36))
                               (display "\n")
                               (cons
                                food7446
                                (begin
                                  (write '(funapp 1507 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1508 28))
                             (display "\n")
                             (cons snake7445 x8014)))))
                        (begin
                          (write '(funapp 1509 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1509 30))
                             (display "\n")
                             'world)
                           x8013)))))
                     g8012)))
                 (world?
                  (lambda (world7444)
                    (letrec*
                     ((g8015
                       (letrec*
                        ((x8016
                          (begin
                            (write '(funapp 1515 41))
                            (display "\n")
                            (car world7444))))
                        (begin
                          (write '(funapp 1515 59))
                          (display "\n")
                          (eq?
                           x8016
                           (begin
                             (write '(funapp 1515 69))
                             (display "\n")
                             'world))))))
                     g8015)))
                 (world-snake
                  (lambda (world)
                    (letrec*
                     ((g8017
                       (letrec*
                        ((x8018
                          (begin
                            (write '(funapp 1520 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1520 61))
                          (display "\n")
                          (car x8018)))))
                     g8017)))
                 (world-food
                  (lambda (world)
                    (letrec*
                     ((g8019
                       (letrec*
                        ((x8020
                          (letrec*
                           ((x8021
                             (begin
                               (write '(funapp 1527 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1527 64))
                             (display "\n")
                             (cdr x8021)))))
                        (begin
                          (write '(funapp 1528 25))
                          (display "\n")
                          (car x8020)))))
                     g8019)))
                 (DIR/C
                  (lambda (g7338 g7339 g7340)
                    (letrec*
                     ((g8022
                       (letrec*
                        ((x-cnd8023
                          (begin
                            (write '(funapp 1536 27))
                            (display "\n")
                            ((lambda (v7337)
                               (letrec*
                                ((g8024
                                  (letrec*
                                   ((x-cnd8025
                                     (begin
                                       (write '(funapp 1540 46))
                                       (display "\n")
                                       (eq?
                                        (begin
                                          (write '(funapp 1540 50))
                                          (display "\n")
                                          'up)
                                        v7337))))
                                   (if x-cnd8025
                                     #t
                                     (letrec*
                                      ((x-cnd8026
                                        (begin
                                          (write '(funapp 1544 49))
                                          (display "\n")
                                          (eq?
                                           (begin
                                             (write '(funapp 1544 53))
                                             (display "\n")
                                             'down)
                                           v7337))))
                                      (if x-cnd8026
                                        #t
                                        (letrec*
                                         ((x-cnd8027
                                           (begin
                                             (write '(funapp 1548 52))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1548 56))
                                                (display "\n")
                                                'left)
                                              v7337))))
                                         (if x-cnd8027
                                           #t
                                           (begin
                                             (write '(funapp 1551 42))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1551 46))
                                                (display "\n")
                                                'right)
                                              v7337))))))))))
                                g8024))
                             g7340))))
                        (if x-cnd8023
                          g7340
                          (begin
                            (write '(blame g7338 1556 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7338)))))))
                     g8022)))
                 (POSN/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8028
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8029
                             (begin
                               (write '(funapp 1574 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1575 28))
                             (display "\n")
                             (real?/c j7342 k7343 x8029)))))
                        (letrec*
                         ((g8030
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8031
                                 (letrec*
                                  ((x8032
                                    (begin
                                      (write '(funapp 1582 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1582 65))
                                    (display "\n")
                                    (car x8032)))))
                               (begin
                                 (write '(funapp 1583 32))
                                 (display "\n")
                                 (real?/c j7342 k7343 x8031)))))
                            (letrec*
                             ((g8033
                               (letrec*
                                ((x8034
                                  (letrec*
                                   ((x8035
                                     (begin
                                       (write '(funapp 1589 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1589 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1590 36))
                                     (display "\n")
                                     (cons checked7344 x8035)))))
                                (begin
                                  (write '(funapp 1591 33))
                                  (display "\n")
                                  (cons posn x8034)))))
                             g8033))))
                         g8030))))
                     g8028)))
                 (SNAKE/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8036
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8037
                             (begin
                               (write '(funapp 1602 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1603 28))
                             (display "\n")
                             (DIR/C j7348 k7349 x8037)))))
                        (letrec*
                         ((g8038
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8041
                                 (letrec*
                                  ((x8042
                                    (begin
                                      (write '(funapp 1611 43))
                                      (display "\n")
                                      (listof POSN/C))))
                                  (begin
                                    (write '(funapp 1612 35))
                                    (display "\n")
                                    (and/c cons?/c x8042))))
                                (x8039
                                 (letrec*
                                  ((x8040
                                    (begin
                                      (write '(funapp 1614 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1614 65))
                                    (display "\n")
                                    (car x8040)))))
                               (begin
                                 (write '(funapp 1615 32))
                                 (display "\n")
                                 (x8041 j7348 k7349 x8039)))))
                            (letrec*
                             ((g8043
                               (letrec*
                                ((x8044
                                  (letrec*
                                   ((x8045
                                     (begin
                                       (write '(funapp 1621 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1621 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1622 36))
                                     (display "\n")
                                     (cons checked7350 x8045)))))
                                (begin
                                  (write '(funapp 1623 33))
                                  (display "\n")
                                  (cons snake x8044)))))
                             g8043))))
                         g8038))))
                     g8036)))
                 (WORLD/C
                  (lambda (j7354 k7355 v7353)
                    (letrec*
                     ((g8046
                       (letrec*
                        ((checked7356
                          (letrec*
                           ((x8047
                             (begin
                               (write '(funapp 1634 36))
                               (display "\n")
                               (car v7353))))
                           (begin
                             (write '(funapp 1635 28))
                             (display "\n")
                             (SNAKE/C j7354 k7355 x8047)))))
                        (letrec*
                         ((g8048
                           (letrec*
                            ((checked7357
                              (letrec*
                               ((x8049
                                 (letrec*
                                  ((x8050
                                    (begin
                                      (write '(funapp 1642 51))
                                      (display "\n")
                                      (cdr v7353))))
                                  (begin
                                    (write '(funapp 1642 65))
                                    (display "\n")
                                    (car x8050)))))
                               (begin
                                 (write '(funapp 1643 32))
                                 (display "\n")
                                 (POSN/C j7354 k7355 x8049)))))
                            (letrec*
                             ((g8051
                               (letrec*
                                ((x8052
                                  (letrec*
                                   ((x8053
                                     (begin
                                       (write '(funapp 1649 44))
                                       (display "\n")
                                       (cons
                                        checked7357
                                        (begin
                                          (write '(funapp 1649 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1650 36))
                                     (display "\n")
                                     (cons checked7356 x8053)))))
                                (begin
                                  (write '(funapp 1651 33))
                                  (display "\n")
                                  (cons world x8052)))))
                             g8051))))
                         g8048))))
                     g8046)))
                 (GRID-SIZE 30)
                 (BOARD-HEIGHT 20)
                 (BOARD-WIDTH 30)
                 (BOARD-HEIGHT-PIXELS
                  (begin
                    (write '(funapp 1658 39))
                    (display "\n")
                    (* GRID-SIZE BOARD-HEIGHT)))
                 (BOARD-WIDTH-PIXELS
                  (begin
                    (write '(funapp 1659 38))
                    (display "\n")
                    (* GRID-SIZE BOARD-WIDTH)))
                 (BACKGROUND
                  (begin
                    (write '(funapp 1661 19))
                    (display "\n")
                    (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
                 (SEGMENT-RADIUS
                  (begin
                    (write '(funapp 1662 34))
                    (display "\n")
                    (/ GRID-SIZE 2)))
                 (SEGMENT-IMAGE
                  (begin
                    (write '(funapp 1663 33))
                    (display "\n")
                    (circle SEGMENT-RADIUS "solid" "red")))
                 (FOOD-RADIUS SEGMENT-RADIUS)
                 (FOOD-IMAGE
                  (begin
                    (write '(funapp 1665 30))
                    (display "\n")
                    (circle FOOD-RADIUS "solid" "green")))
                 (WORLD
                  (letrec*
                   ((x8055
                     (letrec*
                      ((x8056
                        (letrec*
                         ((x8057
                           (begin
                             (write '(funapp 1671 42))
                             (display "\n")
                             (posn 5 3))))
                         (begin
                           (write '(funapp 1671 55))
                           (display "\n")
                           (cons x8057 empty)))))
                      (begin
                        (write '(funapp 1672 23))
                        (display "\n")
                        (snake
                         (begin
                           (write '(funapp 1672 29))
                           (display "\n")
                           'right)
                         x8056))))
                    (x8054
                     (begin
                       (write '(funapp 1673 28))
                       (display "\n")
                       (posn 8 12))))
                   (begin
                     (write '(funapp 1674 20))
                     (display "\n")
                     (world x8055 x8054))))
                 (snake-wall-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8058
                       (letrec*
                        ((x8059
                          (letrec*
                           ((x8060
                             (begin
                               (write '(funapp 1681 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1681 63))
                             (display "\n")
                             (car x8060)))))
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (head-collide? x8059)))))
                     g8058)))
                 (head-collide?
                  (lambda (p)
                    (letrec*
                     ((g8061
                       (letrec*
                        ((val7258
                          (letrec*
                           ((x8062
                             (begin
                               (write '(funapp 1689 52))
                               (display "\n")
                               (posn-x p))))
                           (begin
                             (write '(funapp 1689 65))
                             (display "\n")
                             (<= x8062 0)))))
                        (letrec*
                         ((g8063
                           (if val7258
                             val7258
                             (letrec*
                              ((val7259
                                (letrec*
                                 ((x8064
                                   (begin
                                     (write '(funapp 1697 42))
                                     (display "\n")
                                     (posn-x p))))
                                 (begin
                                   (write '(funapp 1698 34))
                                   (display "\n")
                                   (>= x8064 BOARD-WIDTH)))))
                              (letrec*
                               ((g8065
                                 (if val7259
                                   val7259
                                   (letrec*
                                    ((val7260
                                      (letrec*
                                       ((x8066
                                         (begin
                                           (write '(funapp 1706 48))
                                           (display "\n")
                                           (posn-y p))))
                                       (begin
                                         (write '(funapp 1707 40))
                                         (display "\n")
                                         (<= x8066 0)))))
                                    (letrec*
                                     ((g8067
                                       (if val7260
                                         val7260
                                         (letrec*
                                          ((x8068
                                            (begin
                                              (write '(funapp 1713 51))
                                              (display "\n")
                                              (posn-y p))))
                                          (begin
                                            (write '(funapp 1714 43))
                                            (display "\n")
                                            (>= x8068 BOARD-HEIGHT))))))
                                     g8067)))))
                               g8065)))))
                         g8063))))
                     g8061)))
                 (snake-self-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8069
                       (letrec*
                        ((x8072
                          (letrec*
                           ((x8073
                             (begin
                               (write '(funapp 1725 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1725 63))
                             (display "\n")
                             (car x8073))))
                         (x8070
                          (letrec*
                           ((x8071
                             (begin
                               (write '(funapp 1727 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1727 63))
                             (display "\n")
                             (cdr x8071)))))
                        (begin
                          (write '(funapp 1728 25))
                          (display "\n")
                          (segs-self-collide? x8072 x8070)))))
                     g8069)))
                 (segs-self-collide?
                  (lambda (h segs)
                    (letrec*
                     ((g8074
                       (letrec*
                        ((x-cnd8075
                          (begin
                            (write '(funapp 1735 37))
                            (display "\n")
                            (empty? segs))))
                        (if x-cnd8075
                          (letrec* ((g8076 #f)) g8076)
                          (letrec*
                           ((g8077
                             (letrec*
                              ((x8080
                                (letrec*
                                 ((x8081
                                   (begin
                                     (write '(funapp 1743 42))
                                     (display "\n")
                                     (car segs))))
                                 (begin
                                   (write '(funapp 1744 34))
                                   (display "\n")
                                   (posn=? x8081 h))))
                               (x8078
                                (letrec*
                                 ((x8079
                                   (begin
                                     (write '(funapp 1747 42))
                                     (display "\n")
                                     (cdr segs))))
                                 (begin
                                   (write '(funapp 1748 34))
                                   (display "\n")
                                   (segs-self-collide? h x8079)))))
                              (begin
                                (write '(funapp 1749 31))
                                (display "\n")
                                (or x8080 x8078)))))
                           g8077)))))
                     g8074)))
                 (cut-tail
                  (lambda (segs)
                    (letrec*
                     ((g8082
                       (letrec*
                        ((r
                          (begin
                            (write '(funapp 1757 29))
                            (display "\n")
                            (cdr segs))))
                        (letrec*
                         ((g8083
                           (letrec*
                            ((x-cnd8084
                              (begin
                                (write '(funapp 1761 41))
                                (display "\n")
                                (empty? r))))
                            (if x-cnd8084
                              (letrec* ((g8085 empty)) g8085)
                              (letrec*
                               ((g8086
                                 (letrec*
                                  ((x8088
                                    (begin
                                      (write '(funapp 1767 43))
                                      (display "\n")
                                      (car segs)))
                                   (x8087
                                    (begin
                                      (write '(funapp 1767 62))
                                      (display "\n")
                                      (cut-tail r))))
                                  (begin
                                    (write '(funapp 1768 35))
                                    (display "\n")
                                    (cons x8088 x8087)))))
                               g8086)))))
                         g8083))))
                     g8082)))
                 (next-head
                  (lambda (seg dir)
                    (letrec*
                     ((g8089
                       (letrec*
                        ((x-cnd8090
                          (begin
                            (write '(funapp 1777 37))
                            (display "\n")
                            (equal?
                             (begin
                               (write '(funapp 1777 44))
                               (display "\n")
                               'right)
                             dir))))
                        (if x-cnd8090
                          (letrec*
                           ((g8091
                             (letrec*
                              ((x8093
                                (letrec*
                                 ((x8094
                                   (begin
                                     (write '(funapp 1783 50))
                                     (display "\n")
                                     (posn-x seg))))
                                 (begin
                                   (write '(funapp 1783 65))
                                   (display "\n")
                                   (add1 x8094))))
                               (x8092
                                (begin
                                  (write '(funapp 1784 39))
                                  (display "\n")
                                  (posn-y seg))))
                              (begin
                                (write '(funapp 1785 31))
                                (display "\n")
                                (posn x8093 x8092)))))
                           g8091)
                          (letrec*
                           ((x-cnd8095
                             (begin
                               (write '(funapp 1788 40))
                               (display "\n")
                               (equal?
                                (begin
                                  (write '(funapp 1788 47))
                                  (display "\n")
                                  'left)
                                dir))))
                           (if x-cnd8095
                             (letrec*
                              ((g8096
                                (letrec*
                                 ((x8098
                                   (letrec*
                                    ((x8099
                                      (begin
                                        (write '(funapp 1795 45))
                                        (display "\n")
                                        (posn-x seg))))
                                    (begin
                                      (write '(funapp 1796 37))
                                      (display "\n")
                                      (sub1 x8099))))
                                  (x8097
                                   (begin
                                     (write '(funapp 1797 42))
                                     (display "\n")
                                     (posn-y seg))))
                                 (begin
                                   (write '(funapp 1798 34))
                                   (display "\n")
                                   (posn x8098 x8097)))))
                              g8096)
                             (letrec*
                              ((x-cnd8100
                                (begin
                                  (write '(funapp 1801 43))
                                  (display "\n")
                                  (equal?
                                   (begin
                                     (write '(funapp 1801 50))
                                     (display "\n")
                                     'down)
                                   dir))))
                              (if x-cnd8100
                                (letrec*
                                 ((g8101
                                   (letrec*
                                    ((x8104
                                      (begin
                                        (write '(funapp 1806 45))
                                        (display "\n")
                                        (posn-x seg)))
                                     (x8102
                                      (letrec*
                                       ((x8103
                                         (begin
                                           (write '(funapp 1809 48))
                                           (display "\n")
                                           (posn-y seg))))
                                       (begin
                                         (write '(funapp 1810 40))
                                         (display "\n")
                                         (sub1 x8103)))))
                                    (begin
                                      (write '(funapp 1811 37))
                                      (display "\n")
                                      (posn x8104 x8102)))))
                                 g8101)
                                (letrec*
                                 ((g8105
                                   (letrec*
                                    ((x8108
                                      (begin
                                        (write '(funapp 1816 45))
                                        (display "\n")
                                        (posn-x seg)))
                                     (x8106
                                      (letrec*
                                       ((x8107
                                         (begin
                                           (write '(funapp 1819 48))
                                           (display "\n")
                                           (posn-y seg))))
                                       (begin
                                         (write '(funapp 1820 40))
                                         (display "\n")
                                         (add1 x8107)))))
                                    (begin
                                      (write '(funapp 1821 37))
                                      (display "\n")
                                      (posn x8108 x8106)))))
                                 g8105)))))))))
                     g8089)))
                 (snake-slither
                  (lambda (snk)
                    (letrec*
                     ((g8109
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1829 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8110
                           (letrec*
                            ((x8111
                              (letrec*
                               ((x8114
                                 (letrec*
                                  ((x8115
                                    (letrec*
                                     ((x8116
                                       (begin
                                         (write '(funapp 1839 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1840 38))
                                       (display "\n")
                                       (car x8116)))))
                                  (begin
                                    (write '(funapp 1841 35))
                                    (display "\n")
                                    (next-head x8115 d))))
                                (x8112
                                 (letrec*
                                  ((x8113
                                    (begin
                                      (write '(funapp 1844 43))
                                      (display "\n")
                                      (snake-segs snk))))
                                  (begin
                                    (write '(funapp 1845 35))
                                    (display "\n")
                                    (cut-tail x8113)))))
                               (begin
                                 (write '(funapp 1846 32))
                                 (display "\n")
                                 (cons x8114 x8112)))))
                            (begin
                              (write '(funapp 1847 29))
                              (display "\n")
                              (snake d x8111)))))
                         g8110))))
                     g8109)))
                 (snake-grow
                  (lambda (snk)
                    (letrec*
                     ((g8117
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1855 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8118
                           (letrec*
                            ((x8119
                              (letrec*
                               ((x8121
                                 (letrec*
                                  ((x8122
                                    (letrec*
                                     ((x8123
                                       (begin
                                         (write '(funapp 1865 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1866 38))
                                       (display "\n")
                                       (car x8123)))))
                                  (begin
                                    (write '(funapp 1867 35))
                                    (display "\n")
                                    (next-head x8122 d))))
                                (x8120
                                 (begin
                                   (write '(funapp 1868 40))
                                   (display "\n")
                                   (snake-segs snk))))
                               (begin
                                 (write '(funapp 1869 32))
                                 (display "\n")
                                 (cons x8121 x8120)))))
                            (begin
                              (write '(funapp 1870 29))
                              (display "\n")
                              (snake d x8119)))))
                         g8118))))
                     g8117)))
                 (world->world
                  (lambda (w)
                    (letrec*
                     ((g8124
                       (letrec*
                        ((x-cnd8125
                          (begin
                            (write '(funapp 1878 37))
                            (display "\n")
                            (eating? w))))
                        (if x-cnd8125
                          (letrec*
                           ((g8126
                             (begin
                               (write '(funapp 1880 44))
                               (display "\n")
                               (snake-eat w))))
                           g8126)
                          (letrec*
                           ((g8127
                             (letrec*
                              ((x8129
                                (letrec*
                                 ((x8130
                                   (begin
                                     (write '(funapp 1886 42))
                                     (display "\n")
                                     (world-snake w))))
                                 (begin
                                   (write '(funapp 1887 34))
                                   (display "\n")
                                   (snake-slither x8130))))
                               (x8128
                                (begin
                                  (write '(funapp 1888 39))
                                  (display "\n")
                                  (world-food w))))
                              (begin
                                (write '(funapp 1889 31))
                                (display "\n")
                                (world x8129 x8128)))))
                           g8127)))))
                     g8124)))
                 (eating?
                  (lambda (w)
                    (letrec*
                     ((g8131
                       (letrec*
                        ((x8135
                          (begin
                            (write '(funapp 1897 33))
                            (display "\n")
                            (world-food w)))
                         (x8132
                          (letrec*
                           ((x8133
                             (letrec*
                              ((x8134
                                (begin
                                  (write '(funapp 1902 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1903 31))
                                (display "\n")
                                (snake-segs x8134)))))
                           (begin
                             (write '(funapp 1904 28))
                             (display "\n")
                             (car x8133)))))
                        (begin
                          (write '(funapp 1905 25))
                          (display "\n")
                          (posn=? x8135 x8132)))))
                     g8131)))
                 (snake-change-direction
                  (lambda (snk dir)
                    (letrec*
                     ((g8136
                       (letrec*
                        ((x8137
                          (begin
                            (write '(funapp 1911 41))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 1911 60))
                          (display "\n")
                          (snake dir x8137)))))
                     g8136)))
                 (world-change-dir
                  (lambda (w dir)
                    (letrec*
                     ((g8138
                       (letrec*
                        ((x8140
                          (letrec*
                           ((x8141
                             (begin
                               (write '(funapp 1920 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1921 28))
                             (display "\n")
                             (snake-change-direction x8141 dir))))
                         (x8139
                          (begin
                            (write '(funapp 1922 33))
                            (display "\n")
                            (world-food w))))
                        (begin
                          (write '(funapp 1923 25))
                          (display "\n")
                          (world x8140 x8139)))))
                     g8138)))
                 (snake-eat
                  (lambda (w)
                    (letrec*
                     ((g8142
                       (letrec*
                        ((x8146
                          (letrec*
                           ((x8147
                             (begin
                               (write '(funapp 1932 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1933 28))
                             (display "\n")
                             (snake-grow x8147))))
                         (x8143
                          (letrec*
                           ((x8145
                             (begin
                               (write '(funapp 1936 36))
                               (display "\n")
                               (- BOARD-WIDTH 1)))
                            (x8144
                             (begin
                               (write '(funapp 1937 36))
                               (display "\n")
                               (- BOARD-HEIGHT 1))))
                           (begin
                             (write '(funapp 1938 28))
                             (display "\n")
                             (posn x8145 x8144)))))
                        (begin
                          (write '(funapp 1939 25))
                          (display "\n")
                          (world x8146 x8143)))))
                     g8142)))
                 (handle-key
                  (lambda (w ke)
                    (letrec*
                     ((g8148
                       (letrec*
                        ((x-cnd8149
                          (begin
                            (write '(funapp 1946 37))
                            (display "\n")
                            (equal? ke "w"))))
                        (if x-cnd8149
                          (letrec*
                           ((g8150
                             (begin
                               (write '(funapp 1948 44))
                               (display "\n")
                               (world-change-dir
                                w
                                (begin
                                  (write '(funapp 1948 63))
                                  (display "\n")
                                  'up)))))
                           g8150)
                          (letrec*
                           ((x-cnd8151
                             (begin
                               (write '(funapp 1950 40))
                               (display "\n")
                               (equal? ke "s"))))
                           (if x-cnd8151
                             (letrec*
                              ((g8152
                                (begin
                                  (write '(funapp 1953 39))
                                  (display "\n")
                                  (world-change-dir
                                   w
                                   (begin
                                     (write '(funapp 1953 58))
                                     (display "\n")
                                     'down)))))
                              g8152)
                             (letrec*
                              ((x-cnd8153
                                (begin
                                  (write '(funapp 1956 43))
                                  (display "\n")
                                  (equal? ke "a"))))
                              (if x-cnd8153
                                (letrec*
                                 ((g8154
                                   (begin
                                     (write '(funapp 1959 42))
                                     (display "\n")
                                     (world-change-dir
                                      w
                                      (begin
                                        (write '(funapp 1959 61))
                                        (display "\n")
                                        'left)))))
                                 g8154)
                                (letrec*
                                 ((x-cnd8155
                                   (begin
                                     (write '(funapp 1962 46))
                                     (display "\n")
                                     (equal? ke "d"))))
                                 (if x-cnd8155
                                   (letrec*
                                    ((g8156
                                      (begin
                                        (write '(funapp 1965 45))
                                        (display "\n")
                                        (world-change-dir
                                         w
                                         (begin
                                           (write '(funapp 1965 64))
                                           (display "\n")
                                           'right)))))
                                    g8156)
                                   (letrec* ((g8157 w)) g8157)))))))))))
                     g8148)))
                 (game-over?
                  (lambda (w)
                    (letrec*
                     ((g8158
                       (letrec*
                        ((val7261
                          (letrec*
                           ((x8159
                             (begin
                               (write '(funapp 1976 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1977 28))
                             (display "\n")
                             (snake-wall-collide? x8159)))))
                        (letrec*
                         ((g8160
                           (if val7261
                             val7261
                             (letrec*
                              ((x8161
                                (begin
                                  (write '(funapp 1983 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1984 31))
                                (display "\n")
                                (snake-self-collide? x8161))))))
                         g8160))))
                     g8158)))
                 (world->scene
                  (lambda (w)
                    (letrec*
                     ((g8162
                       (letrec*
                        ((x8165
                          (begin
                            (write '(funapp 1992 33))
                            (display "\n")
                            (world-snake w)))
                         (x8163
                          (letrec*
                           ((x8164
                             (begin
                               (write '(funapp 1995 36))
                               (display "\n")
                               (world-food w))))
                           (begin
                             (write '(funapp 1996 28))
                             (display "\n")
                             (food+scene x8164 BACKGROUND)))))
                        (begin
                          (write '(funapp 1997 25))
                          (display "\n")
                          (snake+scene x8165 x8163)))))
                     g8162)))
                 (food+scene
                  (lambda (f scn)
                    (letrec*
                     ((g8166
                       (letrec*
                        ((x8168
                          (begin
                            (write '(funapp 2004 33))
                            (display "\n")
                            (posn-x f)))
                         (x8167
                          (begin
                            (write '(funapp 2004 52))
                            (display "\n")
                            (posn-y f))))
                        (begin
                          (write '(funapp 2005 25))
                          (display "\n")
                          (place-image-on-grid FOOD-IMAGE x8168 x8167 scn)))))
                     g8166)))
                 (place-image-on-grid
                  (lambda (img x y scn)
                    (letrec*
                     ((g8169
                       (letrec*
                        ((x8172
                          (begin
                            (write '(funapp 2012 33))
                            (display "\n")
                            (* GRID-SIZE x)))
                         (x8170
                          (letrec*
                           ((x8171
                             (begin
                               (write '(funapp 2015 36))
                               (display "\n")
                               (* GRID-SIZE y))))
                           (begin
                             (write '(funapp 2016 28))
                             (display "\n")
                             (- BOARD-HEIGHT-PIXELS x8171)))))
                        (begin
                          (write '(funapp 2017 25))
                          (display "\n")
                          (place-image img x8172 x8170 scn)))))
                     g8169)))
                 (snake+scene
                  (lambda (snk scn)
                    (letrec*
                     ((g8173
                       (letrec*
                        ((x8174
                          (begin
                            (write '(funapp 2024 33))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 2025 25))
                          (display "\n")
                          (segments+scene x8174 scn)))))
                     g8173)))
                 (segments+scene
                  (lambda (segs scn)
                    (letrec*
                     ((g8175
                       (letrec*
                        ((x-cnd8176
                          (begin
                            (write '(funapp 2032 37))
                            (display "\n")
                            (empty? segs))))
                        (if x-cnd8176
                          (letrec* ((g8177 scn)) g8177)
                          (letrec*
                           ((g8178
                             (letrec*
                              ((x8181
                                (begin
                                  (write '(funapp 2038 39))
                                  (display "\n")
                                  (cdr segs)))
                               (x8179
                                (letrec*
                                 ((x8180
                                   (begin
                                     (write '(funapp 2041 42))
                                     (display "\n")
                                     (car segs))))
                                 (begin
                                   (write '(funapp 2042 34))
                                   (display "\n")
                                   (segment+scene x8180 scn)))))
                              (begin
                                (write '(funapp 2043 31))
                                (display "\n")
                                (segments+scene x8181 x8179)))))
                           g8178)))))
                     g8175)))
                 (segment+scene
                  (lambda (seg scn)
                    (letrec*
                     ((g8182
                       (letrec*
                        ((x8184
                          (begin
                            (write '(funapp 2051 33))
                            (display "\n")
                            (posn-x seg)))
                         (x8183
                          (begin
                            (write '(funapp 2051 54))
                            (display "\n")
                            (posn-y seg))))
                        (begin
                          (write '(funapp 2052 25))
                          (display "\n")
                          (place-image-on-grid
                           SEGMENT-IMAGE
                           x8184
                           x8183
                           scn)))))
                     g8182))))
                (letrec*
                 ((g8185
                   (letrec*
                    ((x8219
                      (begin
                        (write '(funapp 2058 23))
                        (display "\n")
                        ((lambda (j7361 k7362 f7363)
                           (letrec*
                            ((g8220
                              (lambda (g7359 g7360)
                                (letrec*
                                 ((g8221
                                   (letrec*
                                    ((x8222
                                      (letrec*
                                       ((x8224
                                         (begin
                                           (write '(funapp 2067 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7359)))
                                        (x8223
                                         (begin
                                           (write '(funapp 2068 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7360))))
                                       (begin
                                         (write '(funapp 2069 38))
                                         (display "\n")
                                         (f7363 x8224 x8223)))))
                                    (begin
                                      (write '(funapp 2070 35))
                                      (display "\n")
                                      (boolean?/c j7361 k7362 x8222)))))
                                 g8221))))
                            g8220))
                         (begin
                           (write '(funapp 2073 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2074 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8214
                      (letrec*
                       ((x8215
                         (letrec*
                          ((x8218 (input))
                           (x8216
                            (letrec*
                             ((x8217 (input)))
                             (begin
                               (write '(funapp 2082 56))
                               (display "\n")
                               (cons
                                x8217
                                (begin
                                  (write '(funapp 2082 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2083 27))
                            (display "\n")
                            (cons x8218 x8216)))))
                       (begin
                         (write '(funapp 2084 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2084 29))
                            (display "\n")
                            'posn)
                          x8215))))
                     (x8209
                      (letrec*
                       ((x8210
                         (letrec*
                          ((x8213 (input))
                           (x8211
                            (letrec*
                             ((x8212 (input)))
                             (begin
                               (write '(funapp 2091 56))
                               (display "\n")
                               (cons
                                x8212
                                (begin
                                  (write '(funapp 2091 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2092 27))
                            (display "\n")
                            (cons x8213 x8211)))))
                       (begin
                         (write '(funapp 2093 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2093 29))
                            (display "\n")
                            'posn)
                          x8210)))))
                    (begin
                      (write '(funapp 2094 21))
                      (display "\n")
                      (x8219 x8214 x8209))))
                  (g8186
                   (begin
                     (write '(funapp 2095 26))
                     (display "\n")
                     (WORLD/C
                      (begin (write '(funapp 2095 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2095 42))
                        (display "\n")
                        'importer)
                      WORLD)))
                  (g8187
                   (begin
                     (write '(funapp 2096 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2096 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2096 42))
                        (display "\n")
                        'importer)
                      BACKGROUND)))
                  (g8188
                   (begin
                     (write '(funapp 2097 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2097 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2097 42))
                        (display "\n")
                        'importer)
                      FOOD-IMAGE)))
                  (g8189
                   (begin
                     (write '(funapp 2098 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2098 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2098 42))
                        (display "\n")
                        'importer)
                      SEGMENT-IMAGE)))
                  (g8190
                   (begin
                     (write '(funapp 2099 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2099 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2099 40))
                        (display "\n")
                        'importer)
                      GRID-SIZE)))
                  (g8191
                   (begin
                     (write '(funapp 2100 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2100 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2100 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT-PIXELS)))
                  (g8192
                   (begin
                     (write '(funapp 2101 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2101 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2101 40))
                        (display "\n")
                        'importer)
                      BOARD-WIDTH)))
                  (g8193
                   (begin
                     (write '(funapp 2102 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2102 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2102 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT)))
                  (g8194
                   (letrec*
                    ((x8230
                      (begin
                        (write '(funapp 2106 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8231
                              (lambda (g7364)
                                (letrec*
                                 ((g8232
                                   (letrec*
                                    ((x8233
                                      (letrec*
                                       ((x8234
                                         (begin
                                           (write '(funapp 2115 46))
                                           (display "\n")
                                           (SNAKE/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2116 38))
                                         (display "\n")
                                         (f7367 x8234)))))
                                    (begin
                                      (write '(funapp 2117 35))
                                      (display "\n")
                                      (boolean?/c j7365 k7366 x8233)))))
                                 g8232))))
                            g8231))
                         (begin
                           (write '(funapp 2120 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2121 23))
                           (display "\n")
                           'importer)
                         snake-wall-collide?)))
                     (x8225
                      (letrec*
                       ((x8226
                         (letrec*
                          ((x8229 (input))
                           (x8227
                            (letrec*
                             ((x8228 (input)))
                             (begin
                               (write '(funapp 2129 56))
                               (display "\n")
                               (cons
                                x8228
                                (begin
                                  (write '(funapp 2129 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2130 27))
                            (display "\n")
                            (cons x8229 x8227)))))
                       (begin
                         (write '(funapp 2131 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2131 29))
                            (display "\n")
                            'snake)
                          x8226)))))
                    (begin
                      (write '(funapp 2132 21))
                      (display "\n")
                      (x8230 x8225))))
                  (g8195
                   (letrec*
                    ((x8240
                      (begin
                        (write '(funapp 2136 23))
                        (display "\n")
                        ((lambda (j7369 k7370 f7371)
                           (letrec*
                            ((g8241
                              (lambda (g7368)
                                (letrec*
                                 ((g8242
                                   (letrec*
                                    ((x8243
                                      (letrec*
                                       ((x8244
                                         (begin
                                           (write '(funapp 2145 46))
                                           (display "\n")
                                           (SNAKE/C j7369 k7370 g7368))))
                                       (begin
                                         (write '(funapp 2146 38))
                                         (display "\n")
                                         (f7371 x8244)))))
                                    (begin
                                      (write '(funapp 2147 35))
                                      (display "\n")
                                      (boolean?/c j7369 k7370 x8243)))))
                                 g8242))))
                            g8241))
                         (begin
                           (write '(funapp 2150 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2151 23))
                           (display "\n")
                           'importer)
                         snake-self-collide?)))
                     (x8235
                      (letrec*
                       ((x8236
                         (letrec*
                          ((x8239 (input))
                           (x8237
                            (letrec*
                             ((x8238 (input)))
                             (begin
                               (write '(funapp 2159 56))
                               (display "\n")
                               (cons
                                x8238
                                (begin
                                  (write '(funapp 2159 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2160 27))
                            (display "\n")
                            (cons x8239 x8237)))))
                       (begin
                         (write '(funapp 2161 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2161 29))
                            (display "\n")
                            'snake)
                          x8236)))))
                    (begin
                      (write '(funapp 2162 21))
                      (display "\n")
                      (x8240 x8235))))
                  (g8196
                   (letrec*
                    ((x8246
                      (begin
                        (write '(funapp 2166 23))
                        (display "\n")
                        ((lambda (j7373 k7374 f7375)
                           (letrec*
                            ((g8247
                              (lambda (g7372)
                                (letrec*
                                 ((g8248
                                   (letrec*
                                    ((x8253
                                      (begin
                                        (write '(funapp 2173 43))
                                        (display "\n")
                                        (listof POSN/C)))
                                     (x8249
                                      (letrec*
                                       ((x8250
                                         (letrec*
                                          ((x8251
                                            (letrec*
                                             ((x8252
                                               (begin
                                                 (write '(funapp 2180 52))
                                                 (display "\n")
                                                 (listof POSN/C))))
                                             (begin
                                               (write '(funapp 2181 44))
                                               (display "\n")
                                               (and/c cons?/c x8252)))))
                                          (begin
                                            (write '(funapp 2182 41))
                                            (display "\n")
                                            (x8251 j7373 k7374 g7372)))))
                                       (begin
                                         (write '(funapp 2183 38))
                                         (display "\n")
                                         (f7375 x8250)))))
                                    (begin
                                      (write '(funapp 2184 35))
                                      (display "\n")
                                      (x8253 j7373 k7374 x8249)))))
                                 g8248))))
                            g8247))
                         (begin
                           (write '(funapp 2187 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2188 23))
                           (display "\n")
                           'importer)
                         cut-tail)))
                     (x8245 (input)))
                    (begin
                      (write '(funapp 2191 21))
                      (display "\n")
                      (x8246 x8245))))
                  (g8197
                   (letrec*
                    ((x8259
                      (begin
                        (write '(funapp 2195 23))
                        (display "\n")
                        ((lambda (j7377 k7378 f7379)
                           (letrec*
                            ((g8260
                              (lambda (g7376)
                                (letrec*
                                 ((g8261
                                   (letrec*
                                    ((x8262
                                      (letrec*
                                       ((x8263
                                         (begin
                                           (write '(funapp 2204 46))
                                           (display "\n")
                                           (SNAKE/C j7377 k7378 g7376))))
                                       (begin
                                         (write '(funapp 2205 38))
                                         (display "\n")
                                         (f7379 x8263)))))
                                    (begin
                                      (write '(funapp 2206 35))
                                      (display "\n")
                                      (SNAKE/C j7377 k7378 x8262)))))
                                 g8261))))
                            g8260))
                         (begin
                           (write '(funapp 2209 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2210 23))
                           (display "\n")
                           'importer)
                         snake-slither)))
                     (x8254
                      (letrec*
                       ((x8255
                         (letrec*
                          ((x8258 (input))
                           (x8256
                            (letrec*
                             ((x8257 (input)))
                             (begin
                               (write '(funapp 2218 56))
                               (display "\n")
                               (cons
                                x8257
                                (begin
                                  (write '(funapp 2218 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2219 27))
                            (display "\n")
                            (cons x8258 x8256)))))
                       (begin
                         (write '(funapp 2220 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2220 29))
                            (display "\n")
                            'snake)
                          x8255)))))
                    (begin
                      (write '(funapp 2221 21))
                      (display "\n")
                      (x8259 x8254))))
                  (g8198
                   (letrec*
                    ((x8269
                      (begin
                        (write '(funapp 2225 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8270
                              (lambda (g7380)
                                (letrec*
                                 ((g8271
                                   (letrec*
                                    ((x8272
                                      (letrec*
                                       ((x8273
                                         (begin
                                           (write '(funapp 2234 46))
                                           (display "\n")
                                           (SNAKE/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2235 38))
                                         (display "\n")
                                         (f7383 x8273)))))
                                    (begin
                                      (write '(funapp 2236 35))
                                      (display "\n")
                                      (SNAKE/C j7381 k7382 x8272)))))
                                 g8271))))
                            g8270))
                         (begin
                           (write '(funapp 2239 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2240 23))
                           (display "\n")
                           'importer)
                         snake-grow)))
                     (x8264
                      (letrec*
                       ((x8265
                         (letrec*
                          ((x8268 (input))
                           (x8266
                            (letrec*
                             ((x8267 (input)))
                             (begin
                               (write '(funapp 2248 56))
                               (display "\n")
                               (cons
                                x8267
                                (begin
                                  (write '(funapp 2248 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2249 27))
                            (display "\n")
                            (cons x8268 x8266)))))
                       (begin
                         (write '(funapp 2250 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2250 29))
                            (display "\n")
                            'snake)
                          x8265)))))
                    (begin
                      (write '(funapp 2251 21))
                      (display "\n")
                      (x8269 x8264))))
                  (g8199
                   (letrec*
                    ((x8288
                      (begin
                        (write '(funapp 2255 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8289
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8290
                                   (letrec*
                                    ((x8291
                                      (letrec*
                                       ((x8293
                                         (begin
                                           (write '(funapp 2264 46))
                                           (display "\n")
                                           (WORLD/C j7386 k7387 g7384)))
                                        (x8292
                                         (begin
                                           (write '(funapp 2265 46))
                                           (display "\n")
                                           (DIR/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2266 38))
                                         (display "\n")
                                         (f7388 x8293 x8292)))))
                                    (begin
                                      (write '(funapp 2267 35))
                                      (display "\n")
                                      (WORLD/C j7386 k7387 x8291)))))
                                 g8290))))
                            g8289))
                         (begin
                           (write '(funapp 2270 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2271 23))
                           (display "\n")
                           'importer)
                         world-change-dir)))
                     (x8275
                      (letrec*
                       ((x8276
                         (letrec*
                          ((x8283
                            (letrec*
                             ((x8284
                               (letrec*
                                ((x8287 (input))
                                 (x8285
                                  (letrec*
                                   ((x8286 (input)))
                                   (begin
                                     (write '(funapp 2285 36))
                                     (display "\n")
                                     (cons
                                      x8286
                                      (begin
                                        (write '(funapp 2285 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2286 33))
                                  (display "\n")
                                  (cons x8287 x8285)))))
                             (begin
                               (write '(funapp 2287 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2287 35))
                                  (display "\n")
                                  'snake)
                                x8284))))
                           (x8277
                            (letrec*
                             ((x8278
                               (letrec*
                                ((x8279
                                  (letrec*
                                   ((x8282 (input))
                                    (x8280
                                     (letrec*
                                      ((x8281 (input)))
                                      (begin
                                        (write '(funapp 2298 39))
                                        (display "\n")
                                        (cons
                                         x8281
                                         (begin
                                           (write '(funapp 2298 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2299 36))
                                     (display "\n")
                                     (cons x8282 x8280)))))
                                (begin
                                  (write '(funapp 2300 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2300 38))
                                     (display "\n")
                                     'posn)
                                   x8279)))))
                             (begin
                               (write '(funapp 2301 30))
                               (display "\n")
                               (cons
                                x8278
                                (begin
                                  (write '(funapp 2301 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2302 27))
                            (display "\n")
                            (cons x8283 x8277)))))
                       (begin
                         (write '(funapp 2303 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2303 29))
                            (display "\n")
                            'world)
                          x8276))))
                     (x8274 (input)))
                    (begin
                      (write '(funapp 2305 21))
                      (display "\n")
                      (x8288 x8275 x8274))))
                  (g8200
                   (letrec*
                    ((x8307
                      (begin
                        (write '(funapp 2309 23))
                        (display "\n")
                        ((lambda (j7390 k7391 f7392)
                           (letrec*
                            ((g8308
                              (lambda (g7389)
                                (letrec*
                                 ((g8309
                                   (letrec*
                                    ((x8310
                                      (letrec*
                                       ((x8311
                                         (begin
                                           (write '(funapp 2318 46))
                                           (display "\n")
                                           (WORLD/C j7390 k7391 g7389))))
                                       (begin
                                         (write '(funapp 2319 38))
                                         (display "\n")
                                         (f7392 x8311)))))
                                    (begin
                                      (write '(funapp 2320 35))
                                      (display "\n")
                                      (WORLD/C j7390 k7391 x8310)))))
                                 g8309))))
                            g8308))
                         (begin
                           (write '(funapp 2323 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2324 23))
                           (display "\n")
                           'importer)
                         world->world)))
                     (x8294
                      (letrec*
                       ((x8295
                         (letrec*
                          ((x8302
                            (letrec*
                             ((x8303
                               (letrec*
                                ((x8306 (input))
                                 (x8304
                                  (letrec*
                                   ((x8305 (input)))
                                   (begin
                                     (write '(funapp 2338 36))
                                     (display "\n")
                                     (cons
                                      x8305
                                      (begin
                                        (write '(funapp 2338 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2339 33))
                                  (display "\n")
                                  (cons x8306 x8304)))))
                             (begin
                               (write '(funapp 2340 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2340 35))
                                  (display "\n")
                                  'snake)
                                x8303))))
                           (x8296
                            (letrec*
                             ((x8297
                               (letrec*
                                ((x8298
                                  (letrec*
                                   ((x8301 (input))
                                    (x8299
                                     (letrec*
                                      ((x8300 (input)))
                                      (begin
                                        (write '(funapp 2351 39))
                                        (display "\n")
                                        (cons
                                         x8300
                                         (begin
                                           (write '(funapp 2351 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2352 36))
                                     (display "\n")
                                     (cons x8301 x8299)))))
                                (begin
                                  (write '(funapp 2353 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2353 38))
                                     (display "\n")
                                     'posn)
                                   x8298)))))
                             (begin
                               (write '(funapp 2354 30))
                               (display "\n")
                               (cons
                                x8297
                                (begin
                                  (write '(funapp 2354 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2355 27))
                            (display "\n")
                            (cons x8302 x8296)))))
                       (begin
                         (write '(funapp 2356 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2356 29))
                            (display "\n")
                            'world)
                          x8295)))))
                    (begin
                      (write '(funapp 2357 21))
                      (display "\n")
                      (x8307 x8294))))
                  (g8201
                   (letrec*
                    ((x8326
                      (begin
                        (write '(funapp 2361 23))
                        (display "\n")
                        ((lambda (j7395 k7396 f7397)
                           (letrec*
                            ((g8327
                              (lambda (g7393 g7394)
                                (letrec*
                                 ((g8328
                                   (letrec*
                                    ((x8329
                                      (letrec*
                                       ((x8331
                                         (begin
                                           (write '(funapp 2370 46))
                                           (display "\n")
                                           (WORLD/C j7395 k7396 g7393)))
                                        (x8330
                                         (begin
                                           (write '(funapp 2371 46))
                                           (display "\n")
                                           (string?/c j7395 k7396 g7394))))
                                       (begin
                                         (write '(funapp 2372 38))
                                         (display "\n")
                                         (f7397 x8331 x8330)))))
                                    (begin
                                      (write '(funapp 2373 35))
                                      (display "\n")
                                      (WORLD/C j7395 k7396 x8329)))))
                                 g8328))))
                            g8327))
                         (begin
                           (write '(funapp 2376 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2377 23))
                           (display "\n")
                           'importer)
                         handle-key)))
                     (x8313
                      (letrec*
                       ((x8314
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
                                     (write '(funapp 2391 36))
                                     (display "\n")
                                     (cons
                                      x8324
                                      (begin
                                        (write '(funapp 2391 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2392 33))
                                  (display "\n")
                                  (cons x8325 x8323)))))
                             (begin
                               (write '(funapp 2393 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2393 35))
                                  (display "\n")
                                  'snake)
                                x8322))))
                           (x8315
                            (letrec*
                             ((x8316
                               (letrec*
                                ((x8317
                                  (letrec*
                                   ((x8320 (input))
                                    (x8318
                                     (letrec*
                                      ((x8319 (input)))
                                      (begin
                                        (write '(funapp 2404 39))
                                        (display "\n")
                                        (cons
                                         x8319
                                         (begin
                                           (write '(funapp 2404 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2405 36))
                                     (display "\n")
                                     (cons x8320 x8318)))))
                                (begin
                                  (write '(funapp 2406 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2406 38))
                                     (display "\n")
                                     'posn)
                                   x8317)))))
                             (begin
                               (write '(funapp 2407 30))
                               (display "\n")
                               (cons
                                x8316
                                (begin
                                  (write '(funapp 2407 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2408 27))
                            (display "\n")
                            (cons x8321 x8315)))))
                       (begin
                         (write '(funapp 2409 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2409 29))
                            (display "\n")
                            'world)
                          x8314))))
                     (x8312 (input)))
                    (begin
                      (write '(funapp 2411 21))
                      (display "\n")
                      (x8326 x8313 x8312))))
                  (g8202
                   (letrec*
                    ((x8345
                      (begin
                        (write '(funapp 2415 23))
                        (display "\n")
                        ((lambda (j7399 k7400 f7401)
                           (letrec*
                            ((g8346
                              (lambda (g7398)
                                (letrec*
                                 ((g8347
                                   (letrec*
                                    ((x8348
                                      (letrec*
                                       ((x8349
                                         (begin
                                           (write '(funapp 2424 46))
                                           (display "\n")
                                           (WORLD/C j7399 k7400 g7398))))
                                       (begin
                                         (write '(funapp 2425 38))
                                         (display "\n")
                                         (f7401 x8349)))))
                                    (begin
                                      (write '(funapp 2426 35))
                                      (display "\n")
                                      (boolean?/c j7399 k7400 x8348)))))
                                 g8347))))
                            g8346))
                         (begin
                           (write '(funapp 2429 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2430 23))
                           (display "\n")
                           'importer)
                         game-over?)))
                     (x8332
                      (letrec*
                       ((x8333
                         (letrec*
                          ((x8340
                            (letrec*
                             ((x8341
                               (letrec*
                                ((x8344 (input))
                                 (x8342
                                  (letrec*
                                   ((x8343 (input)))
                                   (begin
                                     (write '(funapp 2444 36))
                                     (display "\n")
                                     (cons
                                      x8343
                                      (begin
                                        (write '(funapp 2444 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2445 33))
                                  (display "\n")
                                  (cons x8344 x8342)))))
                             (begin
                               (write '(funapp 2446 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2446 35))
                                  (display "\n")
                                  'snake)
                                x8341))))
                           (x8334
                            (letrec*
                             ((x8335
                               (letrec*
                                ((x8336
                                  (letrec*
                                   ((x8339 (input))
                                    (x8337
                                     (letrec*
                                      ((x8338 (input)))
                                      (begin
                                        (write '(funapp 2457 39))
                                        (display "\n")
                                        (cons
                                         x8338
                                         (begin
                                           (write '(funapp 2457 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2458 36))
                                     (display "\n")
                                     (cons x8339 x8337)))))
                                (begin
                                  (write '(funapp 2459 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2459 38))
                                     (display "\n")
                                     'posn)
                                   x8336)))))
                             (begin
                               (write '(funapp 2460 30))
                               (display "\n")
                               (cons
                                x8335
                                (begin
                                  (write '(funapp 2460 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2461 27))
                            (display "\n")
                            (cons x8340 x8334)))))
                       (begin
                         (write '(funapp 2462 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2462 29))
                            (display "\n")
                            'world)
                          x8333)))))
                    (begin
                      (write '(funapp 2463 21))
                      (display "\n")
                      (x8345 x8332))))
                  (g8203
                   (letrec*
                    ((x8363
                      (begin
                        (write '(funapp 2467 23))
                        (display "\n")
                        ((lambda (j7403 k7404 f7405)
                           (letrec*
                            ((g8364
                              (lambda (g7402)
                                (letrec*
                                 ((g8365
                                   (letrec*
                                    ((x8366
                                      (letrec*
                                       ((x8367
                                         (begin
                                           (write '(funapp 2476 46))
                                           (display "\n")
                                           (WORLD/C j7403 k7404 g7402))))
                                       (begin
                                         (write '(funapp 2477 38))
                                         (display "\n")
                                         (f7405 x8367)))))
                                    (begin
                                      (write '(funapp 2478 35))
                                      (display "\n")
                                      (image/c j7403 k7404 x8366)))))
                                 g8365))))
                            g8364))
                         (begin
                           (write '(funapp 2481 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2482 23))
                           (display "\n")
                           'importer)
                         world->scene)))
                     (x8350
                      (letrec*
                       ((x8351
                         (letrec*
                          ((x8358
                            (letrec*
                             ((x8359
                               (letrec*
                                ((x8362 (input))
                                 (x8360
                                  (letrec*
                                   ((x8361 (input)))
                                   (begin
                                     (write '(funapp 2496 36))
                                     (display "\n")
                                     (cons
                                      x8361
                                      (begin
                                        (write '(funapp 2496 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2497 33))
                                  (display "\n")
                                  (cons x8362 x8360)))))
                             (begin
                               (write '(funapp 2498 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2498 35))
                                  (display "\n")
                                  'snake)
                                x8359))))
                           (x8352
                            (letrec*
                             ((x8353
                               (letrec*
                                ((x8354
                                  (letrec*
                                   ((x8357 (input))
                                    (x8355
                                     (letrec*
                                      ((x8356 (input)))
                                      (begin
                                        (write '(funapp 2509 39))
                                        (display "\n")
                                        (cons
                                         x8356
                                         (begin
                                           (write '(funapp 2509 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2510 36))
                                     (display "\n")
                                     (cons x8357 x8355)))))
                                (begin
                                  (write '(funapp 2511 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2511 38))
                                     (display "\n")
                                     'posn)
                                   x8354)))))
                             (begin
                               (write '(funapp 2512 30))
                               (display "\n")
                               (cons
                                x8353
                                (begin
                                  (write '(funapp 2512 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2513 27))
                            (display "\n")
                            (cons x8358 x8352)))))
                       (begin
                         (write '(funapp 2514 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2514 29))
                            (display "\n")
                            'world)
                          x8351)))))
                    (begin
                      (write '(funapp 2515 21))
                      (display "\n")
                      (x8363 x8350))))
                  (g8204
                   (letrec*
                    ((x8374
                      (begin
                        (write '(funapp 2519 23))
                        (display "\n")
                        ((lambda (j7408 k7409 f7410)
                           (letrec*
                            ((g8375
                              (lambda (g7406 g7407)
                                (letrec*
                                 ((g8376
                                   (letrec*
                                    ((x8377
                                      (letrec*
                                       ((x8379
                                         (begin
                                           (write '(funapp 2528 46))
                                           (display "\n")
                                           (POSN/C j7408 k7409 g7406)))
                                        (x8378
                                         (begin
                                           (write '(funapp 2529 46))
                                           (display "\n")
                                           (image/c j7408 k7409 g7407))))
                                       (begin
                                         (write '(funapp 2530 38))
                                         (display "\n")
                                         (f7410 x8379 x8378)))))
                                    (begin
                                      (write '(funapp 2531 35))
                                      (display "\n")
                                      (image/c j7408 k7409 x8377)))))
                                 g8376))))
                            g8375))
                         (begin
                           (write '(funapp 2534 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2535 23))
                           (display "\n")
                           'importer)
                         food+scene)))
                     (x8369
                      (letrec*
                       ((x8370
                         (letrec*
                          ((x8373 (input))
                           (x8371
                            (letrec*
                             ((x8372 (input)))
                             (begin
                               (write '(funapp 2543 56))
                               (display "\n")
                               (cons
                                x8372
                                (begin
                                  (write '(funapp 2543 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2544 27))
                            (display "\n")
                            (cons x8373 x8371)))))
                       (begin
                         (write '(funapp 2545 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2545 29))
                            (display "\n")
                            'posn)
                          x8370))))
                     (x8368
                      (begin
                        (write '(funapp 2546 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2546 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2546 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2547 21))
                      (display "\n")
                      (x8374 x8369 x8368))))
                  (g8205
                   (letrec*
                    ((x8384
                      (begin
                        (write '(funapp 2551 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8385
                              (lambda (g7411 g7412 g7413 g7414)
                                (letrec*
                                 ((g8386
                                   (letrec*
                                    ((x8387
                                      (letrec*
                                       ((x8391
                                         (begin
                                           (write '(funapp 2560 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7411)))
                                        (x8390
                                         (begin
                                           (write '(funapp 2561 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7412)))
                                        (x8389
                                         (begin
                                           (write '(funapp 2562 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7413)))
                                        (x8388
                                         (begin
                                           (write '(funapp 2563 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2564 38))
                                         (display "\n")
                                         (f7417 x8391 x8390 x8389 x8388)))))
                                    (begin
                                      (write '(funapp 2565 35))
                                      (display "\n")
                                      (image/c j7415 k7416 x8387)))))
                                 g8386))))
                            g8385))
                         (begin
                           (write '(funapp 2568 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2569 23))
                           (display "\n")
                           'importer)
                         place-image-on-grid)))
                     (x8383
                      (begin
                        (write '(funapp 2571 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2571 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2571 41))
                           (display "\n")
                           '()))))
                     (x8382 (input))
                     (x8381 (input))
                     (x8380
                      (begin
                        (write '(funapp 2574 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2574 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2574 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2575 21))
                      (display "\n")
                      (x8384 x8383 x8382 x8381 x8380))))
                  (g8206
                   (letrec*
                    ((x8398
                      (begin
                        (write '(funapp 2579 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8399
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8400
                                   (letrec*
                                    ((x8401
                                      (letrec*
                                       ((x8403
                                         (begin
                                           (write '(funapp 2588 46))
                                           (display "\n")
                                           (SNAKE/C j7420 k7421 g7418)))
                                        (x8402
                                         (begin
                                           (write '(funapp 2589 46))
                                           (display "\n")
                                           (image/c j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2590 38))
                                         (display "\n")
                                         (f7422 x8403 x8402)))))
                                    (begin
                                      (write '(funapp 2591 35))
                                      (display "\n")
                                      (image/c j7420 k7421 x8401)))))
                                 g8400))))
                            g8399))
                         (begin
                           (write '(funapp 2594 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2595 23))
                           (display "\n")
                           'importer)
                         snake+scene)))
                     (x8393
                      (letrec*
                       ((x8394
                         (letrec*
                          ((x8397 (input))
                           (x8395
                            (letrec*
                             ((x8396 (input)))
                             (begin
                               (write '(funapp 2603 56))
                               (display "\n")
                               (cons
                                x8396
                                (begin
                                  (write '(funapp 2603 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2604 27))
                            (display "\n")
                            (cons x8397 x8395)))))
                       (begin
                         (write '(funapp 2605 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2605 29))
                            (display "\n")
                            'snake)
                          x8394))))
                     (x8392
                      (begin
                        (write '(funapp 2606 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2606 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2606 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2607 21))
                      (display "\n")
                      (x8398 x8393 x8392))))
                  (g8207
                   (letrec*
                    ((x8406
                      (begin
                        (write '(funapp 2611 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8407
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8408
                                   (letrec*
                                    ((x8409
                                      (letrec*
                                       ((x8411
                                         (letrec*
                                          ((x8412
                                            (begin
                                              (write '(funapp 2622 49))
                                              (display "\n")
                                              (listof POSN/C))))
                                          (begin
                                            (write '(funapp 2623 41))
                                            (display "\n")
                                            (x8412 j7425 k7426 g7423))))
                                        (x8410
                                         (begin
                                           (write '(funapp 2624 46))
                                           (display "\n")
                                           (image/c j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2625 38))
                                         (display "\n")
                                         (f7427 x8411 x8410)))))
                                    (begin
                                      (write '(funapp 2626 35))
                                      (display "\n")
                                      (image/c j7425 k7426 x8409)))))
                                 g8408))))
                            g8407))
                         (begin
                           (write '(funapp 2629 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2630 23))
                           (display "\n")
                           'importer)
                         segments+scene)))
                     (x8405 (input))
                     (x8404
                      (begin
                        (write '(funapp 2633 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2633 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2633 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2634 21))
                      (display "\n")
                      (x8406 x8405 x8404))))
                  (g8208
                   (letrec*
                    ((x8419
                      (begin
                        (write '(funapp 2638 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8420
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8421
                                   (letrec*
                                    ((x8422
                                      (letrec*
                                       ((x8424
                                         (begin
                                           (write '(funapp 2647 46))
                                           (display "\n")
                                           (POSN/C j7430 k7431 g7428)))
                                        (x8423
                                         (begin
                                           (write '(funapp 2648 46))
                                           (display "\n")
                                           (image/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 2649 38))
                                         (display "\n")
                                         (f7432 x8424 x8423)))))
                                    (begin
                                      (write '(funapp 2650 35))
                                      (display "\n")
                                      (image/c j7430 k7431 x8422)))))
                                 g8421))))
                            g8420))
                         (begin
                           (write '(funapp 2653 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2654 23))
                           (display "\n")
                           'importer)
                         segment+scene)))
                     (x8414
                      (letrec*
                       ((x8415
                         (letrec*
                          ((x8418 (input))
                           (x8416
                            (letrec*
                             ((x8417 (input)))
                             (begin
                               (write '(funapp 2662 56))
                               (display "\n")
                               (cons
                                x8417
                                (begin
                                  (write '(funapp 2662 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2663 27))
                            (display "\n")
                            (cons x8418 x8416)))))
                       (begin
                         (write '(funapp 2664 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2664 29))
                            (display "\n")
                            'posn)
                          x8415))))
                     (x8413
                      (begin
                        (write '(funapp 2665 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2665 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2665 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2666 21))
                      (display "\n")
                      (x8419 x8414 x8413)))))
                 g8208))))
             g7462))))
         g7460)))
      g7459))))
