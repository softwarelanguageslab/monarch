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
                       (if cnd
                         (letrec*
                          ((g7778
                            (begin
                              (write '(funapp 930 43))
                              (display "\n")
                              (proc))))
                          g7778)
                         (if cnd
                           (letrec*
                            ((g7779
                              (letrec*
                               ((x7780
                                 (begin
                                   (write '(funapp 934 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 934 61))
                                 (display "\n")
                                 (proc x7780)))))
                            g7779)
                           (if cnd
                             (letrec*
                              ((g7781
                                (letrec*
                                 ((x7783
                                   (begin
                                     (write '(funapp 940 42))
                                     (display "\n")
                                     (car args)))
                                  (x7782
                                   (begin
                                     (write '(funapp 940 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 941 34))
                                   (display "\n")
                                   (proc x7783 x7782)))))
                              g7781)
                             (if cnd
                               (letrec*
                                ((g7784
                                  (letrec*
                                   ((x7787
                                     (begin
                                       (write '(funapp 947 44))
                                       (display "\n")
                                       (car args)))
                                    (x7786
                                     (begin
                                       (write '(funapp 948 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7785
                                     (begin
                                       (write '(funapp 949 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 950 36))
                                     (display "\n")
                                     (proc x7787 x7786 x7785)))))
                                g7784)
                               (if cnd
                                 (letrec*
                                  ((g7788
                                    (letrec*
                                     ((x7792
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7791
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7790
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7789
                                       (begin
                                         (write '(funapp 959 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 960 38))
                                       (display "\n")
                                       (proc x7792 x7791 x7790 x7789)))))
                                  g7788)
                                 (if cnd
                                   (letrec*
                                    ((g7793
                                      (letrec*
                                       ((x7799
                                         (begin
                                           (write '(funapp 966 48))
                                           (display "\n")
                                           (car args)))
                                        (x7798
                                         (begin
                                           (write '(funapp 967 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7797
                                         (begin
                                           (write '(funapp 968 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7796
                                         (begin
                                           (write '(funapp 969 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7794
                                         (letrec*
                                          ((x7795
                                            (begin
                                              (write '(funapp 972 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 973 43))
                                            (display "\n")
                                            (car x7795)))))
                                       (begin
                                         (write '(funapp 974 40))
                                         (display "\n")
                                         (proc
                                          x7799
                                          x7798
                                          x7797
                                          x7796
                                          x7794)))))
                                    g7793)
                                   (if cnd
                                     (letrec*
                                      ((g7800
                                        (letrec*
                                         ((x7808
                                           (begin
                                             (write '(funapp 980 50))
                                             (display "\n")
                                             (car args)))
                                          (x7807
                                           (begin
                                             (write '(funapp 981 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7806
                                           (begin
                                             (write '(funapp 982 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7805
                                           (begin
                                             (write '(funapp 983 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7803
                                           (letrec*
                                            ((x7804
                                              (begin
                                                (write '(funapp 986 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 987 45))
                                              (display "\n")
                                              (car x7804))))
                                          (x7801
                                           (letrec*
                                            ((x7802
                                              (begin
                                                (write '(funapp 990 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 991 45))
                                              (display "\n")
                                              (cadr x7802)))))
                                         (begin
                                           (write '(funapp 992 42))
                                           (display "\n")
                                           (proc
                                            x7808
                                            x7807
                                            x7806
                                            x7805
                                            x7803
                                            x7801)))))
                                      g7800)
                                     (if cnd
                                       (letrec*
                                        ((g7809
                                          (letrec*
                                           ((x7819
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (car args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7817
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7816
                                             (begin
                                               (write '(funapp 1007 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7814
                                             (letrec*
                                              ((x7815
                                                (begin
                                                  (write '(funapp 1010 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1011 47))
                                                (display "\n")
                                                (car x7815))))
                                            (x7812
                                             (letrec*
                                              ((x7813
                                                (begin
                                                  (write '(funapp 1014 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1015 47))
                                                (display "\n")
                                                (cadr x7813))))
                                            (x7810
                                             (letrec*
                                              ((x7811
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1019 47))
                                                (display "\n")
                                                (caddr x7811)))))
                                           (begin
                                             (write '(funapp 1020 44))
                                             (display "\n")
                                             (proc
                                              x7819
                                              x7818
                                              x7817
                                              x7816
                                              x7814
                                              x7812
                                              x7810)))))
                                        g7809)
                                       (letrec*
                                        ((g7820
                                          (begin
                                            (write '(funapp 1030 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7820)))))))))))
                     g7775)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7821
                       (letrec*
                        ((x7823
                          (begin
                            (write '(funapp 1036 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1036 59))
                          (display "\n")
                          (assert x7823))))
                      (g7822
                       (letrec*
                        ((x-cnd7824
                          (begin
                            (write '(funapp 1039 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7824
                          #f
                          (letrec*
                           ((x-cnd7825
                             (letrec*
                              ((x7826
                                (begin
                                  (write '(funapp 1044 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1044 57))
                                (display "\n")
                                (equal? x7826 e)))))
                           (if x-cnd7825
                             l
                             (letrec*
                              ((x7827
                                (begin
                                  (write '(funapp 1047 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1047 57))
                                (display "\n")
                                (member e x7827)))))))))
                     g7822)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7828
                       (letrec*
                        ((x7829
                          (letrec*
                           ((x7830
                             (letrec*
                              ((x7831
                                (begin
                                  (write '(funapp 1056 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1056 63))
                                (display "\n")
                                (cdr x7831)))))
                           (begin
                             (write '(funapp 1057 28))
                             (display "\n")
                             (cdr x7830)))))
                        (begin
                          (write '(funapp 1058 25))
                          (display "\n")
                          (cdr x7829)))))
                     g7828)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7832
                       (letrec*
                        ((x7833
                          (letrec*
                           ((x7834
                             (letrec*
                              ((x7835
                                (begin
                                  (write '(funapp 1067 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1067 63))
                                (display "\n")
                                (cdr x7835)))))
                           (begin
                             (write '(funapp 1068 28))
                             (display "\n")
                             (cdr x7834)))))
                        (begin
                          (write '(funapp 1069 25))
                          (display "\n")
                          (car x7833)))))
                     g7832)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7836
                       (begin
                         (write '(funapp 1071 55))
                         (display "\n")
                         (random 42))))
                     g7836)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7837
                       (letrec*
                        ((x7839
                          (begin
                            (write '(funapp 1075 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1075 61))
                          (display "\n")
                          (assert x7839))))
                      (g7838
                       (begin
                         (write '(funapp 1076 30))
                         (display "\n")
                         (= x 0))))
                     g7838)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7840
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1083 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7841
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1085 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7841))))
                     g7840)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7842
                       (letrec*
                        ((x7843
                          (begin
                            (write '(funapp 1091 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1091 57))
                          (display "\n")
                          (car x7843)))))
                     g7842)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7844
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7847
                             (begin
                               (write '(funapp 1101 36))
                               (display "\n")
                               (pair? l)))
                            (x7845
                             (letrec*
                              ((x7846
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (list? x7846)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (and x7847 x7845)))))
                        (letrec*
                         ((g7848
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1105 54))
                               (display "\n")
                               (null? l)))))
                         g7848))))
                     g7844)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7849
                       (letrec*
                        ((x7850
                          (letrec*
                           ((x7851
                             (letrec*
                              ((x7852
                                (begin
                                  (write '(funapp 1115 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1115 63))
                                (display "\n")
                                (car x7852)))))
                           (begin
                             (write '(funapp 1116 28))
                             (display "\n")
                             (cdr x7851)))))
                        (begin
                          (write '(funapp 1117 25))
                          (display "\n")
                          (cdr x7850)))))
                     g7849)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7853
                       (letrec*
                        ((x-cnd7854
                          (letrec*
                           ((x7855 #\0))
                           (begin
                             (write '(funapp 1124 60))
                             (display "\n")
                             (char<=? x7855 c)))))
                        (if x-cnd7854
                          (letrec*
                           ((x7856 #\9))
                           (begin
                             (write '(funapp 1126 50))
                             (display "\n")
                             (char<=? c x7856)))
                          #f))))
                     g7853)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7857
                       (letrec*
                        ((x7859
                          (begin
                            (write '(funapp 1133 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1133 59))
                          (display "\n")
                          (assert x7859))))
                      (g7858
                       (letrec*
                        ((x-cnd7860
                          (begin
                            (write '(funapp 1136 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7860
                          #f
                          (letrec*
                           ((x-cnd7861
                             (letrec*
                              ((x7862
                                (begin
                                  (write '(funapp 1141 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1141 58))
                                (display "\n")
                                (eqv? x7862 k)))))
                           (if x-cnd7861
                             (begin
                               (write '(funapp 1143 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7863
                                (begin
                                  (write '(funapp 1144 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1144 57))
                                (display "\n")
                                (assq k x7863)))))))))
                     g7858)))
                 (not (lambda (x) (letrec* ((g7864 (if x #f #t))) g7864)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7865
                       (begin
                         (write '(funapp 1148 52))
                         (display "\n")
                         (append l1 l2))))
                     g7865)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7866
                       (letrec*
                        ((x7868
                          (begin
                            (write '(funapp 1152 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1152 59))
                          (display "\n")
                          (assert x7868))))
                      (g7867
                       (letrec*
                        ((x-cnd7869
                          (begin
                            (write '(funapp 1155 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7869
                          #f
                          (letrec*
                           ((x-cnd7870
                             (letrec*
                              ((x7871
                                (begin
                                  (write '(funapp 1160 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1160 57))
                                (display "\n")
                                (eq? x7871 e)))))
                           (if x-cnd7870
                             l
                             (letrec*
                              ((x7872
                                (begin
                                  (write '(funapp 1163 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1163 57))
                                (display "\n")
                                (memq e x7872)))))))))
                     g7867)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7873
                       (letrec*
                        ((x7874
                          (letrec*
                           ((x7875
                             (letrec*
                              ((x7876
                                (begin
                                  (write '(funapp 1172 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1172 63))
                                (display "\n")
                                (car x7876)))))
                           (begin
                             (write '(funapp 1173 28))
                             (display "\n")
                             (cdr x7875)))))
                        (begin
                          (write '(funapp 1174 25))
                          (display "\n")
                          (car x7874)))))
                     g7873)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7877
                       (letrec*
                        ((x7879
                          (begin
                            (write '(funapp 1179 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1179 59))
                          (display "\n")
                          (assert x7879))))
                      (g7878
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7880
                               (letrec*
                                ((x-cnd7881
                                  (begin
                                    (write '(funapp 1187 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7881
                                  0
                                  (letrec*
                                   ((x7882
                                     (letrec*
                                      ((x7883
                                        (begin
                                          (write '(funapp 1192 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1192 65))
                                        (display "\n")
                                        (rec x7883)))))
                                   (begin
                                     (write '(funapp 1193 36))
                                     (display "\n")
                                     (+ 1 x7882)))))))
                             g7880))))
                        (letrec*
                         ((g7884
                           (begin
                             (write '(funapp 1195 42))
                             (display "\n")
                             (rec l))))
                         g7884))))
                     g7878)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7885
                       (letrec*
                        ((x7888
                          (begin
                            (write '(funapp 1200 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1200 60))
                          (display "\n")
                          (assert x7888))))
                      (g7886
                       (letrec*
                        ((x7889
                          (begin
                            (write '(funapp 1201 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1201 60))
                          (display "\n")
                          (assert x7889))))
                      (g7887
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1204 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7890
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1206 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7890))))
                     g7887)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7891
                       (letrec*
                        ((x7892
                          (begin
                            (write '(funapp 1213 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1213 61))
                          (display "\n")
                          (not x7892)))))
                     g7891)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7893
                       (letrec*
                        ((x7894
                          (letrec*
                           ((x7895
                             (begin
                               (write '(funapp 1220 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1220 60))
                             (display "\n")
                             (car x7895)))))
                        (begin
                          (write '(funapp 1221 25))
                          (display "\n")
                          (cdr x7894)))))
                     g7893)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7896
                       (letrec*
                        ((x7898
                          (begin
                            (write '(funapp 1226 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1226 59))
                          (display "\n")
                          (assert x7898))))
                      (g7897
                       (letrec*
                        ((x-cnd7899
                          (begin
                            (write '(funapp 1229 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7899
                          #f
                          (letrec*
                           ((x-cnd7900
                             (letrec*
                              ((x7901
                                (begin
                                  (write '(funapp 1234 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1234 58))
                                (display "\n")
                                (equal? x7901 k)))))
                           (if x-cnd7900
                             (begin
                               (write '(funapp 1236 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7902
                                (begin
                                  (write '(funapp 1237 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1237 57))
                                (display "\n")
                                (assoc k x7902)))))))))
                     g7897)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7903
                       (letrec*
                        ((x7904
                          (begin
                            (write '(funapp 1242 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1242 57))
                          (display "\n")
                          (car x7904)))))
                     g7903)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7905
                       (letrec*
                        ((x7908
                          (begin
                            (write '(funapp 1247 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1247 60))
                          (display "\n")
                          (assert x7908))))
                      (g7906
                       (letrec*
                        ((x7909
                          (begin
                            (write '(funapp 1248 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1248 60))
                          (display "\n")
                          (assert x7909))))
                      (g7907
                       (letrec*
                        ((x7910
                          (begin
                            (write '(funapp 1249 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1249 65))
                          (display "\n")
                          (not x7910)))))
                     g7907)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7911
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1256 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7912
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1258 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7912))))
                     g7911)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7913
                       (letrec*
                        ((x7916
                          (begin
                            (write '(funapp 1264 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1264 64))
                          (display "\n")
                          (assert x7916))))
                      (g7914
                       (letrec*
                        ((x7917
                          (begin
                            (write '(funapp 1265 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1265 59))
                          (display "\n")
                          (assert x7917))))
                      (g7915
                       (letrec*
                        ((x-cnd7918
                          (begin
                            (write '(funapp 1268 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7918
                          #t
                          (letrec*
                           ((x-cnd7919
                             (begin
                               (write '(funapp 1272 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7919
                             (letrec*
                              ((g7920
                                (letrec*
                                 ((x7922
                                   (begin
                                     (write '(funapp 1275 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1275 66))
                                   (display "\n")
                                   (f x7922))))
                               (g7921
                                (letrec*
                                 ((x7923
                                   (begin
                                     (write '(funapp 1278 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1279 34))
                                   (display "\n")
                                   (for-each f x7923)))))
                              g7921)
                             (begin
                               (write '(funapp 1281 29))
                               (display "\n")
                               '())))))))
                     g7915)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7924
                       (letrec*
                        ((x7926
                          (begin
                            (write '(funapp 1286 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1286 61))
                          (display "\n")
                          (assert x7926))))
                      (g7925
                       (letrec*
                        ((x-cnd7927
                          (begin
                            (write '(funapp 1289 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7927
                          (begin
                            (write '(funapp 1290 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7925)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7928
                       (letrec*
                        ((x7931
                          (begin
                            (write '(funapp 1295 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1295 60))
                          (display "\n")
                          (assert x7931))))
                      (g7929
                       (letrec*
                        ((x7932
                          (begin
                            (write '(funapp 1296 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1296 60))
                          (display "\n")
                          (assert x7932))))
                      (g7930
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1299 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7933
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1301 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7933))))
                     g7930)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7934
                       (letrec*
                        ((x7935
                          (letrec*
                           ((x7936
                             (letrec*
                              ((x7937
                                (begin
                                  (write '(funapp 1311 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1311 63))
                                (display "\n")
                                (cdr x7937)))))
                           (begin
                             (write '(funapp 1312 28))
                             (display "\n")
                             (cdr x7936)))))
                        (begin
                          (write '(funapp 1313 25))
                          (display "\n")
                          (car x7935)))))
                     g7934)))
                 (newline (lambda () (letrec* ((g7938 #f)) g7938)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7939
                       (letrec*
                        ((x7941
                          (letrec*
                           ((x7942
                             (begin
                               (write '(funapp 1321 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1321 60))
                             (display "\n")
                             (abs x7942))))
                         (x7940
                          (begin
                            (write '(funapp 1322 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1323 25))
                          (display "\n")
                          (/ x7941 x7940)))))
                     g7939)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7943
                       (letrec*
                        ((x7945
                          (begin
                            (write '(funapp 1329 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1329 61))
                          (display "\n")
                          (assert x7945))))
                      (g7944
                       (letrec*
                        ((x7946
                          (begin
                            (write '(funapp 1330 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1330 58))
                          (display "\n")
                          (not x7946)))))
                     g7944)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7947
                       (letrec*
                        ((x7951
                          (begin
                            (write '(funapp 1335 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1335 59))
                          (display "\n")
                          (assert x7951))))
                      (g7948
                       (letrec*
                        ((x7952
                          (begin
                            (write '(funapp 1337 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1337 59))
                          (display "\n")
                          (assert x7952))))
                      (g7949
                       (letrec*
                        ((x7953
                          (letrec*
                           ((x7954
                             (begin
                               (write '(funapp 1341 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1341 57))
                             (display "\n")
                             (< index x7954)))))
                        (begin
                          (write '(funapp 1342 25))
                          (display "\n")
                          (assert x7953))))
                      (g7950
                       (letrec*
                        ((x-cnd7955
                          (begin
                            (write '(funapp 1345 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7955
                          (begin
                            (write '(funapp 1347 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7957
                             (begin
                               (write '(funapp 1349 36))
                               (display "\n")
                               (cdr l)))
                            (x7956
                             (begin
                               (write '(funapp 1349 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (list-ref x7957 x7956)))))))
                     g7950)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7958
                       (letrec*
                        ((x-cnd7959
                          (begin
                            (write '(funapp 1357 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7959
                          a
                          (letrec*
                           ((x7960
                             (begin
                               (write '(funapp 1360 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1360 59))
                             (display "\n")
                             (gcd b x7960)))))))
                     g7958)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g7961
                       (begin
                         (write '(funapp 1363 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 1363 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 1363 59))
                            (display "\n")
                            '())))))
                     g7961)))
                 (image?
                  (lambda (image7433)
                    (letrec*
                     ((g7962
                       (letrec*
                        ((x7963
                          (begin
                            (write '(funapp 1368 41))
                            (display "\n")
                            (car image7433))))
                        (begin
                          (write '(funapp 1368 59))
                          (display "\n")
                          (eq?
                           x7963
                           (begin
                             (write '(funapp 1368 69))
                             (display "\n")
                             'image))))))
                     g7962)))
                 (image/c
                  (lambda (j7332 k7333 v7331)
                    (letrec*
                     ((g7964
                       (begin
                         (write '(funapp 1372 38))
                         (display "\n")
                         (cons
                          image
                          (begin
                            (write '(funapp 1372 49))
                            (display "\n")
                            '())))))
                     g7964)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g7965
                       (begin
                         (write '(funapp 1373 59))
                         (display "\n")
                         (image))))
                     g7965)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g7966
                       (begin
                         (write '(funapp 1374 62))
                         (display "\n")
                         (image))))
                     g7966)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g7967
                       (begin
                         (write '(funapp 1376 56))
                         (display "\n")
                         (image))))
                     g7967)))
                 (posn
                  (lambda (x7435 y7436)
                    (letrec*
                     ((g7968
                       (letrec*
                        ((x7969
                          (letrec*
                           ((x7970
                             (begin
                               (write '(funapp 1384 36))
                               (display "\n")
                               (cons
                                y7436
                                (begin
                                  (write '(funapp 1384 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1385 28))
                             (display "\n")
                             (cons x7435 x7970)))))
                        (begin
                          (write '(funapp 1386 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1386 30))
                             (display "\n")
                             'posn)
                           x7969)))))
                     g7968)))
                 (posn?
                  (lambda (posn7434)
                    (letrec*
                     ((g7971
                       (letrec*
                        ((x7972
                          (begin
                            (write '(funapp 1392 41))
                            (display "\n")
                            (car posn7434))))
                        (begin
                          (write '(funapp 1392 58))
                          (display "\n")
                          (eq?
                           x7972
                           (begin
                             (write '(funapp 1392 68))
                             (display "\n")
                             'posn))))))
                     g7971)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g7973
                       (letrec*
                        ((x7974
                          (begin
                            (write '(funapp 1397 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1397 60))
                          (display "\n")
                          (car x7974)))))
                     g7973)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g7975
                       (letrec*
                        ((x7976
                          (letrec*
                           ((x7977
                             (begin
                               (write '(funapp 1404 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1404 63))
                             (display "\n")
                             (cdr x7977)))))
                        (begin
                          (write '(funapp 1405 25))
                          (display "\n")
                          (car x7976)))))
                     g7975)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g7978
                       (letrec*
                        ((x-cnd7979
                          (letrec*
                           ((x7981
                             (begin
                               (write '(funapp 1414 36))
                               (display "\n")
                               (posn-x p1)))
                            (x7980
                             (begin
                               (write '(funapp 1414 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1415 28))
                             (display "\n")
                             (= x7981 x7980)))))
                        (if x-cnd7979
                          (letrec*
                           ((x7983
                             (begin
                               (write '(funapp 1418 36))
                               (display "\n")
                               (posn-y p1)))
                            (x7982
                             (begin
                               (write '(funapp 1418 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1419 28))
                             (display "\n")
                             (= x7983 x7982)))
                          #f))))
                     g7978)))
                 (snake
                  (lambda (dir7440 segs7441)
                    (letrec*
                     ((g7984
                       (letrec*
                        ((x7985
                          (letrec*
                           ((x7986
                             (begin
                               (write '(funapp 1429 36))
                               (display "\n")
                               (cons
                                segs7441
                                (begin
                                  (write '(funapp 1429 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1430 28))
                             (display "\n")
                             (cons dir7440 x7986)))))
                        (begin
                          (write '(funapp 1431 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1431 30))
                             (display "\n")
                             'snake)
                           x7985)))))
                     g7984)))
                 (snake?
                  (lambda (snake7439)
                    (letrec*
                     ((g7987
                       (letrec*
                        ((x7988
                          (begin
                            (write '(funapp 1437 41))
                            (display "\n")
                            (car snake7439))))
                        (begin
                          (write '(funapp 1437 59))
                          (display "\n")
                          (eq?
                           x7988
                           (begin
                             (write '(funapp 1437 69))
                             (display "\n")
                             'snake))))))
                     g7987)))
                 (snake-dir
                  (lambda (snake)
                    (letrec*
                     ((g7989
                       (letrec*
                        ((x7990
                          (begin
                            (write '(funapp 1442 47))
                            (display "\n")
                            (cdr snake))))
                        (begin
                          (write '(funapp 1442 61))
                          (display "\n")
                          (car x7990)))))
                     g7989)))
                 (snake-segs
                  (lambda (snake)
                    (letrec*
                     ((g7991
                       (letrec*
                        ((x7992
                          (letrec*
                           ((x7993
                             (begin
                               (write '(funapp 1449 50))
                               (display "\n")
                               (cdr snake))))
                           (begin
                             (write '(funapp 1449 64))
                             (display "\n")
                             (cdr x7993)))))
                        (begin
                          (write '(funapp 1450 25))
                          (display "\n")
                          (car x7992)))))
                     g7991)))
                 (world
                  (lambda (snake7445 food7446)
                    (letrec*
                     ((g7994
                       (letrec*
                        ((x7995
                          (letrec*
                           ((x7996
                             (begin
                               (write '(funapp 1459 36))
                               (display "\n")
                               (cons
                                food7446
                                (begin
                                  (write '(funapp 1459 50))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1460 28))
                             (display "\n")
                             (cons snake7445 x7996)))))
                        (begin
                          (write '(funapp 1461 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1461 30))
                             (display "\n")
                             'world)
                           x7995)))))
                     g7994)))
                 (world?
                  (lambda (world7444)
                    (letrec*
                     ((g7997
                       (letrec*
                        ((x7998
                          (begin
                            (write '(funapp 1467 41))
                            (display "\n")
                            (car world7444))))
                        (begin
                          (write '(funapp 1467 59))
                          (display "\n")
                          (eq?
                           x7998
                           (begin
                             (write '(funapp 1467 69))
                             (display "\n")
                             'world))))))
                     g7997)))
                 (world-snake
                  (lambda (world)
                    (letrec*
                     ((g7999
                       (letrec*
                        ((x8000
                          (begin
                            (write '(funapp 1472 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1472 61))
                          (display "\n")
                          (car x8000)))))
                     g7999)))
                 (world-food
                  (lambda (world)
                    (letrec*
                     ((g8001
                       (letrec*
                        ((x8002
                          (letrec*
                           ((x8003
                             (begin
                               (write '(funapp 1479 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1479 64))
                             (display "\n")
                             (cdr x8003)))))
                        (begin
                          (write '(funapp 1480 25))
                          (display "\n")
                          (car x8002)))))
                     g8001)))
                 (DIR/C
                  (lambda (g7338 g7339 g7340)
                    (letrec*
                     ((g8004
                       (letrec*
                        ((x-cnd8005
                          (begin
                            (write '(funapp 1488 27))
                            (display "\n")
                            ((lambda (v7337)
                               (letrec*
                                ((g8006
                                  (letrec*
                                   ((x-cnd8007
                                     (begin
                                       (write '(funapp 1492 46))
                                       (display "\n")
                                       (eq?
                                        (begin
                                          (write '(funapp 1492 50))
                                          (display "\n")
                                          'up)
                                        v7337))))
                                   (if x-cnd8007
                                     #t
                                     (letrec*
                                      ((x-cnd8008
                                        (begin
                                          (write '(funapp 1496 49))
                                          (display "\n")
                                          (eq?
                                           (begin
                                             (write '(funapp 1496 53))
                                             (display "\n")
                                             'down)
                                           v7337))))
                                      (if x-cnd8008
                                        #t
                                        (letrec*
                                         ((x-cnd8009
                                           (begin
                                             (write '(funapp 1500 52))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1500 56))
                                                (display "\n")
                                                'left)
                                              v7337))))
                                         (if x-cnd8009
                                           #t
                                           (begin
                                             (write '(funapp 1503 42))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1503 46))
                                                (display "\n")
                                                'right)
                                              v7337))))))))))
                                g8006))
                             g7340))))
                        (if x-cnd8005
                          g7340
                          (begin
                            (write '(blame g7338 1508 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7338)))))))
                     g8004)))
                 (POSN/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8010
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8011
                             (begin
                               (write '(funapp 1526 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1527 28))
                             (display "\n")
                             (real?/c j7342 k7343 x8011)))))
                        (letrec*
                         ((g8012
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8013
                                 (letrec*
                                  ((x8014
                                    (begin
                                      (write '(funapp 1534 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1534 65))
                                    (display "\n")
                                    (car x8014)))))
                               (begin
                                 (write '(funapp 1535 32))
                                 (display "\n")
                                 (real?/c j7342 k7343 x8013)))))
                            (letrec*
                             ((g8015
                               (letrec*
                                ((x8016
                                  (letrec*
                                   ((x8017
                                     (begin
                                       (write '(funapp 1541 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1541 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1542 36))
                                     (display "\n")
                                     (cons checked7344 x8017)))))
                                (begin
                                  (write '(funapp 1543 33))
                                  (display "\n")
                                  (cons posn x8016)))))
                             g8015))))
                         g8012))))
                     g8010)))
                 (SNAKE/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8018
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8019
                             (begin
                               (write '(funapp 1554 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1555 28))
                             (display "\n")
                             (DIR/C j7348 k7349 x8019)))))
                        (letrec*
                         ((g8020
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8023
                                 (letrec*
                                  ((x8024
                                    (begin
                                      (write '(funapp 1563 43))
                                      (display "\n")
                                      (listof POSN/C))))
                                  (begin
                                    (write '(funapp 1564 35))
                                    (display "\n")
                                    (and/c cons?/c x8024))))
                                (x8021
                                 (letrec*
                                  ((x8022
                                    (begin
                                      (write '(funapp 1566 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1566 65))
                                    (display "\n")
                                    (car x8022)))))
                               (begin
                                 (write '(funapp 1567 32))
                                 (display "\n")
                                 (x8023 j7348 k7349 x8021)))))
                            (letrec*
                             ((g8025
                               (letrec*
                                ((x8026
                                  (letrec*
                                   ((x8027
                                     (begin
                                       (write '(funapp 1573 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1573 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1574 36))
                                     (display "\n")
                                     (cons checked7350 x8027)))))
                                (begin
                                  (write '(funapp 1575 33))
                                  (display "\n")
                                  (cons snake x8026)))))
                             g8025))))
                         g8020))))
                     g8018)))
                 (WORLD/C
                  (lambda (j7354 k7355 v7353)
                    (letrec*
                     ((g8028
                       (letrec*
                        ((checked7356
                          (letrec*
                           ((x8029
                             (begin
                               (write '(funapp 1586 36))
                               (display "\n")
                               (car v7353))))
                           (begin
                             (write '(funapp 1587 28))
                             (display "\n")
                             (SNAKE/C j7354 k7355 x8029)))))
                        (letrec*
                         ((g8030
                           (letrec*
                            ((checked7357
                              (letrec*
                               ((x8031
                                 (letrec*
                                  ((x8032
                                    (begin
                                      (write '(funapp 1594 51))
                                      (display "\n")
                                      (cdr v7353))))
                                  (begin
                                    (write '(funapp 1594 65))
                                    (display "\n")
                                    (car x8032)))))
                               (begin
                                 (write '(funapp 1595 32))
                                 (display "\n")
                                 (POSN/C j7354 k7355 x8031)))))
                            (letrec*
                             ((g8033
                               (letrec*
                                ((x8034
                                  (letrec*
                                   ((x8035
                                     (begin
                                       (write '(funapp 1601 44))
                                       (display "\n")
                                       (cons
                                        checked7357
                                        (begin
                                          (write '(funapp 1601 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1602 36))
                                     (display "\n")
                                     (cons checked7356 x8035)))))
                                (begin
                                  (write '(funapp 1603 33))
                                  (display "\n")
                                  (cons world x8034)))))
                             g8033))))
                         g8030))))
                     g8028)))
                 (GRID-SIZE 30)
                 (BOARD-HEIGHT 20)
                 (BOARD-WIDTH 30)
                 (BOARD-HEIGHT-PIXELS
                  (begin
                    (write '(funapp 1610 39))
                    (display "\n")
                    (* GRID-SIZE BOARD-HEIGHT)))
                 (BOARD-WIDTH-PIXELS
                  (begin
                    (write '(funapp 1611 38))
                    (display "\n")
                    (* GRID-SIZE BOARD-WIDTH)))
                 (BACKGROUND
                  (begin
                    (write '(funapp 1613 19))
                    (display "\n")
                    (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
                 (SEGMENT-RADIUS
                  (begin
                    (write '(funapp 1614 34))
                    (display "\n")
                    (/ GRID-SIZE 2)))
                 (SEGMENT-IMAGE
                  (begin
                    (write '(funapp 1615 33))
                    (display "\n")
                    (circle SEGMENT-RADIUS "solid" "red")))
                 (FOOD-RADIUS SEGMENT-RADIUS)
                 (FOOD-IMAGE
                  (begin
                    (write '(funapp 1617 30))
                    (display "\n")
                    (circle FOOD-RADIUS "solid" "green")))
                 (WORLD
                  (letrec*
                   ((x8037
                     (letrec*
                      ((x8038
                        (letrec*
                         ((x8039
                           (begin
                             (write '(funapp 1623 42))
                             (display "\n")
                             (posn 5 3))))
                         (begin
                           (write '(funapp 1623 55))
                           (display "\n")
                           (cons x8039 empty)))))
                      (begin
                        (write '(funapp 1624 23))
                        (display "\n")
                        (snake
                         (begin
                           (write '(funapp 1624 29))
                           (display "\n")
                           'right)
                         x8038))))
                    (x8036
                     (begin
                       (write '(funapp 1625 28))
                       (display "\n")
                       (posn 8 12))))
                   (begin
                     (write '(funapp 1626 20))
                     (display "\n")
                     (world x8037 x8036))))
                 (snake-wall-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8040
                       (letrec*
                        ((x8041
                          (letrec*
                           ((x8042
                             (begin
                               (write '(funapp 1633 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1633 63))
                             (display "\n")
                             (car x8042)))))
                        (begin
                          (write '(funapp 1634 25))
                          (display "\n")
                          (head-collide? x8041)))))
                     g8040)))
                 (head-collide?
                  (lambda (p)
                    (letrec*
                     ((g8043
                       (letrec*
                        ((val7258
                          (letrec*
                           ((x8044
                             (begin
                               (write '(funapp 1641 52))
                               (display "\n")
                               (posn-x p))))
                           (begin
                             (write '(funapp 1641 65))
                             (display "\n")
                             (<= x8044 0)))))
                        (letrec*
                         ((g8045
                           (if val7258
                             val7258
                             (letrec*
                              ((val7259
                                (letrec*
                                 ((x8046
                                   (begin
                                     (write '(funapp 1649 42))
                                     (display "\n")
                                     (posn-x p))))
                                 (begin
                                   (write '(funapp 1650 34))
                                   (display "\n")
                                   (>= x8046 BOARD-WIDTH)))))
                              (letrec*
                               ((g8047
                                 (if val7259
                                   val7259
                                   (letrec*
                                    ((val7260
                                      (letrec*
                                       ((x8048
                                         (begin
                                           (write '(funapp 1658 48))
                                           (display "\n")
                                           (posn-y p))))
                                       (begin
                                         (write '(funapp 1659 40))
                                         (display "\n")
                                         (<= x8048 0)))))
                                    (letrec*
                                     ((g8049
                                       (if val7260
                                         val7260
                                         (letrec*
                                          ((x8050
                                            (begin
                                              (write '(funapp 1665 51))
                                              (display "\n")
                                              (posn-y p))))
                                          (begin
                                            (write '(funapp 1666 43))
                                            (display "\n")
                                            (>= x8050 BOARD-HEIGHT))))))
                                     g8049)))))
                               g8047)))))
                         g8045))))
                     g8043)))
                 (snake-self-collide?
                  (lambda (snk)
                    (letrec*
                     ((g8051
                       (letrec*
                        ((x8054
                          (letrec*
                           ((x8055
                             (begin
                               (write '(funapp 1677 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1677 63))
                             (display "\n")
                             (car x8055))))
                         (x8052
                          (letrec*
                           ((x8053
                             (begin
                               (write '(funapp 1679 44))
                               (display "\n")
                               (snake-segs snk))))
                           (begin
                             (write '(funapp 1679 63))
                             (display "\n")
                             (cdr x8053)))))
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (segs-self-collide? x8054 x8052)))))
                     g8051)))
                 (segs-self-collide?
                  (lambda (h segs)
                    (letrec*
                     ((g8056
                       (if cnd
                         (letrec* ((g8057 #f)) g8057)
                         (letrec*
                          ((g8058
                            (letrec*
                             ((x8061
                               (letrec*
                                ((x8062
                                  (begin
                                    (write '(funapp 1692 49))
                                    (display "\n")
                                    (car segs))))
                                (begin
                                  (write '(funapp 1692 62))
                                  (display "\n")
                                  (posn=? x8062 h))))
                              (x8059
                               (letrec*
                                ((x8060
                                  (begin
                                    (write '(funapp 1695 41))
                                    (display "\n")
                                    (cdr segs))))
                                (begin
                                  (write '(funapp 1696 33))
                                  (display "\n")
                                  (segs-self-collide? h x8060)))))
                             (begin
                               (write '(funapp 1697 30))
                               (display "\n")
                               (or x8061 x8059)))))
                          g8058))))
                     g8056)))
                 (cut-tail
                  (lambda (segs)
                    (letrec*
                     ((g8063
                       (letrec*
                        ((r
                          (begin
                            (write '(funapp 1705 29))
                            (display "\n")
                            (cdr segs))))
                        (letrec*
                         ((g8064
                           (if cnd
                             (letrec* ((g8065 empty)) g8065)
                             (letrec*
                              ((g8066
                                (letrec*
                                 ((x8068
                                   (begin
                                     (write '(funapp 1713 42))
                                     (display "\n")
                                     (car segs)))
                                  (x8067
                                   (begin
                                     (write '(funapp 1713 61))
                                     (display "\n")
                                     (cut-tail r))))
                                 (begin
                                   (write '(funapp 1714 34))
                                   (display "\n")
                                   (cons x8068 x8067)))))
                              g8066))))
                         g8064))))
                     g8063)))
                 (next-head
                  (lambda (seg dir)
                    (letrec*
                     ((g8069
                       (if cnd
                         (letrec*
                          ((g8070
                            (letrec*
                             ((x8072
                               (letrec*
                                ((x8073
                                  (begin
                                    (write '(funapp 1727 49))
                                    (display "\n")
                                    (posn-x seg))))
                                (begin
                                  (write '(funapp 1727 64))
                                  (display "\n")
                                  (add1 x8073))))
                              (x8071
                               (begin
                                 (write '(funapp 1728 38))
                                 (display "\n")
                                 (posn-y seg))))
                             (begin
                               (write '(funapp 1729 30))
                               (display "\n")
                               (posn x8072 x8071)))))
                          g8070)
                         (if cnd
                           (letrec*
                            ((g8074
                              (letrec*
                               ((x8076
                                 (letrec*
                                  ((x8077
                                    (begin
                                      (write '(funapp 1736 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1736 66))
                                    (display "\n")
                                    (sub1 x8077))))
                                (x8075
                                 (begin
                                   (write '(funapp 1737 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1738 32))
                                 (display "\n")
                                 (posn x8076 x8075)))))
                            g8074)
                           (if cnd
                             (letrec*
                              ((g8078
                                (letrec*
                                 ((x8081
                                   (begin
                                     (write '(funapp 1744 42))
                                     (display "\n")
                                     (posn-x seg)))
                                  (x8079
                                   (letrec*
                                    ((x8080
                                      (begin
                                        (write '(funapp 1747 45))
                                        (display "\n")
                                        (posn-y seg))))
                                    (begin
                                      (write '(funapp 1748 37))
                                      (display "\n")
                                      (sub1 x8080)))))
                                 (begin
                                   (write '(funapp 1749 34))
                                   (display "\n")
                                   (posn x8081 x8079)))))
                              g8078)
                             (letrec*
                              ((g8082
                                (letrec*
                                 ((x8085
                                   (begin
                                     (write '(funapp 1754 42))
                                     (display "\n")
                                     (posn-x seg)))
                                  (x8083
                                   (letrec*
                                    ((x8084
                                      (begin
                                        (write '(funapp 1757 45))
                                        (display "\n")
                                        (posn-y seg))))
                                    (begin
                                      (write '(funapp 1758 37))
                                      (display "\n")
                                      (add1 x8084)))))
                                 (begin
                                   (write '(funapp 1759 34))
                                   (display "\n")
                                   (posn x8085 x8083)))))
                              g8082))))))
                     g8069)))
                 (snake-slither
                  (lambda (snk)
                    (letrec*
                     ((g8086
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1767 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8087
                           (letrec*
                            ((x8088
                              (letrec*
                               ((x8091
                                 (letrec*
                                  ((x8092
                                    (letrec*
                                     ((x8093
                                       (begin
                                         (write '(funapp 1777 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1778 38))
                                       (display "\n")
                                       (car x8093)))))
                                  (begin
                                    (write '(funapp 1779 35))
                                    (display "\n")
                                    (next-head x8092 d))))
                                (x8089
                                 (letrec*
                                  ((x8090
                                    (begin
                                      (write '(funapp 1782 43))
                                      (display "\n")
                                      (snake-segs snk))))
                                  (begin
                                    (write '(funapp 1783 35))
                                    (display "\n")
                                    (cut-tail x8090)))))
                               (begin
                                 (write '(funapp 1784 32))
                                 (display "\n")
                                 (cons x8091 x8089)))))
                            (begin
                              (write '(funapp 1785 29))
                              (display "\n")
                              (snake d x8088)))))
                         g8087))))
                     g8086)))
                 (snake-grow
                  (lambda (snk)
                    (letrec*
                     ((g8094
                       (letrec*
                        ((d
                          (begin
                            (write '(funapp 1793 29))
                            (display "\n")
                            (snake-dir snk))))
                        (letrec*
                         ((g8095
                           (letrec*
                            ((x8096
                              (letrec*
                               ((x8098
                                 (letrec*
                                  ((x8099
                                    (letrec*
                                     ((x8100
                                       (begin
                                         (write '(funapp 1803 46))
                                         (display "\n")
                                         (snake-segs snk))))
                                     (begin
                                       (write '(funapp 1804 38))
                                       (display "\n")
                                       (car x8100)))))
                                  (begin
                                    (write '(funapp 1805 35))
                                    (display "\n")
                                    (next-head x8099 d))))
                                (x8097
                                 (begin
                                   (write '(funapp 1806 40))
                                   (display "\n")
                                   (snake-segs snk))))
                               (begin
                                 (write '(funapp 1807 32))
                                 (display "\n")
                                 (cons x8098 x8097)))))
                            (begin
                              (write '(funapp 1808 29))
                              (display "\n")
                              (snake d x8096)))))
                         g8095))))
                     g8094)))
                 (world->world
                  (lambda (w)
                    (letrec*
                     ((g8101
                       (if cnd
                         (letrec*
                          ((g8102
                            (begin
                              (write '(funapp 1816 43))
                              (display "\n")
                              (snake-eat w))))
                          g8102)
                         (letrec*
                          ((g8103
                            (letrec*
                             ((x8105
                               (letrec*
                                ((x8106
                                  (begin
                                    (write '(funapp 1822 41))
                                    (display "\n")
                                    (world-snake w))))
                                (begin
                                  (write '(funapp 1823 33))
                                  (display "\n")
                                  (snake-slither x8106))))
                              (x8104
                               (begin
                                 (write '(funapp 1824 38))
                                 (display "\n")
                                 (world-food w))))
                             (begin
                               (write '(funapp 1825 30))
                               (display "\n")
                               (world x8105 x8104)))))
                          g8103))))
                     g8101)))
                 (eating?
                  (lambda (w)
                    (letrec*
                     ((g8107
                       (letrec*
                        ((x8111
                          (begin
                            (write '(funapp 1833 33))
                            (display "\n")
                            (world-food w)))
                         (x8108
                          (letrec*
                           ((x8109
                             (letrec*
                              ((x8110
                                (begin
                                  (write '(funapp 1838 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1839 31))
                                (display "\n")
                                (snake-segs x8110)))))
                           (begin
                             (write '(funapp 1840 28))
                             (display "\n")
                             (car x8109)))))
                        (begin
                          (write '(funapp 1841 25))
                          (display "\n")
                          (posn=? x8111 x8108)))))
                     g8107)))
                 (snake-change-direction
                  (lambda (snk dir)
                    (letrec*
                     ((g8112
                       (letrec*
                        ((x8113
                          (begin
                            (write '(funapp 1847 41))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 1847 60))
                          (display "\n")
                          (snake dir x8113)))))
                     g8112)))
                 (world-change-dir
                  (lambda (w dir)
                    (letrec*
                     ((g8114
                       (letrec*
                        ((x8116
                          (letrec*
                           ((x8117
                             (begin
                               (write '(funapp 1856 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1857 28))
                             (display "\n")
                             (snake-change-direction x8117 dir))))
                         (x8115
                          (begin
                            (write '(funapp 1858 33))
                            (display "\n")
                            (world-food w))))
                        (begin
                          (write '(funapp 1859 25))
                          (display "\n")
                          (world x8116 x8115)))))
                     g8114)))
                 (snake-eat
                  (lambda (w)
                    (letrec*
                     ((g8118
                       (letrec*
                        ((x8122
                          (letrec*
                           ((x8123
                             (begin
                               (write '(funapp 1868 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1869 28))
                             (display "\n")
                             (snake-grow x8123))))
                         (x8119
                          (letrec*
                           ((x8121
                             (begin
                               (write '(funapp 1872 36))
                               (display "\n")
                               (- BOARD-WIDTH 1)))
                            (x8120
                             (begin
                               (write '(funapp 1873 36))
                               (display "\n")
                               (- BOARD-HEIGHT 1))))
                           (begin
                             (write '(funapp 1874 28))
                             (display "\n")
                             (posn x8121 x8120)))))
                        (begin
                          (write '(funapp 1875 25))
                          (display "\n")
                          (world x8122 x8119)))))
                     g8118)))
                 (handle-key
                  (lambda (w ke)
                    (letrec*
                     ((g8124
                       (if cnd
                         (letrec*
                          ((g8125
                            (begin
                              (write '(funapp 1882 43))
                              (display "\n")
                              (world-change-dir
                               w
                               (begin
                                 (write '(funapp 1882 62))
                                 (display "\n")
                                 'up)))))
                          g8125)
                         (if cnd
                           (letrec*
                            ((g8126
                              (begin
                                (write '(funapp 1884 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 1884 64))
                                   (display "\n")
                                   'down)))))
                            g8126)
                           (if cnd
                             (letrec*
                              ((g8127
                                (begin
                                  (write '(funapp 1887 39))
                                  (display "\n")
                                  (world-change-dir
                                   w
                                   (begin
                                     (write '(funapp 1887 58))
                                     (display "\n")
                                     'left)))))
                              g8127)
                             (if cnd
                               (letrec*
                                ((g8128
                                  (begin
                                    (write '(funapp 1891 41))
                                    (display "\n")
                                    (world-change-dir
                                     w
                                     (begin
                                       (write '(funapp 1891 60))
                                       (display "\n")
                                       'right)))))
                                g8128)
                               (letrec* ((g8129 w)) g8129)))))))
                     g8124)))
                 (game-over?
                  (lambda (w)
                    (letrec*
                     ((g8130
                       (letrec*
                        ((val7261
                          (letrec*
                           ((x8131
                             (begin
                               (write '(funapp 1902 36))
                               (display "\n")
                               (world-snake w))))
                           (begin
                             (write '(funapp 1903 28))
                             (display "\n")
                             (snake-wall-collide? x8131)))))
                        (letrec*
                         ((g8132
                           (if val7261
                             val7261
                             (letrec*
                              ((x8133
                                (begin
                                  (write '(funapp 1909 39))
                                  (display "\n")
                                  (world-snake w))))
                              (begin
                                (write '(funapp 1910 31))
                                (display "\n")
                                (snake-self-collide? x8133))))))
                         g8132))))
                     g8130)))
                 (world->scene
                  (lambda (w)
                    (letrec*
                     ((g8134
                       (letrec*
                        ((x8137
                          (begin
                            (write '(funapp 1918 33))
                            (display "\n")
                            (world-snake w)))
                         (x8135
                          (letrec*
                           ((x8136
                             (begin
                               (write '(funapp 1921 36))
                               (display "\n")
                               (world-food w))))
                           (begin
                             (write '(funapp 1922 28))
                             (display "\n")
                             (food+scene x8136 BACKGROUND)))))
                        (begin
                          (write '(funapp 1923 25))
                          (display "\n")
                          (snake+scene x8137 x8135)))))
                     g8134)))
                 (food+scene
                  (lambda (f scn)
                    (letrec*
                     ((g8138
                       (letrec*
                        ((x8140
                          (begin
                            (write '(funapp 1930 33))
                            (display "\n")
                            (posn-x f)))
                         (x8139
                          (begin
                            (write '(funapp 1930 52))
                            (display "\n")
                            (posn-y f))))
                        (begin
                          (write '(funapp 1931 25))
                          (display "\n")
                          (place-image-on-grid FOOD-IMAGE x8140 x8139 scn)))))
                     g8138)))
                 (place-image-on-grid
                  (lambda (img x y scn)
                    (letrec*
                     ((g8141
                       (letrec*
                        ((x8144
                          (begin
                            (write '(funapp 1938 33))
                            (display "\n")
                            (* GRID-SIZE x)))
                         (x8142
                          (letrec*
                           ((x8143
                             (begin
                               (write '(funapp 1941 36))
                               (display "\n")
                               (* GRID-SIZE y))))
                           (begin
                             (write '(funapp 1942 28))
                             (display "\n")
                             (- BOARD-HEIGHT-PIXELS x8143)))))
                        (begin
                          (write '(funapp 1943 25))
                          (display "\n")
                          (place-image img x8144 x8142 scn)))))
                     g8141)))
                 (snake+scene
                  (lambda (snk scn)
                    (letrec*
                     ((g8145
                       (letrec*
                        ((x8146
                          (begin
                            (write '(funapp 1950 33))
                            (display "\n")
                            (snake-segs snk))))
                        (begin
                          (write '(funapp 1951 25))
                          (display "\n")
                          (segments+scene x8146 scn)))))
                     g8145)))
                 (segments+scene
                  (lambda (segs scn)
                    (letrec*
                     ((g8147
                       (if cnd
                         (letrec* ((g8148 scn)) g8148)
                         (letrec*
                          ((g8149
                            (letrec*
                             ((x8152
                               (begin
                                 (write '(funapp 1962 38))
                                 (display "\n")
                                 (cdr segs)))
                              (x8150
                               (letrec*
                                ((x8151
                                  (begin
                                    (write '(funapp 1965 41))
                                    (display "\n")
                                    (car segs))))
                                (begin
                                  (write '(funapp 1966 33))
                                  (display "\n")
                                  (segment+scene x8151 scn)))))
                             (begin
                               (write '(funapp 1967 30))
                               (display "\n")
                               (segments+scene x8152 x8150)))))
                          g8149))))
                     g8147)))
                 (segment+scene
                  (lambda (seg scn)
                    (letrec*
                     ((g8153
                       (letrec*
                        ((x8155
                          (begin
                            (write '(funapp 1975 33))
                            (display "\n")
                            (posn-x seg)))
                         (x8154
                          (begin
                            (write '(funapp 1975 54))
                            (display "\n")
                            (posn-y seg))))
                        (begin
                          (write '(funapp 1976 25))
                          (display "\n")
                          (place-image-on-grid
                           SEGMENT-IMAGE
                           x8155
                           x8154
                           scn)))))
                     g8153))))
                (letrec*
                 ((g8156
                   (letrec*
                    ((x8190
                      (begin
                        (write '(funapp 1982 23))
                        (display "\n")
                        ((lambda (j7361 k7362 f7363)
                           (letrec*
                            ((g8191
                              (lambda (g7359 g7360)
                                (letrec*
                                 ((g8192
                                   (letrec*
                                    ((x8193
                                      (letrec*
                                       ((x8195
                                         (begin
                                           (write '(funapp 1991 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7359)))
                                        (x8194
                                         (begin
                                           (write '(funapp 1992 46))
                                           (display "\n")
                                           (POSN/C j7361 k7362 g7360))))
                                       (begin
                                         (write '(funapp 1993 38))
                                         (display "\n")
                                         (f7363 x8195 x8194)))))
                                    (begin
                                      (write '(funapp 1994 35))
                                      (display "\n")
                                      (boolean?/c j7361 k7362 x8193)))))
                                 g8192))))
                            g8191))
                         (begin
                           (write '(funapp 1997 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1998 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8185
                      (letrec*
                       ((x8186
                         (letrec*
                          ((x8189 (input))
                           (x8187
                            (letrec*
                             ((x8188 (input)))
                             (begin
                               (write '(funapp 2006 56))
                               (display "\n")
                               (cons
                                x8188
                                (begin
                                  (write '(funapp 2006 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2007 27))
                            (display "\n")
                            (cons x8189 x8187)))))
                       (begin
                         (write '(funapp 2008 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2008 29))
                            (display "\n")
                            'posn)
                          x8186))))
                     (x8180
                      (letrec*
                       ((x8181
                         (letrec*
                          ((x8184 (input))
                           (x8182
                            (letrec*
                             ((x8183 (input)))
                             (begin
                               (write '(funapp 2015 56))
                               (display "\n")
                               (cons
                                x8183
                                (begin
                                  (write '(funapp 2015 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2016 27))
                            (display "\n")
                            (cons x8184 x8182)))))
                       (begin
                         (write '(funapp 2017 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2017 29))
                            (display "\n")
                            'posn)
                          x8181)))))
                    (begin
                      (write '(funapp 2018 21))
                      (display "\n")
                      (x8190 x8185 x8180))))
                  (g8157
                   (begin
                     (write '(funapp 2019 26))
                     (display "\n")
                     (WORLD/C
                      (begin (write '(funapp 2019 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2019 42))
                        (display "\n")
                        'importer)
                      WORLD)))
                  (g8158
                   (begin
                     (write '(funapp 2020 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2020 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2020 42))
                        (display "\n")
                        'importer)
                      BACKGROUND)))
                  (g8159
                   (begin
                     (write '(funapp 2021 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2021 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2021 42))
                        (display "\n")
                        'importer)
                      FOOD-IMAGE)))
                  (g8160
                   (begin
                     (write '(funapp 2022 26))
                     (display "\n")
                     (image/c
                      (begin (write '(funapp 2022 34)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2022 42))
                        (display "\n")
                        'importer)
                      SEGMENT-IMAGE)))
                  (g8161
                   (begin
                     (write '(funapp 2023 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2023 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2023 40))
                        (display "\n")
                        'importer)
                      GRID-SIZE)))
                  (g8162
                   (begin
                     (write '(funapp 2024 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2024 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2024 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT-PIXELS)))
                  (g8163
                   (begin
                     (write '(funapp 2025 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2025 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2025 40))
                        (display "\n")
                        'importer)
                      BOARD-WIDTH)))
                  (g8164
                   (begin
                     (write '(funapp 2026 26))
                     (display "\n")
                     (real?
                      (begin (write '(funapp 2026 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2026 40))
                        (display "\n")
                        'importer)
                      BOARD-HEIGHT)))
                  (g8165
                   (letrec*
                    ((x8201
                      (begin
                        (write '(funapp 2030 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8202
                              (lambda (g7364)
                                (letrec*
                                 ((g8203
                                   (letrec*
                                    ((x8204
                                      (letrec*
                                       ((x8205
                                         (begin
                                           (write '(funapp 2039 46))
                                           (display "\n")
                                           (SNAKE/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2040 38))
                                         (display "\n")
                                         (f7367 x8205)))))
                                    (begin
                                      (write '(funapp 2041 35))
                                      (display "\n")
                                      (boolean?/c j7365 k7366 x8204)))))
                                 g8203))))
                            g8202))
                         (begin
                           (write '(funapp 2044 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2045 23))
                           (display "\n")
                           'importer)
                         snake-wall-collide?)))
                     (x8196
                      (letrec*
                       ((x8197
                         (letrec*
                          ((x8200 (input))
                           (x8198
                            (letrec*
                             ((x8199 (input)))
                             (begin
                               (write '(funapp 2053 56))
                               (display "\n")
                               (cons
                                x8199
                                (begin
                                  (write '(funapp 2053 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2054 27))
                            (display "\n")
                            (cons x8200 x8198)))))
                       (begin
                         (write '(funapp 2055 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2055 29))
                            (display "\n")
                            'snake)
                          x8197)))))
                    (begin
                      (write '(funapp 2056 21))
                      (display "\n")
                      (x8201 x8196))))
                  (g8166
                   (letrec*
                    ((x8211
                      (begin
                        (write '(funapp 2060 23))
                        (display "\n")
                        ((lambda (j7369 k7370 f7371)
                           (letrec*
                            ((g8212
                              (lambda (g7368)
                                (letrec*
                                 ((g8213
                                   (letrec*
                                    ((x8214
                                      (letrec*
                                       ((x8215
                                         (begin
                                           (write '(funapp 2069 46))
                                           (display "\n")
                                           (SNAKE/C j7369 k7370 g7368))))
                                       (begin
                                         (write '(funapp 2070 38))
                                         (display "\n")
                                         (f7371 x8215)))))
                                    (begin
                                      (write '(funapp 2071 35))
                                      (display "\n")
                                      (boolean?/c j7369 k7370 x8214)))))
                                 g8213))))
                            g8212))
                         (begin
                           (write '(funapp 2074 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2075 23))
                           (display "\n")
                           'importer)
                         snake-self-collide?)))
                     (x8206
                      (letrec*
                       ((x8207
                         (letrec*
                          ((x8210 (input))
                           (x8208
                            (letrec*
                             ((x8209 (input)))
                             (begin
                               (write '(funapp 2083 56))
                               (display "\n")
                               (cons
                                x8209
                                (begin
                                  (write '(funapp 2083 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2084 27))
                            (display "\n")
                            (cons x8210 x8208)))))
                       (begin
                         (write '(funapp 2085 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2085 29))
                            (display "\n")
                            'snake)
                          x8207)))))
                    (begin
                      (write '(funapp 2086 21))
                      (display "\n")
                      (x8211 x8206))))
                  (g8167
                   (letrec*
                    ((x8217
                      (begin
                        (write '(funapp 2090 23))
                        (display "\n")
                        ((lambda (j7373 k7374 f7375)
                           (letrec*
                            ((g8218
                              (lambda (g7372)
                                (letrec*
                                 ((g8219
                                   (letrec*
                                    ((x8224
                                      (begin
                                        (write '(funapp 2097 43))
                                        (display "\n")
                                        (listof POSN/C)))
                                     (x8220
                                      (letrec*
                                       ((x8221
                                         (letrec*
                                          ((x8222
                                            (letrec*
                                             ((x8223
                                               (begin
                                                 (write '(funapp 2104 52))
                                                 (display "\n")
                                                 (listof POSN/C))))
                                             (begin
                                               (write '(funapp 2105 44))
                                               (display "\n")
                                               (and/c cons?/c x8223)))))
                                          (begin
                                            (write '(funapp 2106 41))
                                            (display "\n")
                                            (x8222 j7373 k7374 g7372)))))
                                       (begin
                                         (write '(funapp 2107 38))
                                         (display "\n")
                                         (f7375 x8221)))))
                                    (begin
                                      (write '(funapp 2108 35))
                                      (display "\n")
                                      (x8224 j7373 k7374 x8220)))))
                                 g8219))))
                            g8218))
                         (begin
                           (write '(funapp 2111 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2112 23))
                           (display "\n")
                           'importer)
                         cut-tail)))
                     (x8216 (input)))
                    (begin
                      (write '(funapp 2115 21))
                      (display "\n")
                      (x8217 x8216))))
                  (g8168
                   (letrec*
                    ((x8230
                      (begin
                        (write '(funapp 2119 23))
                        (display "\n")
                        ((lambda (j7377 k7378 f7379)
                           (letrec*
                            ((g8231
                              (lambda (g7376)
                                (letrec*
                                 ((g8232
                                   (letrec*
                                    ((x8233
                                      (letrec*
                                       ((x8234
                                         (begin
                                           (write '(funapp 2128 46))
                                           (display "\n")
                                           (SNAKE/C j7377 k7378 g7376))))
                                       (begin
                                         (write '(funapp 2129 38))
                                         (display "\n")
                                         (f7379 x8234)))))
                                    (begin
                                      (write '(funapp 2130 35))
                                      (display "\n")
                                      (SNAKE/C j7377 k7378 x8233)))))
                                 g8232))))
                            g8231))
                         (begin
                           (write '(funapp 2133 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2134 23))
                           (display "\n")
                           'importer)
                         snake-slither)))
                     (x8225
                      (letrec*
                       ((x8226
                         (letrec*
                          ((x8229 (input))
                           (x8227
                            (letrec*
                             ((x8228 (input)))
                             (begin
                               (write '(funapp 2142 56))
                               (display "\n")
                               (cons
                                x8228
                                (begin
                                  (write '(funapp 2142 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2143 27))
                            (display "\n")
                            (cons x8229 x8227)))))
                       (begin
                         (write '(funapp 2144 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2144 29))
                            (display "\n")
                            'snake)
                          x8226)))))
                    (begin
                      (write '(funapp 2145 21))
                      (display "\n")
                      (x8230 x8225))))
                  (g8169
                   (letrec*
                    ((x8240
                      (begin
                        (write '(funapp 2149 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8241
                              (lambda (g7380)
                                (letrec*
                                 ((g8242
                                   (letrec*
                                    ((x8243
                                      (letrec*
                                       ((x8244
                                         (begin
                                           (write '(funapp 2158 46))
                                           (display "\n")
                                           (SNAKE/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2159 38))
                                         (display "\n")
                                         (f7383 x8244)))))
                                    (begin
                                      (write '(funapp 2160 35))
                                      (display "\n")
                                      (SNAKE/C j7381 k7382 x8243)))))
                                 g8242))))
                            g8241))
                         (begin
                           (write '(funapp 2163 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2164 23))
                           (display "\n")
                           'importer)
                         snake-grow)))
                     (x8235
                      (letrec*
                       ((x8236
                         (letrec*
                          ((x8239 (input))
                           (x8237
                            (letrec*
                             ((x8238 (input)))
                             (begin
                               (write '(funapp 2172 56))
                               (display "\n")
                               (cons
                                x8238
                                (begin
                                  (write '(funapp 2172 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2173 27))
                            (display "\n")
                            (cons x8239 x8237)))))
                       (begin
                         (write '(funapp 2174 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2174 29))
                            (display "\n")
                            'snake)
                          x8236)))))
                    (begin
                      (write '(funapp 2175 21))
                      (display "\n")
                      (x8240 x8235))))
                  (g8170
                   (letrec*
                    ((x8259
                      (begin
                        (write '(funapp 2179 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8260
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8261
                                   (letrec*
                                    ((x8262
                                      (letrec*
                                       ((x8264
                                         (begin
                                           (write '(funapp 2188 46))
                                           (display "\n")
                                           (WORLD/C j7386 k7387 g7384)))
                                        (x8263
                                         (begin
                                           (write '(funapp 2189 46))
                                           (display "\n")
                                           (DIR/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2190 38))
                                         (display "\n")
                                         (f7388 x8264 x8263)))))
                                    (begin
                                      (write '(funapp 2191 35))
                                      (display "\n")
                                      (WORLD/C j7386 k7387 x8262)))))
                                 g8261))))
                            g8260))
                         (begin
                           (write '(funapp 2194 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2195 23))
                           (display "\n")
                           'importer)
                         world-change-dir)))
                     (x8246
                      (letrec*
                       ((x8247
                         (letrec*
                          ((x8254
                            (letrec*
                             ((x8255
                               (letrec*
                                ((x8258 (input))
                                 (x8256
                                  (letrec*
                                   ((x8257 (input)))
                                   (begin
                                     (write '(funapp 2209 36))
                                     (display "\n")
                                     (cons
                                      x8257
                                      (begin
                                        (write '(funapp 2209 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2210 33))
                                  (display "\n")
                                  (cons x8258 x8256)))))
                             (begin
                               (write '(funapp 2211 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2211 35))
                                  (display "\n")
                                  'snake)
                                x8255))))
                           (x8248
                            (letrec*
                             ((x8249
                               (letrec*
                                ((x8250
                                  (letrec*
                                   ((x8253 (input))
                                    (x8251
                                     (letrec*
                                      ((x8252 (input)))
                                      (begin
                                        (write '(funapp 2222 39))
                                        (display "\n")
                                        (cons
                                         x8252
                                         (begin
                                           (write '(funapp 2222 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2223 36))
                                     (display "\n")
                                     (cons x8253 x8251)))))
                                (begin
                                  (write '(funapp 2224 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2224 38))
                                     (display "\n")
                                     'posn)
                                   x8250)))))
                             (begin
                               (write '(funapp 2225 30))
                               (display "\n")
                               (cons
                                x8249
                                (begin
                                  (write '(funapp 2225 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2226 27))
                            (display "\n")
                            (cons x8254 x8248)))))
                       (begin
                         (write '(funapp 2227 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2227 29))
                            (display "\n")
                            'world)
                          x8247))))
                     (x8245 (input)))
                    (begin
                      (write '(funapp 2229 21))
                      (display "\n")
                      (x8259 x8246 x8245))))
                  (g8171
                   (letrec*
                    ((x8278
                      (begin
                        (write '(funapp 2233 23))
                        (display "\n")
                        ((lambda (j7390 k7391 f7392)
                           (letrec*
                            ((g8279
                              (lambda (g7389)
                                (letrec*
                                 ((g8280
                                   (letrec*
                                    ((x8281
                                      (letrec*
                                       ((x8282
                                         (begin
                                           (write '(funapp 2242 46))
                                           (display "\n")
                                           (WORLD/C j7390 k7391 g7389))))
                                       (begin
                                         (write '(funapp 2243 38))
                                         (display "\n")
                                         (f7392 x8282)))))
                                    (begin
                                      (write '(funapp 2244 35))
                                      (display "\n")
                                      (WORLD/C j7390 k7391 x8281)))))
                                 g8280))))
                            g8279))
                         (begin
                           (write '(funapp 2247 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2248 23))
                           (display "\n")
                           'importer)
                         world->world)))
                     (x8265
                      (letrec*
                       ((x8266
                         (letrec*
                          ((x8273
                            (letrec*
                             ((x8274
                               (letrec*
                                ((x8277 (input))
                                 (x8275
                                  (letrec*
                                   ((x8276 (input)))
                                   (begin
                                     (write '(funapp 2262 36))
                                     (display "\n")
                                     (cons
                                      x8276
                                      (begin
                                        (write '(funapp 2262 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2263 33))
                                  (display "\n")
                                  (cons x8277 x8275)))))
                             (begin
                               (write '(funapp 2264 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2264 35))
                                  (display "\n")
                                  'snake)
                                x8274))))
                           (x8267
                            (letrec*
                             ((x8268
                               (letrec*
                                ((x8269
                                  (letrec*
                                   ((x8272 (input))
                                    (x8270
                                     (letrec*
                                      ((x8271 (input)))
                                      (begin
                                        (write '(funapp 2275 39))
                                        (display "\n")
                                        (cons
                                         x8271
                                         (begin
                                           (write '(funapp 2275 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2276 36))
                                     (display "\n")
                                     (cons x8272 x8270)))))
                                (begin
                                  (write '(funapp 2277 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2277 38))
                                     (display "\n")
                                     'posn)
                                   x8269)))))
                             (begin
                               (write '(funapp 2278 30))
                               (display "\n")
                               (cons
                                x8268
                                (begin
                                  (write '(funapp 2278 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2279 27))
                            (display "\n")
                            (cons x8273 x8267)))))
                       (begin
                         (write '(funapp 2280 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2280 29))
                            (display "\n")
                            'world)
                          x8266)))))
                    (begin
                      (write '(funapp 2281 21))
                      (display "\n")
                      (x8278 x8265))))
                  (g8172
                   (letrec*
                    ((x8297
                      (begin
                        (write '(funapp 2285 23))
                        (display "\n")
                        ((lambda (j7395 k7396 f7397)
                           (letrec*
                            ((g8298
                              (lambda (g7393 g7394)
                                (letrec*
                                 ((g8299
                                   (letrec*
                                    ((x8300
                                      (letrec*
                                       ((x8302
                                         (begin
                                           (write '(funapp 2294 46))
                                           (display "\n")
                                           (WORLD/C j7395 k7396 g7393)))
                                        (x8301
                                         (begin
                                           (write '(funapp 2295 46))
                                           (display "\n")
                                           (string?/c j7395 k7396 g7394))))
                                       (begin
                                         (write '(funapp 2296 38))
                                         (display "\n")
                                         (f7397 x8302 x8301)))))
                                    (begin
                                      (write '(funapp 2297 35))
                                      (display "\n")
                                      (WORLD/C j7395 k7396 x8300)))))
                                 g8299))))
                            g8298))
                         (begin
                           (write '(funapp 2300 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2301 23))
                           (display "\n")
                           'importer)
                         handle-key)))
                     (x8284
                      (letrec*
                       ((x8285
                         (letrec*
                          ((x8292
                            (letrec*
                             ((x8293
                               (letrec*
                                ((x8296 (input))
                                 (x8294
                                  (letrec*
                                   ((x8295 (input)))
                                   (begin
                                     (write '(funapp 2315 36))
                                     (display "\n")
                                     (cons
                                      x8295
                                      (begin
                                        (write '(funapp 2315 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2316 33))
                                  (display "\n")
                                  (cons x8296 x8294)))))
                             (begin
                               (write '(funapp 2317 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2317 35))
                                  (display "\n")
                                  'snake)
                                x8293))))
                           (x8286
                            (letrec*
                             ((x8287
                               (letrec*
                                ((x8288
                                  (letrec*
                                   ((x8291 (input))
                                    (x8289
                                     (letrec*
                                      ((x8290 (input)))
                                      (begin
                                        (write '(funapp 2328 39))
                                        (display "\n")
                                        (cons
                                         x8290
                                         (begin
                                           (write '(funapp 2328 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2329 36))
                                     (display "\n")
                                     (cons x8291 x8289)))))
                                (begin
                                  (write '(funapp 2330 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2330 38))
                                     (display "\n")
                                     'posn)
                                   x8288)))))
                             (begin
                               (write '(funapp 2331 30))
                               (display "\n")
                               (cons
                                x8287
                                (begin
                                  (write '(funapp 2331 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2332 27))
                            (display "\n")
                            (cons x8292 x8286)))))
                       (begin
                         (write '(funapp 2333 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2333 29))
                            (display "\n")
                            'world)
                          x8285))))
                     (x8283 (input)))
                    (begin
                      (write '(funapp 2335 21))
                      (display "\n")
                      (x8297 x8284 x8283))))
                  (g8173
                   (letrec*
                    ((x8316
                      (begin
                        (write '(funapp 2339 23))
                        (display "\n")
                        ((lambda (j7399 k7400 f7401)
                           (letrec*
                            ((g8317
                              (lambda (g7398)
                                (letrec*
                                 ((g8318
                                   (letrec*
                                    ((x8319
                                      (letrec*
                                       ((x8320
                                         (begin
                                           (write '(funapp 2348 46))
                                           (display "\n")
                                           (WORLD/C j7399 k7400 g7398))))
                                       (begin
                                         (write '(funapp 2349 38))
                                         (display "\n")
                                         (f7401 x8320)))))
                                    (begin
                                      (write '(funapp 2350 35))
                                      (display "\n")
                                      (boolean?/c j7399 k7400 x8319)))))
                                 g8318))))
                            g8317))
                         (begin
                           (write '(funapp 2353 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2354 23))
                           (display "\n")
                           'importer)
                         game-over?)))
                     (x8303
                      (letrec*
                       ((x8304
                         (letrec*
                          ((x8311
                            (letrec*
                             ((x8312
                               (letrec*
                                ((x8315 (input))
                                 (x8313
                                  (letrec*
                                   ((x8314 (input)))
                                   (begin
                                     (write '(funapp 2368 36))
                                     (display "\n")
                                     (cons
                                      x8314
                                      (begin
                                        (write '(funapp 2368 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2369 33))
                                  (display "\n")
                                  (cons x8315 x8313)))))
                             (begin
                               (write '(funapp 2370 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2370 35))
                                  (display "\n")
                                  'snake)
                                x8312))))
                           (x8305
                            (letrec*
                             ((x8306
                               (letrec*
                                ((x8307
                                  (letrec*
                                   ((x8310 (input))
                                    (x8308
                                     (letrec*
                                      ((x8309 (input)))
                                      (begin
                                        (write '(funapp 2381 39))
                                        (display "\n")
                                        (cons
                                         x8309
                                         (begin
                                           (write '(funapp 2381 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2382 36))
                                     (display "\n")
                                     (cons x8310 x8308)))))
                                (begin
                                  (write '(funapp 2383 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2383 38))
                                     (display "\n")
                                     'posn)
                                   x8307)))))
                             (begin
                               (write '(funapp 2384 30))
                               (display "\n")
                               (cons
                                x8306
                                (begin
                                  (write '(funapp 2384 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2385 27))
                            (display "\n")
                            (cons x8311 x8305)))))
                       (begin
                         (write '(funapp 2386 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2386 29))
                            (display "\n")
                            'world)
                          x8304)))))
                    (begin
                      (write '(funapp 2387 21))
                      (display "\n")
                      (x8316 x8303))))
                  (g8174
                   (letrec*
                    ((x8334
                      (begin
                        (write '(funapp 2391 23))
                        (display "\n")
                        ((lambda (j7403 k7404 f7405)
                           (letrec*
                            ((g8335
                              (lambda (g7402)
                                (letrec*
                                 ((g8336
                                   (letrec*
                                    ((x8337
                                      (letrec*
                                       ((x8338
                                         (begin
                                           (write '(funapp 2400 46))
                                           (display "\n")
                                           (WORLD/C j7403 k7404 g7402))))
                                       (begin
                                         (write '(funapp 2401 38))
                                         (display "\n")
                                         (f7405 x8338)))))
                                    (begin
                                      (write '(funapp 2402 35))
                                      (display "\n")
                                      (image/c j7403 k7404 x8337)))))
                                 g8336))))
                            g8335))
                         (begin
                           (write '(funapp 2405 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2406 23))
                           (display "\n")
                           'importer)
                         world->scene)))
                     (x8321
                      (letrec*
                       ((x8322
                         (letrec*
                          ((x8329
                            (letrec*
                             ((x8330
                               (letrec*
                                ((x8333 (input))
                                 (x8331
                                  (letrec*
                                   ((x8332 (input)))
                                   (begin
                                     (write '(funapp 2420 36))
                                     (display "\n")
                                     (cons
                                      x8332
                                      (begin
                                        (write '(funapp 2420 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 2421 33))
                                  (display "\n")
                                  (cons x8333 x8331)))))
                             (begin
                               (write '(funapp 2422 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 2422 35))
                                  (display "\n")
                                  'snake)
                                x8330))))
                           (x8323
                            (letrec*
                             ((x8324
                               (letrec*
                                ((x8325
                                  (letrec*
                                   ((x8328 (input))
                                    (x8326
                                     (letrec*
                                      ((x8327 (input)))
                                      (begin
                                        (write '(funapp 2433 39))
                                        (display "\n")
                                        (cons
                                         x8327
                                         (begin
                                           (write '(funapp 2433 50))
                                           (display "\n")
                                           '()))))))
                                   (begin
                                     (write '(funapp 2434 36))
                                     (display "\n")
                                     (cons x8328 x8326)))))
                                (begin
                                  (write '(funapp 2435 33))
                                  (display "\n")
                                  (cons
                                   (begin
                                     (write '(funapp 2435 38))
                                     (display "\n")
                                     'posn)
                                   x8325)))))
                             (begin
                               (write '(funapp 2436 30))
                               (display "\n")
                               (cons
                                x8324
                                (begin
                                  (write '(funapp 2436 41))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2437 27))
                            (display "\n")
                            (cons x8329 x8323)))))
                       (begin
                         (write '(funapp 2438 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2438 29))
                            (display "\n")
                            'world)
                          x8322)))))
                    (begin
                      (write '(funapp 2439 21))
                      (display "\n")
                      (x8334 x8321))))
                  (g8175
                   (letrec*
                    ((x8345
                      (begin
                        (write '(funapp 2443 23))
                        (display "\n")
                        ((lambda (j7408 k7409 f7410)
                           (letrec*
                            ((g8346
                              (lambda (g7406 g7407)
                                (letrec*
                                 ((g8347
                                   (letrec*
                                    ((x8348
                                      (letrec*
                                       ((x8350
                                         (begin
                                           (write '(funapp 2452 46))
                                           (display "\n")
                                           (POSN/C j7408 k7409 g7406)))
                                        (x8349
                                         (begin
                                           (write '(funapp 2453 46))
                                           (display "\n")
                                           (image/c j7408 k7409 g7407))))
                                       (begin
                                         (write '(funapp 2454 38))
                                         (display "\n")
                                         (f7410 x8350 x8349)))))
                                    (begin
                                      (write '(funapp 2455 35))
                                      (display "\n")
                                      (image/c j7408 k7409 x8348)))))
                                 g8347))))
                            g8346))
                         (begin
                           (write '(funapp 2458 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2459 23))
                           (display "\n")
                           'importer)
                         food+scene)))
                     (x8340
                      (letrec*
                       ((x8341
                         (letrec*
                          ((x8344 (input))
                           (x8342
                            (letrec*
                             ((x8343 (input)))
                             (begin
                               (write '(funapp 2467 56))
                               (display "\n")
                               (cons
                                x8343
                                (begin
                                  (write '(funapp 2467 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2468 27))
                            (display "\n")
                            (cons x8344 x8342)))))
                       (begin
                         (write '(funapp 2469 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2469 29))
                            (display "\n")
                            'posn)
                          x8341))))
                     (x8339
                      (begin
                        (write '(funapp 2470 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2470 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2470 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2471 21))
                      (display "\n")
                      (x8345 x8340 x8339))))
                  (g8176
                   (letrec*
                    ((x8355
                      (begin
                        (write '(funapp 2475 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8356
                              (lambda (g7411 g7412 g7413 g7414)
                                (letrec*
                                 ((g8357
                                   (letrec*
                                    ((x8358
                                      (letrec*
                                       ((x8362
                                         (begin
                                           (write '(funapp 2484 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7411)))
                                        (x8361
                                         (begin
                                           (write '(funapp 2485 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7412)))
                                        (x8360
                                         (begin
                                           (write '(funapp 2486 46))
                                           (display "\n")
                                           (real?/c j7415 k7416 g7413)))
                                        (x8359
                                         (begin
                                           (write '(funapp 2487 46))
                                           (display "\n")
                                           (image/c j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2488 38))
                                         (display "\n")
                                         (f7417 x8362 x8361 x8360 x8359)))))
                                    (begin
                                      (write '(funapp 2489 35))
                                      (display "\n")
                                      (image/c j7415 k7416 x8358)))))
                                 g8357))))
                            g8356))
                         (begin
                           (write '(funapp 2492 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2493 23))
                           (display "\n")
                           'importer)
                         place-image-on-grid)))
                     (x8354
                      (begin
                        (write '(funapp 2495 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2495 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2495 41))
                           (display "\n")
                           '()))))
                     (x8353 (input))
                     (x8352 (input))
                     (x8351
                      (begin
                        (write '(funapp 2498 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2498 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2498 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2499 21))
                      (display "\n")
                      (x8355 x8354 x8353 x8352 x8351))))
                  (g8177
                   (letrec*
                    ((x8369
                      (begin
                        (write '(funapp 2503 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8370
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8371
                                   (letrec*
                                    ((x8372
                                      (letrec*
                                       ((x8374
                                         (begin
                                           (write '(funapp 2512 46))
                                           (display "\n")
                                           (SNAKE/C j7420 k7421 g7418)))
                                        (x8373
                                         (begin
                                           (write '(funapp 2513 46))
                                           (display "\n")
                                           (image/c j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2514 38))
                                         (display "\n")
                                         (f7422 x8374 x8373)))))
                                    (begin
                                      (write '(funapp 2515 35))
                                      (display "\n")
                                      (image/c j7420 k7421 x8372)))))
                                 g8371))))
                            g8370))
                         (begin
                           (write '(funapp 2518 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2519 23))
                           (display "\n")
                           'importer)
                         snake+scene)))
                     (x8364
                      (letrec*
                       ((x8365
                         (letrec*
                          ((x8368 (input))
                           (x8366
                            (letrec*
                             ((x8367 (input)))
                             (begin
                               (write '(funapp 2527 56))
                               (display "\n")
                               (cons
                                x8367
                                (begin
                                  (write '(funapp 2527 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2528 27))
                            (display "\n")
                            (cons x8368 x8366)))))
                       (begin
                         (write '(funapp 2529 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2529 29))
                            (display "\n")
                            'snake)
                          x8365))))
                     (x8363
                      (begin
                        (write '(funapp 2530 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2530 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2530 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2531 21))
                      (display "\n")
                      (x8369 x8364 x8363))))
                  (g8178
                   (letrec*
                    ((x8377
                      (begin
                        (write '(funapp 2535 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8378
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8379
                                   (letrec*
                                    ((x8380
                                      (letrec*
                                       ((x8382
                                         (letrec*
                                          ((x8383
                                            (begin
                                              (write '(funapp 2546 49))
                                              (display "\n")
                                              (listof POSN/C))))
                                          (begin
                                            (write '(funapp 2547 41))
                                            (display "\n")
                                            (x8383 j7425 k7426 g7423))))
                                        (x8381
                                         (begin
                                           (write '(funapp 2548 46))
                                           (display "\n")
                                           (image/c j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2549 38))
                                         (display "\n")
                                         (f7427 x8382 x8381)))))
                                    (begin
                                      (write '(funapp 2550 35))
                                      (display "\n")
                                      (image/c j7425 k7426 x8380)))))
                                 g8379))))
                            g8378))
                         (begin
                           (write '(funapp 2553 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2554 23))
                           (display "\n")
                           'importer)
                         segments+scene)))
                     (x8376 (input))
                     (x8375
                      (begin
                        (write '(funapp 2557 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2557 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2557 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2558 21))
                      (display "\n")
                      (x8377 x8376 x8375))))
                  (g8179
                   (letrec*
                    ((x8390
                      (begin
                        (write '(funapp 2562 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8391
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8392
                                   (letrec*
                                    ((x8393
                                      (letrec*
                                       ((x8395
                                         (begin
                                           (write '(funapp 2571 46))
                                           (display "\n")
                                           (POSN/C j7430 k7431 g7428)))
                                        (x8394
                                         (begin
                                           (write '(funapp 2572 46))
                                           (display "\n")
                                           (image/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 2573 38))
                                         (display "\n")
                                         (f7432 x8395 x8394)))))
                                    (begin
                                      (write '(funapp 2574 35))
                                      (display "\n")
                                      (image/c j7430 k7431 x8393)))))
                                 g8392))))
                            g8391))
                         (begin
                           (write '(funapp 2577 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2578 23))
                           (display "\n")
                           'importer)
                         segment+scene)))
                     (x8385
                      (letrec*
                       ((x8386
                         (letrec*
                          ((x8389 (input))
                           (x8387
                            (letrec*
                             ((x8388 (input)))
                             (begin
                               (write '(funapp 2586 56))
                               (display "\n")
                               (cons
                                x8388
                                (begin
                                  (write '(funapp 2586 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2587 27))
                            (display "\n")
                            (cons x8389 x8387)))))
                       (begin
                         (write '(funapp 2588 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2588 29))
                            (display "\n")
                            'posn)
                          x8386))))
                     (x8384
                      (begin
                        (write '(funapp 2589 29))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 2589 34))
                           (display "\n")
                           'image)
                         (begin
                           (write '(funapp 2589 41))
                           (display "\n")
                           '())))))
                    (begin
                      (write '(funapp 2590 21))
                      (display "\n")
                      (x8390 x8385 x8384)))))
                 g8179))))
             g7462))))
         g7460)))
      g7459))))
