(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7450 #t)) g7450)))
    (meta (lambda (v) (letrec* ((g7451 v)) g7451)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7452
          (letrec*
           ((g7453
             (letrec*
              ((x-e7454 lst))
              (letrec*
               ((v1742 x-e7454))
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
                   ((x-cnd7455
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7455
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
           g7453)))
        g7452)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7456 (lambda (v) (letrec* ((g7457 v)) g7457)))) g7456)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7458
          (letrec*
           ((x7459 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7459)))))
        g7458))))
   (letrec*
    ((g7460
      (letrec*
       ((g7461
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
           ((g7462 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7463
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7464
                     (lambda (k j lst)
                       (letrec*
                        ((g7465
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7466
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7466))
                             lst))))
                        g7465))))
                   g7464)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7468
                        g7265
                        (begin
                          (write '(blame g7263 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7467)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7470
                        g7268
                        (begin
                          (write '(blame g7266 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7469)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7472
                        g7271
                        (begin
                          (write '(blame g7269 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7471)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7475 #t)) g7475)) g7274))))
                      (if x-cnd7474
                        g7274
                        (begin
                          (write '(blame g7272 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7473)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7478 #t)) g7478)) g7277))))
                      (if x-cnd7477
                        g7277
                        (begin
                          (write '(blame g7275 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7476)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7480
                        g7280
                        (begin
                          (write '(blame g7278 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7479)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7482
                        g7283
                        (begin
                          (write '(blame g7281 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7481)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7484
                        g7286
                        (begin
                          (write '(blame g7284 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7483)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7485
                     (lambda (k j v)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7487
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7486))))
                   g7485)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7488
                     (lambda (k j v)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7490
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7494
                                (letrec*
                                 ((x7495
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7495))))
                               (x7491
                                (letrec*
                                 ((x7493
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7492
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7493 k j x7492)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7494 x7491)))))))
                        g7489))))
                   g7488)))
               (any? (lambda (v) (letrec* ((g7496 #t)) g7496)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7498)))))
                   g7497)))
               (nonzero?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x-cnd7500
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7501
                                (letrec*
                                 ((x7502
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7502)))))
                              g7501))
                           g7289))))
                      (if x-cnd7500
                        g7289
                        (begin
                          (write '(blame g7287 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7499)))
               (meta (lambda (v) (letrec* ((g7503 v)) g7503)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7505
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7506
                             (letrec*
                              ((x7507
                                (letrec*
                                 ((x7509
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7508
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7294 x7509 x7508)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7507)))))
                           g7506))))
                      g7505))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7504
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7504)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7511
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7512
                             (letrec*
                              ((x7513
                                (letrec*
                                 ((x7515
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7514
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7299 x7515 x7514)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7513)))))
                           g7512))))
                      g7511))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7510
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7510)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7517
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7518
                             (letrec*
                              ((x7519
                                (letrec*
                                 ((x7521
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7520
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7304 x7521 x7520)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7519)))))
                           g7518))))
                      g7517))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7516
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7516)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7523
                        (lambda (g7305 g7306)
                          (letrec*
                           ((g7524
                             (letrec*
                              ((x7525
                                (letrec*
                                 ((x7527
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7307 k7308 g7305)))
                                  (x7526
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7309 x7527 x7526)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7307 k7308 x7525)))))
                           g7524))))
                      g7523))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7522
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7522)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7529
                        (lambda (g7310)
                          (letrec*
                           ((g7530
                             (letrec*
                              ((x7531
                                (letrec*
                                 ((x7532
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7313 x7532)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7311 k7312 x7531)))))
                           g7530))))
                      g7529))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7528
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7528)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7534
                        (lambda (g7314)
                          (letrec*
                           ((g7535
                             (letrec*
                              ((x7536
                                (letrec*
                                 ((x7537
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7317 x7537)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7315 k7316 x7536)))))
                           g7535))))
                      g7534))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7533
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7533)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7539
                        (lambda (g7318 g7319)
                          (letrec*
                           ((g7540
                             (letrec*
                              ((x7541
                                (letrec*
                                 ((x7543
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7320 k7321 g7318)))
                                  (x7542
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7322 x7543 x7542)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7320 k7321 x7541)))))
                           g7540))))
                      g7539))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7538
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7538)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7545
                        (lambda (g7323)
                          (letrec*
                           ((g7546
                             (letrec*
                              ((x7547
                                (letrec*
                                 ((x7548
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7326 x7548)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7324 k7325 x7547)))))
                           g7546))))
                      g7545))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7544
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7544)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7329 k7330 f7331)
                     (letrec*
                      ((g7550
                        (lambda (g7327 g7328)
                          (letrec*
                           ((g7551
                             (letrec*
                              ((x7552
                                (letrec*
                                 ((x7554
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7329 k7330 g7327)))
                                  (x7553
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7329 k7330 g7328))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7331 x7554 x7553)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7329 k7330 x7552)))))
                           g7551))))
                      g7550))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7549
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7549)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7555
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7555)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7556
                     (letrec*
                      ((x7557
                        (letrec*
                         ((x7558
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7558)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7557)))))
                   g7556)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7559
                     (letrec*
                      ((x7562
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7562))))
                    (g7560
                     (letrec*
                      ((x7563
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7563))))
                    (g7561
                     (letrec*
                      ((x-cnd7564
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7564
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7567
                           (letrec*
                            ((x7568
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7568))))
                          (x7565
                           (letrec*
                            ((x7566
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7566)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7567 x7565)))))))
                   g7561)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7570)))))
                   g7569)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7574)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7573)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7572)))))
                   g7571)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7576
                        (letrec*
                         ((x7577
                           (letrec*
                            ((x7578
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7578)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7577)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7576)))))
                   g7575)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7582
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7582))))
                    (g7580
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7583))))
                    (g7581
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 428 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 429 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7584
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7585 res))
                       g7585))))
                   g7581)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (letrec*
                         ((x7588
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7588)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7587)))))
                   g7586)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7592)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7591)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7590)))))
                   g7589)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7595))))
                    (g7594
                     (letrec*
                      ((x-cnd7596
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7596
                        #f
                        (letrec*
                         ((x-cnd7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7598 k)))))
                         (if x-cnd7597
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7599
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7599)))))))))
                   g7594)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7601)))))
                   g7600)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7604))))
                    (g7603
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7605
                        ""
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7609))))
                          (x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7607)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7608 x7606)))))))
                   g7603)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7615
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7615))))
                   g7612)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7625
                        x
                        (letrec*
                         ((x7627
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7626
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7627 x7626)))))))
                   g7622)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7628
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7628)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x-cnd7630
                        (letrec*
                         ((x7631 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7631)))))
                      (if x-cnd7630
                        (letrec*
                         ((x7632 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7632)))
                        #f))))
                   g7629)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7636
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7637 (if val7243 val7243 #f)))
                             g7637)))))
                       g7636))))
                   g7634)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7639 9)))))
                      (letrec*
                       ((g7640
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7641
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7641 10)))))
                            (letrec*
                             ((g7642
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7643
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7643 32))))))
                             g7642)))))
                       g7640))))
                   g7638)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7648)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7650 #f)) g7650)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7652)))))
                   g7651)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7656
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7654)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7658
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7659
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7659
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7660
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7661
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7661
                                       (letrec*
                                        ((x-cnd7662
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7662
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7663
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7664
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7664
                                             (letrec*
                                              ((x-cnd7665
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7665
                                                (letrec*
                                                 ((x-cnd7666
                                                   (letrec*
                                                    ((x7668
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7667
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7668 x7667)))))
                                                 (if x-cnd7666
                                                   (letrec*
                                                    ((x7670
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7669
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7670 x7669)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7671
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7672
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7672
                                                (letrec*
                                                 ((x-cnd7673
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7673
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7674
                                                       (letrec*
                                                        ((x-cnd7675
                                                          (letrec*
                                                           ((x7676
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  687
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 689 60))
                                                             (display "\n")
                                                             (= x7676 n)))))
                                                        (if x-cnd7675
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7677
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          698
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7678
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7679
                                                                           (letrec*
                                                                            ((x7681
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   707
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7680
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   711
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 714
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7681
                                                                               x7680)))))
                                                                         (if x-cnd7679
                                                                           (letrec*
                                                                            ((x7682
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   720
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 723
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7682)))
                                                                           #f)))))
                                                                    g7678))))
                                                                g7677))))
                                                           (letrec*
                                                            ((g7683
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7683))
                                                          #f))))
                                                     g7674))
                                                   #f))
                                                #f)))))
                                         g7671)))))
                                   g7663)))))
                             g7660)))))
                       g7658))))
                   g7657)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (letrec*
                         ((x7686
                           (letrec*
                            ((x7687
                              (begin
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7687)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7686)))))
                      (begin
                        (write '(funapp 749 23))
                        (display "\n")
                        (cdr x7685)))))
                   g7684)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7689
                        (letrec*
                         ((x7690
                           (letrec*
                            ((x7691
                              (begin
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7691)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7690)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7689)))))
                   g7688)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7692
                     (begin
                       (write '(funapp 762 53))
                       (display "\n")
                       (eq? x y))))
                   g7692)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7696
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7697 (if val7252 val7252 #f)))
                             g7697)))))
                       g7696))))
                   g7694)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7701))))
                    (g7699
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7702))))
                    (g7700
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 790 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 791 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7703
                         (begin
                           (write '(funapp 793 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7704 res))
                       g7704))))
                   g7700)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7705
                     (begin
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7705)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7709))))
                    (g7707
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7710))))
                    (g7708
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7711
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7711))))
                   g7708)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7713
                        (letrec*
                         ((x7714
                           (begin
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7714)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (cdr x7713)))))
                   g7712)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7716
                        (letrec*
                         ((x7717
                           (letrec*
                            ((x7718
                              (begin
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7718)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 826 23))
                        (display "\n")
                        (cdr x7716)))))
                   g7715)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (letrec*
                         ((x7721
                           (begin
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7721)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (car x7720)))))
                   g7719)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7723
                        (letrec*
                         ((x7724
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7724)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7723)))))
                   g7722)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
                        (display "\n")
                        (not x7730)))))
                   g7727)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7734)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7737))))
                    (g7736
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7736)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 870 53))
                       (display "\n")
                       (memq e l))))
                   g7738)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (begin
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7742
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7742)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (letrec*
                      ((x-cnd7746
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7746
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7750))))
                          (x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7748)))))
                         (begin
                           (write '(funapp 892 26))
                           (display "\n")
                           (append x7749 x7747)))))))
                   g7744)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7754)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 903 23))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (cddadr
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 914 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
                        (display "\n")
                        (= 1 x7762)))))
                   g7760)))
               (caadar
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7766)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 931 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7772
                        (letrec*
                         ((g7773
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7773)
                        (letrec*
                         ((x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7775)))))
                         (if x-cnd7774
                           (letrec*
                            ((g7776
                              (letrec*
                               ((x7777
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7777)))))
                            g7776)
                           (letrec*
                            ((x-cnd7778
                              (letrec*
                               ((x7779
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7779)))))
                            (if x-cnd7778
                              (letrec*
                               ((g7780
                                 (letrec*
                                  ((x7782
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7781
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7782 x7781)))))
                               g7780)
                              (letrec*
                               ((x-cnd7783
                                 (letrec*
                                  ((x7784
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7784)))))
                               (if x-cnd7783
                                 (letrec*
                                  ((g7785
                                    (letrec*
                                     ((x7788
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7787
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7786
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7788 x7787 x7786)))))
                                  g7785)
                                 (letrec*
                                  ((x-cnd7789
                                    (letrec*
                                     ((x7790
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7790)))))
                                  (if x-cnd7789
                                    (letrec*
                                     ((g7791
                                       (letrec*
                                        ((x7795
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7794
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7793
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7792
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
                                          (display "\n")
                                          (proc x7795 x7794 x7793 x7792)))))
                                     g7791)
                                    (letrec*
                                     ((x-cnd7796
                                       (letrec*
                                        ((x7797
                                          (letrec*
                                           ((x7798
                                             (begin
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7798)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7797)))))
                                     (if x-cnd7796
                                       (letrec*
                                        ((g7799
                                          (letrec*
                                           ((x7805
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7804
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7803
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7802
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7800
                                             (letrec*
                                              ((x7801
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7801)))))
                                           (begin
                                             (write '(funapp 1011 44))
                                             (display "\n")
                                             (proc
                                              x7805
                                              x7804
                                              x7803
                                              x7802
                                              x7800)))))
                                        g7799)
                                       (letrec*
                                        ((x-cnd7806
                                          (letrec*
                                           ((x7807
                                             (letrec*
                                              ((x7808
                                                (begin
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7808)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7807)))))
                                        (if x-cnd7806
                                          (letrec*
                                           ((g7809
                                             (letrec*
                                              ((x7817
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7816
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7815
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7814
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7812
                                                (letrec*
                                                 ((x7813
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7813))))
                                               (x7810
                                                (letrec*
                                                 ((x7811
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7811)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (proc
                                                 x7817
                                                 x7816
                                                 x7815
                                                 x7814
                                                 x7812
                                                 x7810)))))
                                           g7809)
                                          (letrec*
                                           ((x-cnd7818
                                             (letrec*
                                              ((x7819
                                                (letrec*
                                                 ((x7820
                                                   (begin
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7820)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7819)))))
                                           (if x-cnd7818
                                             (letrec*
                                              ((g7821
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7830
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7829
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7828
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7826
                                                   (letrec*
                                                    ((x7827
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7827))))
                                                  (x7824
                                                   (letrec*
                                                    ((x7825
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7825))))
                                                  (x7822
                                                   (letrec*
                                                    ((x7823
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7823)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
                                                   (display "\n")
                                                   (proc
                                                    x7831
                                                    x7830
                                                    x7829
                                                    x7828
                                                    x7826
                                                    x7824
                                                    x7822)))))
                                              g7821)
                                             (letrec*
                                              ((g7832
                                                (begin
                                                  (write '(funapp 1089 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7832)))))))))))))))))))
                   g7769)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7835))))
                    (g7834
                     (letrec*
                      ((x-cnd7836
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7836
                        #f
                        (letrec*
                         ((x-cnd7837
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7838 e)))))
                         (if x-cnd7837
                           l
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
                              (display "\n")
                              (member e x7839)))))))))
                   g7834)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7843)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7842)))))
                      (begin
                        (write '(funapp 1117 23))
                        (display "\n")
                        (cdr x7841)))))
                   g7840)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7845
                        (letrec*
                         ((x7846
                           (letrec*
                            ((x7847
                              (begin
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7847)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7846)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7845)))))
                   g7844)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7848
                     (begin
                       (write '(funapp 1130 53))
                       (display "\n")
                       (random 42))))
                   g7848)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7850)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7853
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7853))))
                   g7852)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7855)))))
                   g7854)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7857
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7858)))
                           #f))))
                      (letrec*
                       ((g7859
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7859))))
                   g7856)))
               (cddaar
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
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7863)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7861)))))
                   g7860)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x-cnd7865
                        (letrec*
                         ((x7866 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7866 c)))))
                      (if x-cnd7865
                        (letrec*
                         ((x7867 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7867)))
                        #f))))
                   g7864)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7870))))
                    (g7869
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7871
                        #f
                        (letrec*
                         ((x-cnd7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7873 k)))))
                         (if x-cnd7872
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7874)))))))))
                   g7869)))
               (not (lambda (x) (letrec* ((g7875 (if x #f #t))) g7875)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7876
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7876)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((x-cnd7880
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7880
                        #f
                        (letrec*
                         ((x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7882 e)))))
                         (if x-cnd7881
                           l
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7883)))))))))
                   g7878)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7887)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7885)))))
                   g7884)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7891
                             (letrec*
                              ((x-cnd7892
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7892
                                0
                                (letrec*
                                 ((x7893
                                   (letrec*
                                    ((x7894
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7894)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7893)))))))
                           g7891))))
                      (letrec*
                       ((g7895
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7895))))
                   g7889)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7899))))
                    (g7897
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7900))))
                    (g7898
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7901
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7901))))
                   g7898)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7903)))))
                   g7902)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7906)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7905)))))
                   g7904)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7909))))
                    (g7908
                     (letrec*
                      ((x-cnd7910
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7910
                        #f
                        (letrec*
                         ((x-cnd7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7912 k)))))
                         (if x-cnd7911
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7913)))))))))
                   g7908)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7915)))))
                   g7914)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7921)))))
                   g7918)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7923
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7923))))
                   g7922)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((x-cnd7929
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7929
                        #t
                        (letrec*
                         ((x-cnd7930
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7930
                           (letrec*
                            ((g7931
                              (letrec*
                               ((x7933
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7933))))
                             (g7932
                              (letrec*
                               ((x7934
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7934)))))
                            g7932)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7926)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7938
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7936)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7944
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7944))))
                   g7941)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (letrec*
                         ((x7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7948)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7947)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7946)))))
                   g7945)))
               (newline (lambda () (letrec* ((g7949 #f)) g7949)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7952
                        (letrec*
                         ((x7953
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7953))))
                       (x7951
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7952 x7951)))))
                   g7950)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7956))))
                    (g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7957)))))
                   g7955)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7962))))
                    (g7959
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7963))))
                    (g7960
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7965)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7964))))
                    (g7961
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7966
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7968
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7967
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7968 x7967)))))))
                   g7961)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x-cnd7970
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7970
                        a
                        (letrec*
                         ((x7971
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7971)))))))
                   g7969)))
               (image
                (lambda ()
                  (letrec*
                   ((g7972
                     (begin
                       (write '(funapp 1415 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 1415 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1415 63))
                          (display "\n")
                          '())))))
                   g7972)))
               (image?
                (lambda (image7434)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1420 39))
                          (display "\n")
                          (car image7434))))
                      (begin
                        (write '(funapp 1420 57))
                        (display "\n")
                        (eq?
                         x7974
                         (begin
                           (write '(funapp 1420 67))
                           (display "\n")
                           'image))))))
                   g7973)))
               (image/c
                (lambda (j7333 k7334 v7332)
                  (letrec*
                   ((g7975
                     (begin
                       (write '(funapp 1424 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1424 47))
                          (display "\n")
                          '())))))
                   g7975)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g7976
                     (begin (write '(funapp 1425 57)) (display "\n") (image))))
                   g7976)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g7977
                     (begin (write '(funapp 1426 60)) (display "\n") (image))))
                   g7977)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g7978
                     (begin (write '(funapp 1428 54)) (display "\n") (image))))
                   g7978)))
               (posn
                (lambda (x7436 y7437)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1436 34))
                             (display "\n")
                             (cons
                              y7437
                              (begin
                                (write '(funapp 1436 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1437 26))
                           (display "\n")
                           (cons x7436 x7981)))))
                      (begin
                        (write '(funapp 1438 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1438 28)) (display "\n") 'posn)
                         x7980)))))
                   g7979)))
               (posn?
                (lambda (posn7435)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1444 39))
                          (display "\n")
                          (car posn7435))))
                      (begin
                        (write '(funapp 1444 56))
                        (display "\n")
                        (eq?
                         x7983
                         (begin
                           (write '(funapp 1444 66))
                           (display "\n")
                           'posn))))))
                   g7982)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1449 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1449 58))
                        (display "\n")
                        (car x7985)))))
                   g7984)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7987
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1456 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1456 61))
                           (display "\n")
                           (cdr x7988)))))
                      (begin
                        (write '(funapp 1457 23))
                        (display "\n")
                        (car x7987)))))
                   g7986)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x-cnd7990
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1466 34))
                             (display "\n")
                             (posn-x p1)))
                          (x7991
                           (begin
                             (write '(funapp 1466 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1467 26))
                           (display "\n")
                           (= x7992 x7991)))))
                      (if x-cnd7990
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1470 34))
                             (display "\n")
                             (posn-y p1)))
                          (x7993
                           (begin
                             (write '(funapp 1470 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1471 26))
                           (display "\n")
                           (= x7994 x7993)))
                        #f))))
                   g7989)))
               (snake
                (lambda (dir7441 segs7442)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1481 34))
                             (display "\n")
                             (cons
                              segs7442
                              (begin
                                (write '(funapp 1481 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (cons dir7441 x7997)))))
                      (begin
                        (write '(funapp 1483 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1483 28))
                           (display "\n")
                           'snake)
                         x7996)))))
                   g7995)))
               (snake?
                (lambda (snake7440)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 1489 39))
                          (display "\n")
                          (car snake7440))))
                      (begin
                        (write '(funapp 1489 57))
                        (display "\n")
                        (eq?
                         x7999
                         (begin
                           (write '(funapp 1489 67))
                           (display "\n")
                           'snake))))))
                   g7998)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1494 45))
                          (display "\n")
                          (cdr snake))))
                      (begin
                        (write '(funapp 1494 59))
                        (display "\n")
                        (car x8001)))))
                   g8000)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1501 48))
                             (display "\n")
                             (cdr snake))))
                         (begin
                           (write '(funapp 1501 62))
                           (display "\n")
                           (cdr x8004)))))
                      (begin
                        (write '(funapp 1502 23))
                        (display "\n")
                        (car x8003)))))
                   g8002)))
               (world
                (lambda (snake7446 food7447)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1511 34))
                             (display "\n")
                             (cons
                              food7447
                              (begin
                                (write '(funapp 1511 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1512 26))
                           (display "\n")
                           (cons snake7446 x8007)))))
                      (begin
                        (write '(funapp 1513 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1513 28))
                           (display "\n")
                           'world)
                         x8006)))))
                   g8005)))
               (world?
                (lambda (world7445)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x8009
                        (begin
                          (write '(funapp 1519 39))
                          (display "\n")
                          (car world7445))))
                      (begin
                        (write '(funapp 1519 57))
                        (display "\n")
                        (eq?
                         x8009
                         (begin
                           (write '(funapp 1519 67))
                           (display "\n")
                           'world))))))
                   g8008)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 1524 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1524 59))
                        (display "\n")
                        (car x8011)))))
                   g8010)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x8013
                        (letrec*
                         ((x8014
                           (begin
                             (write '(funapp 1531 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1531 62))
                           (display "\n")
                           (cdr x8014)))))
                      (begin
                        (write '(funapp 1532 23))
                        (display "\n")
                        (car x8013)))))
                   g8012)))
               (DIR/C
                (lambda (g7339 g7340 g7341)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x-cnd8016
                        (begin
                          (write '(funapp 1540 25))
                          (display "\n")
                          ((lambda (v7338)
                             (letrec*
                              ((g8017
                                (letrec*
                                 ((x-cnd8018
                                   (begin
                                     (write '(funapp 1544 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1544 48))
                                        (display "\n")
                                        'up)
                                      v7338))))
                                 (if x-cnd8018
                                   #t
                                   (letrec*
                                    ((x-cnd8019
                                      (begin
                                        (write '(funapp 1548 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1548 51))
                                           (display "\n")
                                           'down)
                                         v7338))))
                                    (if x-cnd8019
                                      #t
                                      (letrec*
                                       ((x-cnd8020
                                         (begin
                                           (write '(funapp 1552 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1552 54))
                                              (display "\n")
                                              'left)
                                            v7338))))
                                       (if x-cnd8020
                                         #t
                                         (begin
                                           (write '(funapp 1555 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1555 44))
                                              (display "\n")
                                              'right)
                                            v7338))))))))))
                              g8017))
                           g7341))))
                      (if x-cnd8016
                        g7341
                        (begin
                          (write '(blame g7339 1560 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7339)))))))
                   g8015)))
               (POSN/C
                (lambda (j7343 k7344 v7342)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((checked7345
                        (letrec*
                         ((x8022
                           (begin
                             (write '(funapp 1578 34))
                             (display "\n")
                             (car v7342))))
                         (begin
                           (write '(funapp 1579 26))
                           (display "\n")
                           (real?/c j7343 k7344 x8022)))))
                      (letrec*
                       ((g8023
                         (letrec*
                          ((checked7346
                            (letrec*
                             ((x8024
                               (letrec*
                                ((x8025
                                  (begin
                                    (write '(funapp 1586 49))
                                    (display "\n")
                                    (cdr v7342))))
                                (begin
                                  (write '(funapp 1586 63))
                                  (display "\n")
                                  (car x8025)))))
                             (begin
                               (write '(funapp 1587 30))
                               (display "\n")
                               (real?/c j7343 k7344 x8024)))))
                          (letrec*
                           ((g8026
                             (letrec*
                              ((x8027
                                (letrec*
                                 ((x8028
                                   (begin
                                     (write '(funapp 1593 42))
                                     (display "\n")
                                     (cons
                                      checked7346
                                      (begin
                                        (write '(funapp 1593 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1594 34))
                                   (display "\n")
                                   (cons checked7345 x8028)))))
                              (begin
                                (write '(funapp 1595 31))
                                (display "\n")
                                (cons posn x8027)))))
                           g8026))))
                       g8023))))
                   g8021)))
               (SNAKE/C
                (lambda (j7349 k7350 v7348)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((checked7351
                        (letrec*
                         ((x8030
                           (begin
                             (write '(funapp 1606 34))
                             (display "\n")
                             (car v7348))))
                         (begin
                           (write '(funapp 1607 26))
                           (display "\n")
                           (DIR/C j7349 k7350 x8030)))))
                      (letrec*
                       ((g8031
                         (letrec*
                          ((checked7352
                            (letrec*
                             ((x8034
                               (letrec*
                                ((x8035
                                  (begin
                                    (write '(funapp 1615 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1616 33))
                                  (display "\n")
                                  (and/c cons?/c x8035))))
                              (x8032
                               (letrec*
                                ((x8033
                                  (begin
                                    (write '(funapp 1618 49))
                                    (display "\n")
                                    (cdr v7348))))
                                (begin
                                  (write '(funapp 1618 63))
                                  (display "\n")
                                  (car x8033)))))
                             (begin
                               (write '(funapp 1619 30))
                               (display "\n")
                               (x8034 j7349 k7350 x8032)))))
                          (letrec*
                           ((g8036
                             (letrec*
                              ((x8037
                                (letrec*
                                 ((x8038
                                   (begin
                                     (write '(funapp 1625 42))
                                     (display "\n")
                                     (cons
                                      checked7352
                                      (begin
                                        (write '(funapp 1625 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1626 34))
                                   (display "\n")
                                   (cons checked7351 x8038)))))
                              (begin
                                (write '(funapp 1627 31))
                                (display "\n")
                                (cons snake x8037)))))
                           g8036))))
                       g8031))))
                   g8029)))
               (WORLD/C
                (lambda (j7355 k7356 v7354)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((checked7357
                        (letrec*
                         ((x8040
                           (begin
                             (write '(funapp 1638 34))
                             (display "\n")
                             (car v7354))))
                         (begin
                           (write '(funapp 1639 26))
                           (display "\n")
                           (SNAKE/C j7355 k7356 x8040)))))
                      (letrec*
                       ((g8041
                         (letrec*
                          ((checked7358
                            (letrec*
                             ((x8042
                               (letrec*
                                ((x8043
                                  (begin
                                    (write '(funapp 1646 49))
                                    (display "\n")
                                    (cdr v7354))))
                                (begin
                                  (write '(funapp 1646 63))
                                  (display "\n")
                                  (car x8043)))))
                             (begin
                               (write '(funapp 1647 30))
                               (display "\n")
                               (POSN/C j7355 k7356 x8042)))))
                          (letrec*
                           ((g8044
                             (letrec*
                              ((x8045
                                (letrec*
                                 ((x8046
                                   (begin
                                     (write '(funapp 1653 42))
                                     (display "\n")
                                     (cons
                                      checked7358
                                      (begin
                                        (write '(funapp 1653 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1654 34))
                                   (display "\n")
                                   (cons checked7357 x8046)))))
                              (begin
                                (write '(funapp 1655 31))
                                (display "\n")
                                (cons world x8045)))))
                           g8044))))
                       g8041))))
                   g8039)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1662 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1663 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1665 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1666 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1667 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1669 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8048
                   (letrec*
                    ((x8049
                      (letrec*
                       ((x8050
                         (begin
                           (write '(funapp 1674 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1674 59))
                         (display "\n")
                         (cons x8050 empty)))))
                    (begin
                      (write '(funapp 1675 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1675 27)) (display "\n") 'right)
                       x8049))))
                  (x8047
                   (begin
                     (write '(funapp 1676 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1677 18))
                   (display "\n")
                   (world x8048 x8047))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8052
                        (letrec*
                         ((x8053
                           (begin
                             (write '(funapp 1684 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1684 61))
                           (display "\n")
                           (car x8053)))))
                      (begin
                        (write '(funapp 1685 23))
                        (display "\n")
                        (head-collide? x8052)))))
                   g8051)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8054
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x8055
                           (begin
                             (write '(funapp 1692 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1692 63))
                           (display "\n")
                           (<= x8055 0)))))
                      (letrec*
                       ((g8056
                         (if val7259
                           val7259
                           (letrec*
                            ((val7260
                              (letrec*
                               ((x8057
                                 (begin
                                   (write '(funapp 1700 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1701 32))
                                 (display "\n")
                                 (>= x8057 BOARD-WIDTH)))))
                            (letrec*
                             ((g8058
                               (if val7260
                                 val7260
                                 (letrec*
                                  ((val7261
                                    (letrec*
                                     ((x8059
                                       (begin
                                         (write '(funapp 1709 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1710 38))
                                       (display "\n")
                                       (<= x8059 0)))))
                                  (letrec*
                                   ((g8060
                                     (if val7261
                                       val7261
                                       (letrec*
                                        ((x8061
                                          (begin
                                            (write '(funapp 1716 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1717 41))
                                          (display "\n")
                                          (>= x8061 BOARD-HEIGHT))))))
                                   g8060)))))
                             g8058)))))
                       g8056))))
                   g8054)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8062
                     (letrec*
                      ((x8065
                        (letrec*
                         ((x8066
                           (begin
                             (write '(funapp 1727 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1727 67))
                           (display "\n")
                           (car x8066))))
                       (x8063
                        (letrec*
                         ((x8064
                           (begin
                             (write '(funapp 1729 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1729 61))
                           (display "\n")
                           (cdr x8064)))))
                      (begin
                        (write '(funapp 1730 23))
                        (display "\n")
                        (segs-self-collide? x8065 x8063)))))
                   g8062)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x-cnd8068
                        (begin
                          (write '(funapp 1737 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8068
                        (letrec* ((g8069 #f)) g8069)
                        (letrec*
                         ((g8070
                           (letrec*
                            ((x8073
                              (letrec*
                               ((x8074
                                 (begin
                                   (write '(funapp 1744 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 1744 61))
                                 (display "\n")
                                 (posn=? x8074 h))))
                             (x8071
                              (letrec*
                               ((x8072
                                 (begin
                                   (write '(funapp 1747 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 1748 32))
                                 (display "\n")
                                 (segs-self-collide? h x8072)))))
                            (begin
                              (write '(funapp 1749 29))
                              (display "\n")
                              (or x8073 x8071)))))
                         g8070)))))
                   g8067)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8075
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 1757 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8076
                         (letrec*
                          ((x-cnd8077
                            (begin
                              (write '(funapp 1761 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8077
                            (letrec* ((g8078 empty)) g8078)
                            (letrec*
                             ((g8079
                               (letrec*
                                ((x8081
                                  (begin
                                    (write '(funapp 1767 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8080
                                  (begin
                                    (write '(funapp 1767 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 1768 33))
                                  (display "\n")
                                  (cons x8081 x8080)))))
                             g8079)))))
                       g8076))))
                   g8075)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8082
                     (letrec*
                      ((x-cnd8083
                        (begin
                          (write '(funapp 1777 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1777 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8083
                        (letrec*
                         ((g8084
                           (letrec*
                            ((x8086
                              (letrec*
                               ((x8087
                                 (begin
                                   (write '(funapp 1783 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 1783 63))
                                 (display "\n")
                                 (add1 x8087))))
                             (x8085
                              (begin
                                (write '(funapp 1784 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 1785 29))
                              (display "\n")
                              (posn x8086 x8085)))))
                         g8084)
                        (letrec*
                         ((x-cnd8088
                           (begin
                             (write '(funapp 1788 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1788 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8088
                           (letrec*
                            ((g8089
                              (letrec*
                               ((x8091
                                 (letrec*
                                  ((x8092
                                    (begin
                                      (write '(funapp 1794 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1794 66))
                                    (display "\n")
                                    (sub1 x8092))))
                                (x8090
                                 (begin
                                   (write '(funapp 1795 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1796 32))
                                 (display "\n")
                                 (posn x8091 x8090)))))
                            g8089)
                           (letrec*
                            ((x-cnd8093
                              (begin
                                (write '(funapp 1799 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 1799 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8093
                              (letrec*
                               ((g8094
                                 (letrec*
                                  ((x8097
                                    (begin
                                      (write '(funapp 1804 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8095
                                    (letrec*
                                     ((x8096
                                       (begin
                                         (write '(funapp 1807 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1808 38))
                                       (display "\n")
                                       (sub1 x8096)))))
                                  (begin
                                    (write '(funapp 1809 35))
                                    (display "\n")
                                    (posn x8097 x8095)))))
                               g8094)
                              (letrec*
                               ((g8098
                                 (letrec*
                                  ((x8101
                                    (begin
                                      (write '(funapp 1814 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8099
                                    (letrec*
                                     ((x8100
                                       (begin
                                         (write '(funapp 1817 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1818 38))
                                       (display "\n")
                                       (add1 x8100)))))
                                  (begin
                                    (write '(funapp 1819 35))
                                    (display "\n")
                                    (posn x8101 x8099)))))
                               g8098)))))))))
                   g8082)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1827 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8103
                         (letrec*
                          ((x8104
                            (letrec*
                             ((x8107
                               (letrec*
                                ((x8108
                                  (letrec*
                                   ((x8109
                                     (begin
                                       (write '(funapp 1837 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1838 36))
                                     (display "\n")
                                     (car x8109)))))
                                (begin
                                  (write '(funapp 1839 33))
                                  (display "\n")
                                  (next-head x8108 d))))
                              (x8105
                               (letrec*
                                ((x8106
                                  (begin
                                    (write '(funapp 1842 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 1843 33))
                                  (display "\n")
                                  (cut-tail x8106)))))
                             (begin
                               (write '(funapp 1844 30))
                               (display "\n")
                               (cons x8107 x8105)))))
                          (begin
                            (write '(funapp 1845 27))
                            (display "\n")
                            (snake d x8104)))))
                       g8103))))
                   g8102)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8110
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1853 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8111
                         (letrec*
                          ((x8112
                            (letrec*
                             ((x8114
                               (letrec*
                                ((x8115
                                  (letrec*
                                   ((x8116
                                     (begin
                                       (write '(funapp 1863 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1864 36))
                                     (display "\n")
                                     (car x8116)))))
                                (begin
                                  (write '(funapp 1865 33))
                                  (display "\n")
                                  (next-head x8115 d))))
                              (x8113
                               (begin
                                 (write '(funapp 1866 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 1867 30))
                               (display "\n")
                               (cons x8114 x8113)))))
                          (begin
                            (write '(funapp 1868 27))
                            (display "\n")
                            (snake d x8112)))))
                       g8111))))
                   g8110)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8117
                     (letrec*
                      ((x-cnd8118
                        (begin
                          (write '(funapp 1876 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8118
                        (letrec*
                         ((g8119
                           (begin
                             (write '(funapp 1878 42))
                             (display "\n")
                             (snake-eat w))))
                         g8119)
                        (letrec*
                         ((g8120
                           (letrec*
                            ((x8122
                              (letrec*
                               ((x8123
                                 (begin
                                   (write '(funapp 1884 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 1885 32))
                                 (display "\n")
                                 (snake-slither x8123))))
                             (x8121
                              (begin
                                (write '(funapp 1886 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 1887 29))
                              (display "\n")
                              (world x8122 x8121)))))
                         g8120)))))
                   g8117)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1895 31))
                          (display "\n")
                          (world-food w)))
                       (x8125
                        (letrec*
                         ((x8126
                           (letrec*
                            ((x8127
                              (begin
                                (write '(funapp 1900 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1901 29))
                              (display "\n")
                              (snake-segs x8127)))))
                         (begin
                           (write '(funapp 1902 26))
                           (display "\n")
                           (car x8126)))))
                      (begin
                        (write '(funapp 1903 23))
                        (display "\n")
                        (posn=? x8128 x8125)))))
                   g8124)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8130
                        (begin
                          (write '(funapp 1909 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 1909 58))
                        (display "\n")
                        (snake dir x8130)))))
                   g8129)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8133
                        (letrec*
                         ((x8134
                           (begin
                             (write '(funapp 1918 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1919 26))
                           (display "\n")
                           (snake-change-direction x8134 dir))))
                       (x8132
                        (begin
                          (write '(funapp 1920 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 1921 23))
                        (display "\n")
                        (world x8133 x8132)))))
                   g8131)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (begin
                             (write '(funapp 1929 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1929 60))
                           (display "\n")
                           (snake-grow x8140))))
                       (x8136
                        (letrec*
                         ((x8138
                           (begin
                             (write '(funapp 1932 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8137
                           (begin
                             (write '(funapp 1932 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 1933 26))
                           (display "\n")
                           (posn x8138 x8137)))))
                      (begin
                        (write '(funapp 1934 23))
                        (display "\n")
                        (world x8139 x8136)))))
                   g8135)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x-cnd8142
                        (begin
                          (write '(funapp 1941 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8142
                        (letrec*
                         ((g8143
                           (begin
                             (write '(funapp 1943 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 1943 61))
                                (display "\n")
                                'up)))))
                         g8143)
                        (letrec*
                         ((x-cnd8144
                           (begin
                             (write '(funapp 1945 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8144
                           (letrec*
                            ((g8145
                              (begin
                                (write '(funapp 1947 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 1947 64))
                                   (display "\n")
                                   'down)))))
                            g8145)
                           (letrec*
                            ((x-cnd8146
                              (begin
                                (write '(funapp 1949 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8146
                              (letrec*
                               ((g8147
                                 (begin
                                   (write '(funapp 1952 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 1952 59))
                                      (display "\n")
                                      'left)))))
                               g8147)
                              (letrec*
                               ((x-cnd8148
                                 (begin
                                   (write '(funapp 1955 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8148
                                 (letrec*
                                  ((g8149
                                    (begin
                                      (write '(funapp 1958 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 1958 62))
                                         (display "\n")
                                         'right)))))
                                  g8149)
                                 (letrec* ((g8150 w)) g8150)))))))))))
                   g8141)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((val7262
                        (letrec*
                         ((x8152
                           (begin
                             (write '(funapp 1969 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1970 26))
                           (display "\n")
                           (snake-wall-collide? x8152)))))
                      (letrec*
                       ((g8153
                         (if val7262
                           val7262
                           (letrec*
                            ((x8154
                              (begin
                                (write '(funapp 1976 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1977 29))
                              (display "\n")
                              (snake-self-collide? x8154))))))
                       g8153))))
                   g8151)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1985 31))
                          (display "\n")
                          (world-snake w)))
                       (x8156
                        (letrec*
                         ((x8157
                           (begin
                             (write '(funapp 1988 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 1989 26))
                           (display "\n")
                           (food+scene x8157 BACKGROUND)))))
                      (begin
                        (write '(funapp 1990 23))
                        (display "\n")
                        (snake+scene x8158 x8156)))))
                   g8155)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1997 31))
                          (display "\n")
                          (posn-x f)))
                       (x8160
                        (begin
                          (write '(funapp 1997 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 1998 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8161 x8160 scn)))))
                   g8159)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x8165
                        (begin
                          (write '(funapp 2005 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8163
                        (letrec*
                         ((x8164
                           (begin
                             (write '(funapp 2008 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2009 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8164)))))
                      (begin
                        (write '(funapp 2010 23))
                        (display "\n")
                        (place-image img x8165 x8163 scn)))))
                   g8162)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x8167
                        (begin
                          (write '(funapp 2017 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2018 23))
                        (display "\n")
                        (segments+scene x8167 scn)))))
                   g8166)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x-cnd8169
                        (begin
                          (write '(funapp 2025 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8169
                        (letrec* ((g8170 scn)) g8170)
                        (letrec*
                         ((g8171
                           (letrec*
                            ((x8174
                              (begin
                                (write '(funapp 2031 37))
                                (display "\n")
                                (cdr segs)))
                             (x8172
                              (letrec*
                               ((x8173
                                 (begin
                                   (write '(funapp 2034 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2035 32))
                                 (display "\n")
                                 (segment+scene x8173 scn)))))
                            (begin
                              (write '(funapp 2036 29))
                              (display "\n")
                              (segments+scene x8174 x8172)))))
                         g8171)))))
                   g8168)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x8177
                        (begin
                          (write '(funapp 2044 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8176
                        (begin
                          (write '(funapp 2044 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2045 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8177 x8176 scn)))))
                   g8175))))
              (letrec*
               ((g8178
                 (letrec*
                  ((x8212
                    (begin
                      (write '(funapp 2051 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g8213
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g8214
                                 (letrec*
                                  ((x8215
                                    (letrec*
                                     ((x8217
                                       (begin
                                         (write '(funapp 2060 44))
                                         (display "\n")
                                         (POSN/C j7362 k7363 g7360)))
                                      (x8216
                                       (begin
                                         (write '(funapp 2061 44))
                                         (display "\n")
                                         (POSN/C j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 2062 36))
                                       (display "\n")
                                       (f7364 x8217 x8216)))))
                                  (begin
                                    (write '(funapp 2063 33))
                                    (display "\n")
                                    (boolean?/c j7362 k7363 x8215)))))
                               g8214))))
                          g8213))
                       (begin (write '(funapp 2066 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2067 21))
                         (display "\n")
                         'importer)
                       posn=?)))
                   (x8207
                    (letrec*
                     ((x8208
                       (letrec*
                        ((x8211 (input))
                         (x8209
                          (letrec*
                           ((x8210 (input)))
                           (begin
                             (write '(funapp 2074 60))
                             (display "\n")
                             (cons
                              x8210
                              (begin
                                (write '(funapp 2074 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2075 25))
                          (display "\n")
                          (cons x8211 x8209)))))
                     (begin
                       (write '(funapp 2076 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2076 27)) (display "\n") 'posn)
                        x8208))))
                   (x8202
                    (letrec*
                     ((x8203
                       (letrec*
                        ((x8206 (input))
                         (x8204
                          (letrec*
                           ((x8205 (input)))
                           (begin
                             (write '(funapp 2082 60))
                             (display "\n")
                             (cons
                              x8205
                              (begin
                                (write '(funapp 2082 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2083 25))
                          (display "\n")
                          (cons x8206 x8204)))))
                     (begin
                       (write '(funapp 2084 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2084 27)) (display "\n") 'posn)
                        x8203)))))
                  (begin
                    (write '(funapp 2085 19))
                    (display "\n")
                    (x8212 x8207 x8202))))
                (g8179
                 (begin
                   (write '(funapp 2086 24))
                   (display "\n")
                   (WORLD/C
                    (begin (write '(funapp 2086 32)) (display "\n") 'module)
                    (begin (write '(funapp 2086 40)) (display "\n") 'importer)
                    WORLD)))
                (g8180
                 (begin
                   (write '(funapp 2087 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2087 32)) (display "\n") 'module)
                    (begin (write '(funapp 2087 40)) (display "\n") 'importer)
                    BACKGROUND)))
                (g8181
                 (begin
                   (write '(funapp 2088 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2088 32)) (display "\n") 'module)
                    (begin (write '(funapp 2088 40)) (display "\n") 'importer)
                    FOOD-IMAGE)))
                (g8182
                 (begin
                   (write '(funapp 2089 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2089 32)) (display "\n") 'module)
                    (begin (write '(funapp 2089 40)) (display "\n") 'importer)
                    SEGMENT-IMAGE)))
                (g8183
                 (begin
                   (write '(funapp 2090 24))
                   (display "\n")
                   (real?
                    (begin (write '(funapp 2090 30)) (display "\n") 'module)
                    (begin (write '(funapp 2090 38)) (display "\n") 'importer)
                    GRID-SIZE)))
                (g8184
                 (begin
                   (write '(funapp 2091 24))
                   (display "\n")
                   (real?
                    (begin (write '(funapp 2091 30)) (display "\n") 'module)
                    (begin (write '(funapp 2091 38)) (display "\n") 'importer)
                    BOARD-HEIGHT-PIXELS)))
                (g8185
                 (begin
                   (write '(funapp 2092 24))
                   (display "\n")
                   (real?
                    (begin (write '(funapp 2092 30)) (display "\n") 'module)
                    (begin (write '(funapp 2092 38)) (display "\n") 'importer)
                    BOARD-WIDTH)))
                (g8186
                 (begin
                   (write '(funapp 2093 24))
                   (display "\n")
                   (real?
                    (begin (write '(funapp 2093 30)) (display "\n") 'module)
                    (begin (write '(funapp 2093 38)) (display "\n") 'importer)
                    BOARD-HEIGHT)))
                (g8187
                 (letrec*
                  ((x8223
                    (begin
                      (write '(funapp 2097 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g8224
                            (lambda (g7365)
                              (letrec*
                               ((g8225
                                 (letrec*
                                  ((x8226
                                    (letrec*
                                     ((x8227
                                       (begin
                                         (write '(funapp 2106 44))
                                         (display "\n")
                                         (SNAKE/C j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 2107 36))
                                       (display "\n")
                                       (f7368 x8227)))))
                                  (begin
                                    (write '(funapp 2108 33))
                                    (display "\n")
                                    (boolean?/c j7366 k7367 x8226)))))
                               g8225))))
                          g8224))
                       (begin (write '(funapp 2111 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2112 21))
                         (display "\n")
                         'importer)
                       snake-wall-collide?)))
                   (x8218
                    (letrec*
                     ((x8219
                       (letrec*
                        ((x8222 (input))
                         (x8220
                          (letrec*
                           ((x8221 (input)))
                           (begin
                             (write '(funapp 2119 60))
                             (display "\n")
                             (cons
                              x8221
                              (begin
                                (write '(funapp 2119 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2120 25))
                          (display "\n")
                          (cons x8222 x8220)))))
                     (begin
                       (write '(funapp 2121 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2121 27)) (display "\n") 'snake)
                        x8219)))))
                  (begin
                    (write '(funapp 2122 19))
                    (display "\n")
                    (x8223 x8218))))
                (g8188
                 (letrec*
                  ((x8233
                    (begin
                      (write '(funapp 2126 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g8234
                            (lambda (g7369)
                              (letrec*
                               ((g8235
                                 (letrec*
                                  ((x8236
                                    (letrec*
                                     ((x8237
                                       (begin
                                         (write '(funapp 2135 44))
                                         (display "\n")
                                         (SNAKE/C j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 2136 36))
                                       (display "\n")
                                       (f7372 x8237)))))
                                  (begin
                                    (write '(funapp 2137 33))
                                    (display "\n")
                                    (boolean?/c j7370 k7371 x8236)))))
                               g8235))))
                          g8234))
                       (begin (write '(funapp 2140 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2141 21))
                         (display "\n")
                         'importer)
                       snake-self-collide?)))
                   (x8228
                    (letrec*
                     ((x8229
                       (letrec*
                        ((x8232 (input))
                         (x8230
                          (letrec*
                           ((x8231 (input)))
                           (begin
                             (write '(funapp 2148 60))
                             (display "\n")
                             (cons
                              x8231
                              (begin
                                (write '(funapp 2148 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2149 25))
                          (display "\n")
                          (cons x8232 x8230)))))
                     (begin
                       (write '(funapp 2150 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2150 27)) (display "\n") 'snake)
                        x8229)))))
                  (begin
                    (write '(funapp 2151 19))
                    (display "\n")
                    (x8233 x8228))))
                (g8189
                 (letrec*
                  ((x8239
                    (begin
                      (write '(funapp 2155 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g8240
                            (lambda (g7373)
                              (letrec*
                               ((g8241
                                 (letrec*
                                  ((x8246
                                    (begin
                                      (write '(funapp 2162 41))
                                      (display "\n")
                                      (listof POSN/C)))
                                   (x8242
                                    (letrec*
                                     ((x8243
                                       (letrec*
                                        ((x8244
                                          (letrec*
                                           ((x8245
                                             (begin
                                               (write '(funapp 2169 50))
                                               (display "\n")
                                               (listof POSN/C))))
                                           (begin
                                             (write '(funapp 2170 42))
                                             (display "\n")
                                             (and/c cons?/c x8245)))))
                                        (begin
                                          (write '(funapp 2171 39))
                                          (display "\n")
                                          (x8244 j7374 k7375 g7373)))))
                                     (begin
                                       (write '(funapp 2172 36))
                                       (display "\n")
                                       (f7376 x8243)))))
                                  (begin
                                    (write '(funapp 2173 33))
                                    (display "\n")
                                    (x8246 j7374 k7375 x8242)))))
                               g8241))))
                          g8240))
                       (begin (write '(funapp 2176 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2177 21))
                         (display "\n")
                         'importer)
                       cut-tail)))
                   (x8238 (input)))
                  (begin
                    (write '(funapp 2180 19))
                    (display "\n")
                    (x8239 x8238))))
                (g8190
                 (letrec*
                  ((x8252
                    (begin
                      (write '(funapp 2184 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g8253
                            (lambda (g7377)
                              (letrec*
                               ((g8254
                                 (letrec*
                                  ((x8255
                                    (letrec*
                                     ((x8256
                                       (begin
                                         (write '(funapp 2193 44))
                                         (display "\n")
                                         (SNAKE/C j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 2194 36))
                                       (display "\n")
                                       (f7380 x8256)))))
                                  (begin
                                    (write '(funapp 2195 33))
                                    (display "\n")
                                    (SNAKE/C j7378 k7379 x8255)))))
                               g8254))))
                          g8253))
                       (begin (write '(funapp 2198 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2199 21))
                         (display "\n")
                         'importer)
                       snake-slither)))
                   (x8247
                    (letrec*
                     ((x8248
                       (letrec*
                        ((x8251 (input))
                         (x8249
                          (letrec*
                           ((x8250 (input)))
                           (begin
                             (write '(funapp 2206 60))
                             (display "\n")
                             (cons
                              x8250
                              (begin
                                (write '(funapp 2206 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2207 25))
                          (display "\n")
                          (cons x8251 x8249)))))
                     (begin
                       (write '(funapp 2208 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2208 27)) (display "\n") 'snake)
                        x8248)))))
                  (begin
                    (write '(funapp 2209 19))
                    (display "\n")
                    (x8252 x8247))))
                (g8191
                 (letrec*
                  ((x8262
                    (begin
                      (write '(funapp 2213 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g8263
                            (lambda (g7381)
                              (letrec*
                               ((g8264
                                 (letrec*
                                  ((x8265
                                    (letrec*
                                     ((x8266
                                       (begin
                                         (write '(funapp 2222 44))
                                         (display "\n")
                                         (SNAKE/C j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 2223 36))
                                       (display "\n")
                                       (f7384 x8266)))))
                                  (begin
                                    (write '(funapp 2224 33))
                                    (display "\n")
                                    (SNAKE/C j7382 k7383 x8265)))))
                               g8264))))
                          g8263))
                       (begin (write '(funapp 2227 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2228 21))
                         (display "\n")
                         'importer)
                       snake-grow)))
                   (x8257
                    (letrec*
                     ((x8258
                       (letrec*
                        ((x8261 (input))
                         (x8259
                          (letrec*
                           ((x8260 (input)))
                           (begin
                             (write '(funapp 2235 60))
                             (display "\n")
                             (cons
                              x8260
                              (begin
                                (write '(funapp 2235 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2236 25))
                          (display "\n")
                          (cons x8261 x8259)))))
                     (begin
                       (write '(funapp 2237 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2237 27)) (display "\n") 'snake)
                        x8258)))))
                  (begin
                    (write '(funapp 2238 19))
                    (display "\n")
                    (x8262 x8257))))
                (g8192
                 (letrec*
                  ((x8281
                    (begin
                      (write '(funapp 2242 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g8282
                            (lambda (g7385 g7386)
                              (letrec*
                               ((g8283
                                 (letrec*
                                  ((x8284
                                    (letrec*
                                     ((x8286
                                       (begin
                                         (write '(funapp 2251 44))
                                         (display "\n")
                                         (WORLD/C j7387 k7388 g7385)))
                                      (x8285
                                       (begin
                                         (write '(funapp 2252 44))
                                         (display "\n")
                                         (DIR/C j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 2253 36))
                                       (display "\n")
                                       (f7389 x8286 x8285)))))
                                  (begin
                                    (write '(funapp 2254 33))
                                    (display "\n")
                                    (WORLD/C j7387 k7388 x8284)))))
                               g8283))))
                          g8282))
                       (begin (write '(funapp 2257 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2258 21))
                         (display "\n")
                         'importer)
                       world-change-dir)))
                   (x8268
                    (letrec*
                     ((x8269
                       (letrec*
                        ((x8276
                          (letrec*
                           ((x8277
                             (letrec*
                              ((x8280 (input))
                               (x8278
                                (letrec*
                                 ((x8279 (input)))
                                 (begin
                                   (write '(funapp 2270 60))
                                   (display "\n")
                                   (cons
                                    x8279
                                    (begin
                                      (write '(funapp 2270 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2271 31))
                                (display "\n")
                                (cons x8280 x8278)))))
                           (begin
                             (write '(funapp 2272 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2272 33))
                                (display "\n")
                                'snake)
                              x8277))))
                         (x8270
                          (letrec*
                           ((x8271
                             (letrec*
                              ((x8272
                                (letrec*
                                 ((x8275 (input))
                                  (x8273
                                   (letrec*
                                    ((x8274 (input)))
                                    (begin
                                      (write '(funapp 2283 37))
                                      (display "\n")
                                      (cons
                                       x8274
                                       (begin
                                         (write '(funapp 2283 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2284 34))
                                   (display "\n")
                                   (cons x8275 x8273)))))
                              (begin
                                (write '(funapp 2285 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2285 36))
                                   (display "\n")
                                   'posn)
                                 x8272)))))
                           (begin
                             (write '(funapp 2286 28))
                             (display "\n")
                             (cons
                              x8271
                              (begin
                                (write '(funapp 2286 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2287 25))
                          (display "\n")
                          (cons x8276 x8270)))))
                     (begin
                       (write '(funapp 2288 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2288 27)) (display "\n") 'world)
                        x8269))))
                   (x8267 (input)))
                  (begin
                    (write '(funapp 2290 19))
                    (display "\n")
                    (x8281 x8268 x8267))))
                (g8193
                 (letrec*
                  ((x8300
                    (begin
                      (write '(funapp 2294 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g8301
                            (lambda (g7390)
                              (letrec*
                               ((g8302
                                 (letrec*
                                  ((x8303
                                    (letrec*
                                     ((x8304
                                       (begin
                                         (write '(funapp 2303 44))
                                         (display "\n")
                                         (WORLD/C j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 2304 36))
                                       (display "\n")
                                       (f7393 x8304)))))
                                  (begin
                                    (write '(funapp 2305 33))
                                    (display "\n")
                                    (WORLD/C j7391 k7392 x8303)))))
                               g8302))))
                          g8301))
                       (begin (write '(funapp 2308 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2309 21))
                         (display "\n")
                         'importer)
                       world->world)))
                   (x8287
                    (letrec*
                     ((x8288
                       (letrec*
                        ((x8295
                          (letrec*
                           ((x8296
                             (letrec*
                              ((x8299 (input))
                               (x8297
                                (letrec*
                                 ((x8298 (input)))
                                 (begin
                                   (write '(funapp 2321 60))
                                   (display "\n")
                                   (cons
                                    x8298
                                    (begin
                                      (write '(funapp 2321 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2322 31))
                                (display "\n")
                                (cons x8299 x8297)))))
                           (begin
                             (write '(funapp 2323 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2323 33))
                                (display "\n")
                                'snake)
                              x8296))))
                         (x8289
                          (letrec*
                           ((x8290
                             (letrec*
                              ((x8291
                                (letrec*
                                 ((x8294 (input))
                                  (x8292
                                   (letrec*
                                    ((x8293 (input)))
                                    (begin
                                      (write '(funapp 2334 37))
                                      (display "\n")
                                      (cons
                                       x8293
                                       (begin
                                         (write '(funapp 2334 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2335 34))
                                   (display "\n")
                                   (cons x8294 x8292)))))
                              (begin
                                (write '(funapp 2336 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2336 36))
                                   (display "\n")
                                   'posn)
                                 x8291)))))
                           (begin
                             (write '(funapp 2337 28))
                             (display "\n")
                             (cons
                              x8290
                              (begin
                                (write '(funapp 2337 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2338 25))
                          (display "\n")
                          (cons x8295 x8289)))))
                     (begin
                       (write '(funapp 2339 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2339 27)) (display "\n") 'world)
                        x8288)))))
                  (begin
                    (write '(funapp 2340 19))
                    (display "\n")
                    (x8300 x8287))))
                (g8194
                 (letrec*
                  ((x8319
                    (begin
                      (write '(funapp 2344 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g8320
                            (lambda (g7394 g7395)
                              (letrec*
                               ((g8321
                                 (letrec*
                                  ((x8322
                                    (letrec*
                                     ((x8324
                                       (begin
                                         (write '(funapp 2353 44))
                                         (display "\n")
                                         (WORLD/C j7396 k7397 g7394)))
                                      (x8323
                                       (begin
                                         (write '(funapp 2354 44))
                                         (display "\n")
                                         (string?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 2355 36))
                                       (display "\n")
                                       (f7398 x8324 x8323)))))
                                  (begin
                                    (write '(funapp 2356 33))
                                    (display "\n")
                                    (WORLD/C j7396 k7397 x8322)))))
                               g8321))))
                          g8320))
                       (begin (write '(funapp 2359 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2360 21))
                         (display "\n")
                         'importer)
                       handle-key)))
                   (x8306
                    (letrec*
                     ((x8307
                       (letrec*
                        ((x8314
                          (letrec*
                           ((x8315
                             (letrec*
                              ((x8318 (input))
                               (x8316
                                (letrec*
                                 ((x8317 (input)))
                                 (begin
                                   (write '(funapp 2372 60))
                                   (display "\n")
                                   (cons
                                    x8317
                                    (begin
                                      (write '(funapp 2372 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2373 31))
                                (display "\n")
                                (cons x8318 x8316)))))
                           (begin
                             (write '(funapp 2374 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2374 33))
                                (display "\n")
                                'snake)
                              x8315))))
                         (x8308
                          (letrec*
                           ((x8309
                             (letrec*
                              ((x8310
                                (letrec*
                                 ((x8313 (input))
                                  (x8311
                                   (letrec*
                                    ((x8312 (input)))
                                    (begin
                                      (write '(funapp 2385 37))
                                      (display "\n")
                                      (cons
                                       x8312
                                       (begin
                                         (write '(funapp 2385 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2386 34))
                                   (display "\n")
                                   (cons x8313 x8311)))))
                              (begin
                                (write '(funapp 2387 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2387 36))
                                   (display "\n")
                                   'posn)
                                 x8310)))))
                           (begin
                             (write '(funapp 2388 28))
                             (display "\n")
                             (cons
                              x8309
                              (begin
                                (write '(funapp 2388 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2389 25))
                          (display "\n")
                          (cons x8314 x8308)))))
                     (begin
                       (write '(funapp 2390 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2390 27)) (display "\n") 'world)
                        x8307))))
                   (x8305 (input)))
                  (begin
                    (write '(funapp 2392 19))
                    (display "\n")
                    (x8319 x8306 x8305))))
                (g8195
                 (letrec*
                  ((x8338
                    (begin
                      (write '(funapp 2396 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g8339
                            (lambda (g7399)
                              (letrec*
                               ((g8340
                                 (letrec*
                                  ((x8341
                                    (letrec*
                                     ((x8342
                                       (begin
                                         (write '(funapp 2405 44))
                                         (display "\n")
                                         (WORLD/C j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 2406 36))
                                       (display "\n")
                                       (f7402 x8342)))))
                                  (begin
                                    (write '(funapp 2407 33))
                                    (display "\n")
                                    (boolean?/c j7400 k7401 x8341)))))
                               g8340))))
                          g8339))
                       (begin (write '(funapp 2410 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2411 21))
                         (display "\n")
                         'importer)
                       game-over?)))
                   (x8325
                    (letrec*
                     ((x8326
                       (letrec*
                        ((x8333
                          (letrec*
                           ((x8334
                             (letrec*
                              ((x8337 (input))
                               (x8335
                                (letrec*
                                 ((x8336 (input)))
                                 (begin
                                   (write '(funapp 2423 60))
                                   (display "\n")
                                   (cons
                                    x8336
                                    (begin
                                      (write '(funapp 2423 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2424 31))
                                (display "\n")
                                (cons x8337 x8335)))))
                           (begin
                             (write '(funapp 2425 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2425 33))
                                (display "\n")
                                'snake)
                              x8334))))
                         (x8327
                          (letrec*
                           ((x8328
                             (letrec*
                              ((x8329
                                (letrec*
                                 ((x8332 (input))
                                  (x8330
                                   (letrec*
                                    ((x8331 (input)))
                                    (begin
                                      (write '(funapp 2436 37))
                                      (display "\n")
                                      (cons
                                       x8331
                                       (begin
                                         (write '(funapp 2436 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2437 34))
                                   (display "\n")
                                   (cons x8332 x8330)))))
                              (begin
                                (write '(funapp 2438 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2438 36))
                                   (display "\n")
                                   'posn)
                                 x8329)))))
                           (begin
                             (write '(funapp 2439 28))
                             (display "\n")
                             (cons
                              x8328
                              (begin
                                (write '(funapp 2439 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2440 25))
                          (display "\n")
                          (cons x8333 x8327)))))
                     (begin
                       (write '(funapp 2441 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2441 27)) (display "\n") 'world)
                        x8326)))))
                  (begin
                    (write '(funapp 2442 19))
                    (display "\n")
                    (x8338 x8325))))
                (g8196
                 (letrec*
                  ((x8356
                    (begin
                      (write '(funapp 2446 21))
                      (display "\n")
                      ((lambda (j7404 k7405 f7406)
                         (letrec*
                          ((g8357
                            (lambda (g7403)
                              (letrec*
                               ((g8358
                                 (letrec*
                                  ((x8359
                                    (letrec*
                                     ((x8360
                                       (begin
                                         (write '(funapp 2455 44))
                                         (display "\n")
                                         (WORLD/C j7404 k7405 g7403))))
                                     (begin
                                       (write '(funapp 2456 36))
                                       (display "\n")
                                       (f7406 x8360)))))
                                  (begin
                                    (write '(funapp 2457 33))
                                    (display "\n")
                                    (image/c j7404 k7405 x8359)))))
                               g8358))))
                          g8357))
                       (begin (write '(funapp 2460 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2461 21))
                         (display "\n")
                         'importer)
                       world->scene)))
                   (x8343
                    (letrec*
                     ((x8344
                       (letrec*
                        ((x8351
                          (letrec*
                           ((x8352
                             (letrec*
                              ((x8355 (input))
                               (x8353
                                (letrec*
                                 ((x8354 (input)))
                                 (begin
                                   (write '(funapp 2473 60))
                                   (display "\n")
                                   (cons
                                    x8354
                                    (begin
                                      (write '(funapp 2473 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2474 31))
                                (display "\n")
                                (cons x8355 x8353)))))
                           (begin
                             (write '(funapp 2475 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2475 33))
                                (display "\n")
                                'snake)
                              x8352))))
                         (x8345
                          (letrec*
                           ((x8346
                             (letrec*
                              ((x8347
                                (letrec*
                                 ((x8350 (input))
                                  (x8348
                                   (letrec*
                                    ((x8349 (input)))
                                    (begin
                                      (write '(funapp 2486 37))
                                      (display "\n")
                                      (cons
                                       x8349
                                       (begin
                                         (write '(funapp 2486 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2487 34))
                                   (display "\n")
                                   (cons x8350 x8348)))))
                              (begin
                                (write '(funapp 2488 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2488 36))
                                   (display "\n")
                                   'posn)
                                 x8347)))))
                           (begin
                             (write '(funapp 2489 28))
                             (display "\n")
                             (cons
                              x8346
                              (begin
                                (write '(funapp 2489 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2490 25))
                          (display "\n")
                          (cons x8351 x8345)))))
                     (begin
                       (write '(funapp 2491 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2491 27)) (display "\n") 'world)
                        x8344)))))
                  (begin
                    (write '(funapp 2492 19))
                    (display "\n")
                    (x8356 x8343))))
                (g8197
                 (letrec*
                  ((x8367
                    (begin
                      (write '(funapp 2496 21))
                      (display "\n")
                      ((lambda (j7409 k7410 f7411)
                         (letrec*
                          ((g8368
                            (lambda (g7407 g7408)
                              (letrec*
                               ((g8369
                                 (letrec*
                                  ((x8370
                                    (letrec*
                                     ((x8372
                                       (begin
                                         (write '(funapp 2505 44))
                                         (display "\n")
                                         (POSN/C j7409 k7410 g7407)))
                                      (x8371
                                       (begin
                                         (write '(funapp 2506 44))
                                         (display "\n")
                                         (image/c j7409 k7410 g7408))))
                                     (begin
                                       (write '(funapp 2507 36))
                                       (display "\n")
                                       (f7411 x8372 x8371)))))
                                  (begin
                                    (write '(funapp 2508 33))
                                    (display "\n")
                                    (image/c j7409 k7410 x8370)))))
                               g8369))))
                          g8368))
                       (begin (write '(funapp 2511 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2512 21))
                         (display "\n")
                         'importer)
                       food+scene)))
                   (x8362
                    (letrec*
                     ((x8363
                       (letrec*
                        ((x8366 (input))
                         (x8364
                          (letrec*
                           ((x8365 (input)))
                           (begin
                             (write '(funapp 2519 60))
                             (display "\n")
                             (cons
                              x8365
                              (begin
                                (write '(funapp 2519 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2520 25))
                          (display "\n")
                          (cons x8366 x8364)))))
                     (begin
                       (write '(funapp 2521 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2521 27)) (display "\n") 'posn)
                        x8363))))
                   (x8361
                    (begin
                      (write '(funapp 2522 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2522 32)) (display "\n") 'image)
                       (begin (write '(funapp 2522 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2523 19))
                    (display "\n")
                    (x8367 x8362 x8361))))
                (g8198
                 (letrec*
                  ((x8377
                    (begin
                      (write '(funapp 2527 21))
                      (display "\n")
                      ((lambda (j7416 k7417 f7418)
                         (letrec*
                          ((g8378
                            (lambda (g7412 g7413 g7414 g7415)
                              (letrec*
                               ((g8379
                                 (letrec*
                                  ((x8380
                                    (letrec*
                                     ((x8384
                                       (begin
                                         (write '(funapp 2536 44))
                                         (display "\n")
                                         (image/c j7416 k7417 g7412)))
                                      (x8383
                                       (begin
                                         (write '(funapp 2537 44))
                                         (display "\n")
                                         (real?/c j7416 k7417 g7413)))
                                      (x8382
                                       (begin
                                         (write '(funapp 2538 44))
                                         (display "\n")
                                         (real?/c j7416 k7417 g7414)))
                                      (x8381
                                       (begin
                                         (write '(funapp 2539 44))
                                         (display "\n")
                                         (image/c j7416 k7417 g7415))))
                                     (begin
                                       (write '(funapp 2540 36))
                                       (display "\n")
                                       (f7418 x8384 x8383 x8382 x8381)))))
                                  (begin
                                    (write '(funapp 2541 33))
                                    (display "\n")
                                    (image/c j7416 k7417 x8380)))))
                               g8379))))
                          g8378))
                       (begin (write '(funapp 2544 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2545 21))
                         (display "\n")
                         'importer)
                       place-image-on-grid)))
                   (x8376
                    (begin
                      (write '(funapp 2547 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2547 32)) (display "\n") 'image)
                       (begin (write '(funapp 2547 39)) (display "\n") '()))))
                   (x8375 (input))
                   (x8374 (input))
                   (x8373
                    (begin
                      (write '(funapp 2550 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2550 32)) (display "\n") 'image)
                       (begin (write '(funapp 2550 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2551 19))
                    (display "\n")
                    (x8377 x8376 x8375 x8374 x8373))))
                (g8199
                 (letrec*
                  ((x8391
                    (begin
                      (write '(funapp 2555 21))
                      (display "\n")
                      ((lambda (j7421 k7422 f7423)
                         (letrec*
                          ((g8392
                            (lambda (g7419 g7420)
                              (letrec*
                               ((g8393
                                 (letrec*
                                  ((x8394
                                    (letrec*
                                     ((x8396
                                       (begin
                                         (write '(funapp 2564 44))
                                         (display "\n")
                                         (SNAKE/C j7421 k7422 g7419)))
                                      (x8395
                                       (begin
                                         (write '(funapp 2565 44))
                                         (display "\n")
                                         (image/c j7421 k7422 g7420))))
                                     (begin
                                       (write '(funapp 2566 36))
                                       (display "\n")
                                       (f7423 x8396 x8395)))))
                                  (begin
                                    (write '(funapp 2567 33))
                                    (display "\n")
                                    (image/c j7421 k7422 x8394)))))
                               g8393))))
                          g8392))
                       (begin (write '(funapp 2570 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2571 21))
                         (display "\n")
                         'importer)
                       snake+scene)))
                   (x8386
                    (letrec*
                     ((x8387
                       (letrec*
                        ((x8390 (input))
                         (x8388
                          (letrec*
                           ((x8389 (input)))
                           (begin
                             (write '(funapp 2578 60))
                             (display "\n")
                             (cons
                              x8389
                              (begin
                                (write '(funapp 2578 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2579 25))
                          (display "\n")
                          (cons x8390 x8388)))))
                     (begin
                       (write '(funapp 2580 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2580 27)) (display "\n") 'snake)
                        x8387))))
                   (x8385
                    (begin
                      (write '(funapp 2581 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2581 32)) (display "\n") 'image)
                       (begin (write '(funapp 2581 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2582 19))
                    (display "\n")
                    (x8391 x8386 x8385))))
                (g8200
                 (letrec*
                  ((x8399
                    (begin
                      (write '(funapp 2586 21))
                      (display "\n")
                      ((lambda (j7426 k7427 f7428)
                         (letrec*
                          ((g8400
                            (lambda (g7424 g7425)
                              (letrec*
                               ((g8401
                                 (letrec*
                                  ((x8402
                                    (letrec*
                                     ((x8404
                                       (letrec*
                                        ((x8405
                                          (begin
                                            (write '(funapp 2597 47))
                                            (display "\n")
                                            (listof POSN/C))))
                                        (begin
                                          (write '(funapp 2598 39))
                                          (display "\n")
                                          (x8405 j7426 k7427 g7424))))
                                      (x8403
                                       (begin
                                         (write '(funapp 2599 44))
                                         (display "\n")
                                         (image/c j7426 k7427 g7425))))
                                     (begin
                                       (write '(funapp 2600 36))
                                       (display "\n")
                                       (f7428 x8404 x8403)))))
                                  (begin
                                    (write '(funapp 2601 33))
                                    (display "\n")
                                    (image/c j7426 k7427 x8402)))))
                               g8401))))
                          g8400))
                       (begin (write '(funapp 2604 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2605 21))
                         (display "\n")
                         'importer)
                       segments+scene)))
                   (x8398 (input))
                   (x8397
                    (begin
                      (write '(funapp 2608 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2608 32)) (display "\n") 'image)
                       (begin (write '(funapp 2608 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2609 19))
                    (display "\n")
                    (x8399 x8398 x8397))))
                (g8201
                 (letrec*
                  ((x8412
                    (begin
                      (write '(funapp 2613 21))
                      (display "\n")
                      ((lambda (j7431 k7432 f7433)
                         (letrec*
                          ((g8413
                            (lambda (g7429 g7430)
                              (letrec*
                               ((g8414
                                 (letrec*
                                  ((x8415
                                    (letrec*
                                     ((x8417
                                       (begin
                                         (write '(funapp 2622 44))
                                         (display "\n")
                                         (POSN/C j7431 k7432 g7429)))
                                      (x8416
                                       (begin
                                         (write '(funapp 2623 44))
                                         (display "\n")
                                         (image/c j7431 k7432 g7430))))
                                     (begin
                                       (write '(funapp 2624 36))
                                       (display "\n")
                                       (f7433 x8417 x8416)))))
                                  (begin
                                    (write '(funapp 2625 33))
                                    (display "\n")
                                    (image/c j7431 k7432 x8415)))))
                               g8414))))
                          g8413))
                       (begin (write '(funapp 2628 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2629 21))
                         (display "\n")
                         'importer)
                       segment+scene)))
                   (x8407
                    (letrec*
                     ((x8408
                       (letrec*
                        ((x8411 (input))
                         (x8409
                          (letrec*
                           ((x8410 (input)))
                           (begin
                             (write '(funapp 2636 60))
                             (display "\n")
                             (cons
                              x8410
                              (begin
                                (write '(funapp 2636 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2637 25))
                          (display "\n")
                          (cons x8411 x8409)))))
                     (begin
                       (write '(funapp 2638 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2638 27)) (display "\n") 'posn)
                        x8408))))
                   (x8406
                    (begin
                      (write '(funapp 2639 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2639 32)) (display "\n") 'image)
                       (begin (write '(funapp 2639 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2640 19))
                    (display "\n")
                    (x8412 x8407 x8406)))))
               g8201))))
           g7463))))
       g7461)))
    g7460)))
