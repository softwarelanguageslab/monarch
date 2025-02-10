(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7453 #t)) g7453)))
    (meta (lambda (v) (letrec* ((g7454 v)) g7454)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7455
          (letrec*
           ((g7456
             (letrec*
              ((x-e7457 lst))
              (letrec*
               ((v1742 x-e7457))
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
                   ((x-cnd7458
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7458
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
           g7456)))
        g7455)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7459 (lambda (v) (letrec* ((g7460 v)) g7460)))) g7459)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7461
          (letrec*
           ((x7462 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7462)))))
        g7461))))
   (letrec*
    ((g7463
      (letrec*
       ((g7464
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
           ((g7465 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7466
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7467
                     (lambda (k j lst)
                       (letrec*
                        ((g7468
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7469
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7469))
                             lst))))
                        g7468))))
                   g7467)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7471
                        g7265
                        (begin
                          (write '(blame g7263 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7470)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7473
                        g7268
                        (begin
                          (write '(blame g7266 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7472)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7475
                        g7271
                        (begin
                          (write '(blame g7269 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7474)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7478 #t)) g7478)) g7274))))
                      (if x-cnd7477
                        g7274
                        (begin
                          (write '(blame g7272 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7476)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7481 #t)) g7481)) g7277))))
                      (if x-cnd7480
                        g7277
                        (begin
                          (write '(blame g7275 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7479)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7483
                        g7280
                        (begin
                          (write '(blame g7278 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7482)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7485
                        g7283
                        (begin
                          (write '(blame g7281 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7484)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7487
                        g7286
                        (begin
                          (write '(blame g7284 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7486)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x-cnd7489
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7489
                        g7289
                        (begin
                          (write '(blame g7287 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7488)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7490
                     (lambda (k j v)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7492
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7491))))
                   g7490)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7493
                     (lambda (k j v)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7495
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7499
                                (letrec*
                                 ((x7500
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7500))))
                               (x7496
                                (letrec*
                                 ((x7498
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7497
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7498 k j x7497)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7499 x7496)))))))
                        g7494))))
                   g7493)))
               (any? (lambda (v) (letrec* ((g7501 #t)) g7501)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7503)))))
                   g7502)))
               (nonzero?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x-cnd7505
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7506
                                (letrec*
                                 ((x7507
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7507)))))
                              g7506))
                           g7292))))
                      (if x-cnd7505
                        g7292
                        (begin
                          (write '(blame g7290 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7504)))
               (meta (lambda (v) (letrec* ((g7508 v)) g7508)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7295 k7296 f7297)
                     (letrec*
                      ((g7510
                        (lambda (g7293 g7294)
                          (letrec*
                           ((g7511
                             (letrec*
                              ((x7512
                                (letrec*
                                 ((x7514
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7295 k7296 g7293)))
                                  (x7513
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7295 k7296 g7294))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7297 x7514 x7513)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7295 k7296 x7512)))))
                           g7511))))
                      g7510))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7509
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7509)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7300 k7301 f7302)
                     (letrec*
                      ((g7516
                        (lambda (g7298 g7299)
                          (letrec*
                           ((g7517
                             (letrec*
                              ((x7518
                                (letrec*
                                 ((x7520
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7300 k7301 g7298)))
                                  (x7519
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7300 k7301 g7299))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7302 x7520 x7519)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7300 k7301 x7518)))))
                           g7517))))
                      g7516))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7515
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7515)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7305 k7306 f7307)
                     (letrec*
                      ((g7522
                        (lambda (g7303 g7304)
                          (letrec*
                           ((g7523
                             (letrec*
                              ((x7524
                                (letrec*
                                 ((x7526
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7305 k7306 g7303)))
                                  (x7525
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7305 k7306 g7304))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7307 x7526 x7525)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7305 k7306 x7524)))))
                           g7523))))
                      g7522))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7521
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7521)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7528
                        (lambda (g7308 g7309)
                          (letrec*
                           ((g7529
                             (letrec*
                              ((x7530
                                (letrec*
                                 ((x7532
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7310 k7311 g7308)))
                                  (x7531
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7312 x7532 x7531)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7310 k7311 x7530)))))
                           g7529))))
                      g7528))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7527
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7527)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7534
                        (lambda (g7313)
                          (letrec*
                           ((g7535
                             (letrec*
                              ((x7536
                                (letrec*
                                 ((x7537
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7316 x7537)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7314 k7315 x7536)))))
                           g7535))))
                      g7534))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7533
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7533)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7318 k7319 f7320)
                     (letrec*
                      ((g7539
                        (lambda (g7317)
                          (letrec*
                           ((g7540
                             (letrec*
                              ((x7541
                                (letrec*
                                 ((x7542
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7318 k7319 g7317))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7320 x7542)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7318 k7319 x7541)))))
                           g7540))))
                      g7539))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7538
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7538)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7544
                        (lambda (g7321 g7322)
                          (letrec*
                           ((g7545
                             (letrec*
                              ((x7546
                                (letrec*
                                 ((x7548
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7323 k7324 g7321)))
                                  (x7547
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7325 x7548 x7547)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7323 k7324 x7546)))))
                           g7545))))
                      g7544))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7543
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7543)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7327 k7328 f7329)
                     (letrec*
                      ((g7550
                        (lambda (g7326)
                          (letrec*
                           ((g7551
                             (letrec*
                              ((x7552
                                (letrec*
                                 ((x7553
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7327 k7328 g7326))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7329 x7553)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7327 k7328 x7552)))))
                           g7551))))
                      g7550))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7549
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7549)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7332 k7333 f7334)
                     (letrec*
                      ((g7555
                        (lambda (g7330 g7331)
                          (letrec*
                           ((g7556
                             (letrec*
                              ((x7557
                                (letrec*
                                 ((x7559
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7332 k7333 g7330)))
                                  (x7558
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7332 k7333 g7331))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7334 x7559 x7558)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7332 k7333 x7557)))))
                           g7556))))
                      g7555))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7554
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7554)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7560
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7560)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x7562
                        (letrec*
                         ((x7563
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7563)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7562)))))
                   g7561)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7564
                     (letrec*
                      ((x7567
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7567))))
                    (g7565
                     (letrec*
                      ((x7568
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7568))))
                    (g7566
                     (letrec*
                      ((x-cnd7569
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7569
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7572
                           (letrec*
                            ((x7573
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7573))))
                          (x7570
                           (letrec*
                            ((x7571
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7571)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7572 x7570)))))))
                   g7566)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7575)))))
                   g7574)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7577
                        (letrec*
                         ((x7578
                           (letrec*
                            ((x7579
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7579)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7578)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7577)))))
                   g7576)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (letrec*
                         ((x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7583)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7582)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7581)))))
                   g7580)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 436 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 437 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7589
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7590 res))
                       g7590))))
                   g7586)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (letrec*
                         ((x7593
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7593)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7592)))))
                   g7591)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (letrec*
                         ((x7596
                           (letrec*
                            ((x7597
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7597)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7596)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7600))))
                    (g7599
                     (letrec*
                      ((x-cnd7601
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7601
                        #f
                        (letrec*
                         ((x-cnd7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7603 k)))))
                         (if x-cnd7602
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7604)))))))))
                   g7599)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7606)))))
                   g7605)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7609))))
                    (g7608
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7610
                        ""
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7614))))
                          (x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7612)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7613 x7611)))))))
                   g7608)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7620
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7620))))
                   g7617)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7624)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7630
                        x
                        (letrec*
                         ((x7632
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7631
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7632 x7631)))))))
                   g7627)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7633
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7633)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x-cnd7635
                        (letrec*
                         ((x7636 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7636)))))
                      (if x-cnd7635
                        (letrec*
                         ((x7637 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7637)))
                        #f))))
                   g7634)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7641
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7642 (if val7243 val7243 #f)))
                             g7642)))))
                       g7641))))
                   g7639)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7644
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7644 9)))))
                      (letrec*
                       ((g7645
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7646
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7646 10)))))
                            (letrec*
                             ((g7647
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7648
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7648 32))))))
                             g7647)))))
                       g7645))))
                   g7643)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7651)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7653)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7655 #f)) g7655)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7661
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7659)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7663
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7664
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7664
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7665
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7666
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7666
                                       (letrec*
                                        ((x-cnd7667
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7667
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7668
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7669
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7669
                                             (letrec*
                                              ((x-cnd7670
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7670
                                                (letrec*
                                                 ((x-cnd7671
                                                   (letrec*
                                                    ((x7673
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7672
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7673 x7672)))))
                                                 (if x-cnd7671
                                                   (letrec*
                                                    ((x7675
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7674
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7675 x7674)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7676
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7677
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7677
                                                (letrec*
                                                 ((x-cnd7678
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7678
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7679
                                                       (letrec*
                                                        ((x-cnd7680
                                                          (letrec*
                                                           ((x7681
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  695
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 697 60))
                                                             (display "\n")
                                                             (= x7681 n)))))
                                                        (if x-cnd7680
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7682
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          706
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7683
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7684
                                                                           (letrec*
                                                                            ((x7686
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   715
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7685
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   719
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 722
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7686
                                                                               x7685)))))
                                                                         (if x-cnd7684
                                                                           (letrec*
                                                                            ((x7687
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   728
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 731
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7687)))
                                                                           #f)))))
                                                                    g7683))))
                                                                g7682))))
                                                           (letrec*
                                                            ((g7688
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7688))
                                                          #f))))
                                                     g7679))
                                                   #f))
                                                #f)))))
                                         g7676)))))
                                   g7668)))))
                             g7665)))))
                       g7663))))
                   g7662)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7690
                        (letrec*
                         ((x7691
                           (letrec*
                            ((x7692
                              (begin
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7692)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7691)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7690)))))
                   g7689)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (letrec*
                         ((x7695
                           (letrec*
                            ((x7696
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7696)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7695)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7694)))))
                   g7693)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7697
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7697)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7700
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7700))))
                    (g7699
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7701
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7702 (if val7252 val7252 #f)))
                             g7702)))))
                       g7701))))
                   g7699)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7706))))
                    (g7704
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7707))))
                    (g7705
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 798 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 799 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7708
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7709 res))
                       g7709))))
                   g7705)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7710
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7710)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7714))))
                    (g7712
                     (letrec*
                      ((x7715
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7715))))
                    (g7713
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7716
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7716))))
                   g7713)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7718
                        (letrec*
                         ((x7719
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7719)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7718)))))
                   g7717)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7723)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7726)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7725)))))
                   g7724)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7728)))))
                   g7727)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7733))))
                    (g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7735)))))
                   g7732)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7739)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7742))))
                    (g7741
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7741)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7743)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7747
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7747)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7750))))
                    (g7749
                     (letrec*
                      ((x-cnd7751
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7751
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7755))))
                          (x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7753)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7754 x7752)))))))
                   g7749)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (cddadr
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7763)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7767)))))
                   g7765)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7771)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7775))))
                    (g7773
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7776))))
                    (g7774
                     (letrec*
                      ((x-cnd7777
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7777
                        (letrec*
                         ((g7778
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7778)
                        (letrec*
                         ((x-cnd7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7780)))))
                         (if x-cnd7779
                           (letrec*
                            ((g7781
                              (letrec*
                               ((x7782
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7782)))))
                            g7781)
                           (letrec*
                            ((x-cnd7783
                              (letrec*
                               ((x7784
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7784)))))
                            (if x-cnd7783
                              (letrec*
                               ((g7785
                                 (letrec*
                                  ((x7787
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7786
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7787 x7786)))))
                               g7785)
                              (letrec*
                               ((x-cnd7788
                                 (letrec*
                                  ((x7789
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7789)))))
                               (if x-cnd7788
                                 (letrec*
                                  ((g7790
                                    (letrec*
                                     ((x7793
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7792
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7791
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7793 x7792 x7791)))))
                                  g7790)
                                 (letrec*
                                  ((x-cnd7794
                                    (letrec*
                                     ((x7795
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7795)))))
                                  (if x-cnd7794
                                    (letrec*
                                     ((g7796
                                       (letrec*
                                        ((x7800
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7799
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7798
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7797
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7800 x7799 x7798 x7797)))))
                                     g7796)
                                    (letrec*
                                     ((x-cnd7801
                                       (letrec*
                                        ((x7802
                                          (letrec*
                                           ((x7803
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7803)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7802)))))
                                     (if x-cnd7801
                                       (letrec*
                                        ((g7804
                                          (letrec*
                                           ((x7810
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7809
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7808
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7807
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7805
                                             (letrec*
                                              ((x7806
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7806)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7810
                                              x7809
                                              x7808
                                              x7807
                                              x7805)))))
                                        g7804)
                                       (letrec*
                                        ((x-cnd7811
                                          (letrec*
                                           ((x7812
                                             (letrec*
                                              ((x7813
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7813)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7812)))))
                                        (if x-cnd7811
                                          (letrec*
                                           ((g7814
                                             (letrec*
                                              ((x7822
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7821
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7820
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7819
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7817
                                                (letrec*
                                                 ((x7818
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7818))))
                                               (x7815
                                                (letrec*
                                                 ((x7816
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7816)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7822
                                                 x7821
                                                 x7820
                                                 x7819
                                                 x7817
                                                 x7815)))))
                                           g7814)
                                          (letrec*
                                           ((x-cnd7823
                                             (letrec*
                                              ((x7824
                                                (letrec*
                                                 ((x7825
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7825)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7824)))))
                                           (if x-cnd7823
                                             (letrec*
                                              ((g7826
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7835
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7834
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7833
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7831
                                                   (letrec*
                                                    ((x7832
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7832))))
                                                  (x7829
                                                   (letrec*
                                                    ((x7830
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7830))))
                                                  (x7827
                                                   (letrec*
                                                    ((x7828
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7828)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7836
                                                    x7835
                                                    x7834
                                                    x7833
                                                    x7831
                                                    x7829
                                                    x7827)))))
                                              g7826)
                                             (letrec*
                                              ((g7837
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7837)))))))))))))))))))
                   g7774)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x-cnd7841
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7841
                        #f
                        (letrec*
                         ((x-cnd7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7843 e)))))
                         (if x-cnd7842
                           l
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7844)))))))))
                   g7839)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7846
                        (letrec*
                         ((x7847
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7848)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7847)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7846)))))
                   g7845)))
               (cadddr
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7852)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7851)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7850)))))
                   g7849)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7853
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7853)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7855)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7858
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7858))))
                   g7857)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7860)))))
                   g7859)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7862
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7863)))
                           #f))))
                      (letrec*
                       ((g7864
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7864))))
                   g7861)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7868)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7866)))))
                   g7865)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x-cnd7870
                        (letrec*
                         ((x7871 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7871 c)))))
                      (if x-cnd7870
                        (letrec*
                         ((x7872 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7872)))
                        #f))))
                   g7869)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7876
                        #f
                        (letrec*
                         ((x-cnd7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7878 k)))))
                         (if x-cnd7877
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7879)))))))))
                   g7874)))
               (not (lambda (x) (letrec* ((g7880 (if x #f #t))) g7880)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7881
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7881)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7885
                        #f
                        (letrec*
                         ((x-cnd7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7887 e)))))
                         (if x-cnd7886
                           l
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7888)))))))))
                   g7883)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7892)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7891)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7896
                             (letrec*
                              ((x-cnd7897
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7897
                                0
                                (letrec*
                                 ((x7898
                                   (letrec*
                                    ((x7899
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7899)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7898)))))))
                           g7896))))
                      (letrec*
                       ((g7900
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7900))))
                   g7894)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7904))))
                    (g7902
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7906
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7906))))
                   g7903)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7908)))))
                   g7907)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7911)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7910)))))
                   g7909)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7917 k)))))
                         (if x-cnd7916
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7918)))))))))
                   g7913)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7920)))))
                   g7919)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7926)))))
                   g7923)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7928
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7928))))
                   g7927)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((x-cnd7934
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7934
                        #t
                        (letrec*
                         ((x-cnd7935
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7935
                           (letrec*
                            ((g7936
                              (letrec*
                               ((x7938
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7938))))
                             (g7937
                              (letrec*
                               ((x7939
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7939)))))
                            g7937)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7931)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (letrec*
                      ((x-cnd7943
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7943
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7941)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7949
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7949))))
                   g7946)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7953)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7952)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (newline (lambda () (letrec* ((g7954 #f)) g7954)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7958))))
                       (x7956
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7957 x7956)))))
                   g7955)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7962)))))
                   g7960)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7967))))
                    (g7964
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7968))))
                    (g7965
                     (letrec*
                      ((x7969
                        (letrec*
                         ((x7970
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7970)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7969))))
                    (g7966
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7971
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7973
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7972
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7973 x7972)))))))
                   g7966)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7975
                        a
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7976)))))))
                   g7974)))
               (image
                (lambda ()
                  (letrec*
                   ((g7977
                     (begin
                       (write '(funapp 1423 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 1423 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1423 63))
                          (display "\n")
                          '())))))
                   g7977)))
               (image?
                (lambda (image7437)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1428 39))
                          (display "\n")
                          (car image7437))))
                      (begin
                        (write '(funapp 1428 57))
                        (display "\n")
                        (eq?
                         x7979
                         (begin
                           (write '(funapp 1428 67))
                           (display "\n")
                           'image))))))
                   g7978)))
               (image/c
                (lambda (j7336 k7337 v7335)
                  (letrec*
                   ((g7980
                     (begin
                       (write '(funapp 1432 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1432 47))
                          (display "\n")
                          '())))))
                   g7980)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g7981
                     (begin (write '(funapp 1433 57)) (display "\n") (image))))
                   g7981)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g7982
                     (begin (write '(funapp 1434 60)) (display "\n") (image))))
                   g7982)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g7983
                     (begin (write '(funapp 1436 54)) (display "\n") (image))))
                   g7983)))
               (posn
                (lambda (x7439 y7440)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1444 34))
                             (display "\n")
                             (cons
                              y7440
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1445 26))
                           (display "\n")
                           (cons x7439 x7986)))))
                      (begin
                        (write '(funapp 1446 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1446 28)) (display "\n") 'posn)
                         x7985)))))
                   g7984)))
               (posn?
                (lambda (posn7438)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1452 39))
                          (display "\n")
                          (car posn7438))))
                      (begin
                        (write '(funapp 1452 56))
                        (display "\n")
                        (eq?
                         x7988
                         (begin
                           (write '(funapp 1452 66))
                           (display "\n")
                           'posn))))))
                   g7987)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1457 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1457 58))
                        (display "\n")
                        (car x7990)))))
                   g7989)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7992
                        (letrec*
                         ((x7993
                           (begin
                             (write '(funapp 1464 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1464 61))
                           (display "\n")
                           (cdr x7993)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (car x7992)))))
                   g7991)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x-cnd7995
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1474 34))
                             (display "\n")
                             (posn-x p1)))
                          (x7996
                           (begin
                             (write '(funapp 1474 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1475 26))
                           (display "\n")
                           (= x7997 x7996)))))
                      (if x-cnd7995
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1478 34))
                             (display "\n")
                             (posn-y p1)))
                          (x7998
                           (begin
                             (write '(funapp 1478 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1479 26))
                           (display "\n")
                           (= x7999 x7998)))
                        #f))))
                   g7994)))
               (snake
                (lambda (dir7444 segs7445)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1489 34))
                             (display "\n")
                             (cons
                              segs7445
                              (begin
                                (write '(funapp 1489 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1490 26))
                           (display "\n")
                           (cons dir7444 x8002)))))
                      (begin
                        (write '(funapp 1491 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1491 28))
                           (display "\n")
                           'snake)
                         x8001)))))
                   g8000)))
               (snake?
                (lambda (snake7443)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1497 39))
                          (display "\n")
                          (car snake7443))))
                      (begin
                        (write '(funapp 1497 57))
                        (display "\n")
                        (eq?
                         x8004
                         (begin
                           (write '(funapp 1497 67))
                           (display "\n")
                           'snake))))))
                   g8003)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (cdr snake))))
                      (begin
                        (write '(funapp 1502 59))
                        (display "\n")
                        (car x8006)))))
                   g8005)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8008
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1509 48))
                             (display "\n")
                             (cdr snake))))
                         (begin
                           (write '(funapp 1509 62))
                           (display "\n")
                           (cdr x8009)))))
                      (begin
                        (write '(funapp 1510 23))
                        (display "\n")
                        (car x8008)))))
                   g8007)))
               (world
                (lambda (snake7449 food7450)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x8011
                        (letrec*
                         ((x8012
                           (begin
                             (write '(funapp 1519 34))
                             (display "\n")
                             (cons
                              food7450
                              (begin
                                (write '(funapp 1519 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cons snake7449 x8012)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1521 28))
                           (display "\n")
                           'world)
                         x8011)))))
                   g8010)))
               (world?
                (lambda (world7448)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1527 39))
                          (display "\n")
                          (car world7448))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (eq?
                         x8014
                         (begin
                           (write '(funapp 1527 67))
                           (display "\n")
                           'world))))))
                   g8013)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x8016
                        (begin
                          (write '(funapp 1532 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1532 59))
                        (display "\n")
                        (car x8016)))))
                   g8015)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8018
                        (letrec*
                         ((x8019
                           (begin
                             (write '(funapp 1539 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1539 62))
                           (display "\n")
                           (cdr x8019)))))
                      (begin
                        (write '(funapp 1540 23))
                        (display "\n")
                        (car x8018)))))
                   g8017)))
               (DIR/C
                (lambda (g7342 g7343 g7344)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x-cnd8021
                        (begin
                          (write '(funapp 1548 25))
                          (display "\n")
                          ((lambda (v7341)
                             (letrec*
                              ((g8022
                                (letrec*
                                 ((x-cnd8023
                                   (begin
                                     (write '(funapp 1552 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1552 48))
                                        (display "\n")
                                        'up)
                                      v7341))))
                                 (if x-cnd8023
                                   #t
                                   (letrec*
                                    ((x-cnd8024
                                      (begin
                                        (write '(funapp 1556 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1556 51))
                                           (display "\n")
                                           'down)
                                         v7341))))
                                    (if x-cnd8024
                                      #t
                                      (letrec*
                                       ((x-cnd8025
                                         (begin
                                           (write '(funapp 1560 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1560 54))
                                              (display "\n")
                                              'left)
                                            v7341))))
                                       (if x-cnd8025
                                         #t
                                         (begin
                                           (write '(funapp 1563 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1563 44))
                                              (display "\n")
                                              'right)
                                            v7341))))))))))
                              g8022))
                           g7344))))
                      (if x-cnd8021
                        g7344
                        (begin
                          (write '(blame g7342 1568 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7342)))))))
                   g8020)))
               (POSN/C
                (lambda (j7346 k7347 v7345)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((checked7348
                        (letrec*
                         ((x8027
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1586 51))
                                (display "\n")
                                (cdr v7345))))
                            (begin
                              (write '(funapp 1586 65))
                              (display "\n")
                              (car x8028)))))
                         (begin
                           (write '(funapp 1587 26))
                           (display "\n")
                           (real?/c j7346 k7347 x8027)))))
                      (letrec*
                       ((g8029
                         (letrec*
                          ((checked7349
                            (letrec*
                             ((x8030
                               (letrec*
                                ((x8031
                                  (letrec*
                                   ((x8032
                                     (begin
                                       (write '(funapp 1596 52))
                                       (display "\n")
                                       (cdr v7345))))
                                   (begin
                                     (write '(funapp 1596 66))
                                     (display "\n")
                                     (cdr x8032)))))
                                (begin
                                  (write '(funapp 1597 33))
                                  (display "\n")
                                  (car x8031)))))
                             (begin
                               (write '(funapp 1598 30))
                               (display "\n")
                               (real?/c j7346 k7347 x8030)))))
                          (letrec*
                           ((g8033
                             (letrec*
                              ((x8034
                                (letrec*
                                 ((x8035
                                   (begin
                                     (write '(funapp 1604 42))
                                     (display "\n")
                                     (cons
                                      checked7349
                                      (begin
                                        (write '(funapp 1604 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1605 34))
                                   (display "\n")
                                   (cons checked7348 x8035)))))
                              (begin
                                (write '(funapp 1606 31))
                                (display "\n")
                                (cons posn x8034)))))
                           g8033))))
                       g8029))))
                   g8026)))
               (SNAKE/C
                (lambda (j7352 k7353 v7351)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((checked7354
                        (letrec*
                         ((x8037
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (cdr v7351))))
                            (begin
                              (write '(funapp 1617 65))
                              (display "\n")
                              (car x8038)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (DIR/C j7352 k7353 x8037)))))
                      (letrec*
                       ((g8039
                         (letrec*
                          ((checked7355
                            (letrec*
                             ((x8043
                               (letrec*
                                ((x8044
                                  (begin
                                    (write '(funapp 1626 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1627 33))
                                  (display "\n")
                                  (and/c cons?/c x8044))))
                              (x8040
                               (letrec*
                                ((x8041
                                  (letrec*
                                   ((x8042
                                     (begin
                                       (write '(funapp 1631 52))
                                       (display "\n")
                                       (cdr v7351))))
                                   (begin
                                     (write '(funapp 1631 66))
                                     (display "\n")
                                     (cdr x8042)))))
                                (begin
                                  (write '(funapp 1632 33))
                                  (display "\n")
                                  (car x8041)))))
                             (begin
                               (write '(funapp 1633 30))
                               (display "\n")
                               (x8043 j7352 k7353 x8040)))))
                          (letrec*
                           ((g8045
                             (letrec*
                              ((x8046
                                (letrec*
                                 ((x8047
                                   (begin
                                     (write '(funapp 1639 42))
                                     (display "\n")
                                     (cons
                                      checked7355
                                      (begin
                                        (write '(funapp 1639 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1640 34))
                                   (display "\n")
                                   (cons checked7354 x8047)))))
                              (begin
                                (write '(funapp 1641 31))
                                (display "\n")
                                (cons snake x8046)))))
                           g8045))))
                       g8039))))
                   g8036)))
               (WORLD/C
                (lambda (j7358 k7359 v7357)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((checked7360
                        (letrec*
                         ((x8049
                           (letrec*
                            ((x8050
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (cdr v7357))))
                            (begin
                              (write '(funapp 1652 65))
                              (display "\n")
                              (car x8050)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (SNAKE/C j7358 k7359 x8049)))))
                      (letrec*
                       ((g8051
                         (letrec*
                          ((checked7361
                            (letrec*
                             ((x8052
                               (letrec*
                                ((x8053
                                  (letrec*
                                   ((x8054
                                     (begin
                                       (write '(funapp 1662 52))
                                       (display "\n")
                                       (cdr v7357))))
                                   (begin
                                     (write '(funapp 1662 66))
                                     (display "\n")
                                     (cdr x8054)))))
                                (begin
                                  (write '(funapp 1663 33))
                                  (display "\n")
                                  (car x8053)))))
                             (begin
                               (write '(funapp 1664 30))
                               (display "\n")
                               (POSN/C j7358 k7359 x8052)))))
                          (letrec*
                           ((g8055
                             (letrec*
                              ((x8056
                                (letrec*
                                 ((x8057
                                   (begin
                                     (write '(funapp 1670 42))
                                     (display "\n")
                                     (cons
                                      checked7361
                                      (begin
                                        (write '(funapp 1670 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1671 34))
                                   (display "\n")
                                   (cons checked7360 x8057)))))
                              (begin
                                (write '(funapp 1672 31))
                                (display "\n")
                                (cons world x8056)))))
                           g8055))))
                       g8051))))
                   g8048)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1679 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1680 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1682 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1683 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1684 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1686 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8059
                   (letrec*
                    ((x8060
                      (letrec*
                       ((x8061
                         (begin
                           (write '(funapp 1691 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1691 59))
                         (display "\n")
                         (cons x8061 empty)))))
                    (begin
                      (write '(funapp 1692 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1692 27)) (display "\n") 'right)
                       x8060))))
                  (x8058
                   (begin
                     (write '(funapp 1693 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1694 18))
                   (display "\n")
                   (world x8059 x8058))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8062
                     (letrec*
                      ((x8063
                        (letrec*
                         ((x8064
                           (begin
                             (write '(funapp 1701 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1701 61))
                           (display "\n")
                           (car x8064)))))
                      (begin
                        (write '(funapp 1702 23))
                        (display "\n")
                        (head-collide? x8063)))))
                   g8062)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x8066
                           (begin
                             (write '(funapp 1709 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1709 63))
                           (display "\n")
                           (<= x8066 0)))))
                      (letrec*
                       ((g8067
                         (if val7259
                           val7259
                           (letrec*
                            ((val7260
                              (letrec*
                               ((x8068
                                 (begin
                                   (write '(funapp 1717 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1718 32))
                                 (display "\n")
                                 (>= x8068 BOARD-WIDTH)))))
                            (letrec*
                             ((g8069
                               (if val7260
                                 val7260
                                 (letrec*
                                  ((val7261
                                    (letrec*
                                     ((x8070
                                       (begin
                                         (write '(funapp 1726 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1727 38))
                                       (display "\n")
                                       (<= x8070 0)))))
                                  (letrec*
                                   ((g8071
                                     (if val7261
                                       val7261
                                       (letrec*
                                        ((x8072
                                          (begin
                                            (write '(funapp 1733 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1734 41))
                                          (display "\n")
                                          (>= x8072 BOARD-HEIGHT))))))
                                   g8071)))))
                             g8069)))))
                       g8067))))
                   g8065)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8076
                        (letrec*
                         ((x8077
                           (begin
                             (write '(funapp 1744 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1744 67))
                           (display "\n")
                           (car x8077))))
                       (x8074
                        (letrec*
                         ((x8075
                           (begin
                             (write '(funapp 1746 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1746 61))
                           (display "\n")
                           (cdr x8075)))))
                      (begin
                        (write '(funapp 1747 23))
                        (display "\n")
                        (segs-self-collide? x8076 x8074)))))
                   g8073)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x-cnd8079
                        (begin
                          (write '(funapp 1754 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8079
                        (letrec* ((g8080 #f)) g8080)
                        (letrec*
                         ((g8081
                           (letrec*
                            ((x8084
                              (letrec*
                               ((x8085
                                 (begin
                                   (write '(funapp 1761 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 1761 61))
                                 (display "\n")
                                 (posn=? x8085 h))))
                             (x8082
                              (letrec*
                               ((x8083
                                 (begin
                                   (write '(funapp 1764 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 1765 32))
                                 (display "\n")
                                 (segs-self-collide? h x8083)))))
                            (begin
                              (write '(funapp 1766 29))
                              (display "\n")
                              (or x8084 x8082)))))
                         g8081)))))
                   g8078)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 1774 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8087
                         (letrec*
                          ((x-cnd8088
                            (begin
                              (write '(funapp 1778 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8088
                            (letrec* ((g8089 empty)) g8089)
                            (letrec*
                             ((g8090
                               (letrec*
                                ((x8092
                                  (begin
                                    (write '(funapp 1784 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8091
                                  (begin
                                    (write '(funapp 1784 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 1785 33))
                                  (display "\n")
                                  (cons x8092 x8091)))))
                             g8090)))))
                       g8087))))
                   g8086)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8093
                     (letrec*
                      ((x-cnd8094
                        (begin
                          (write '(funapp 1794 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1794 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8094
                        (letrec*
                         ((g8095
                           (letrec*
                            ((x8097
                              (letrec*
                               ((x8098
                                 (begin
                                   (write '(funapp 1800 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 1800 63))
                                 (display "\n")
                                 (add1 x8098))))
                             (x8096
                              (begin
                                (write '(funapp 1801 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 1802 29))
                              (display "\n")
                              (posn x8097 x8096)))))
                         g8095)
                        (letrec*
                         ((x-cnd8099
                           (begin
                             (write '(funapp 1805 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1805 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8099
                           (letrec*
                            ((g8100
                              (letrec*
                               ((x8102
                                 (letrec*
                                  ((x8103
                                    (begin
                                      (write '(funapp 1811 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1811 66))
                                    (display "\n")
                                    (sub1 x8103))))
                                (x8101
                                 (begin
                                   (write '(funapp 1812 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1813 32))
                                 (display "\n")
                                 (posn x8102 x8101)))))
                            g8100)
                           (letrec*
                            ((x-cnd8104
                              (begin
                                (write '(funapp 1816 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 1816 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8104
                              (letrec*
                               ((g8105
                                 (letrec*
                                  ((x8108
                                    (begin
                                      (write '(funapp 1821 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8106
                                    (letrec*
                                     ((x8107
                                       (begin
                                         (write '(funapp 1824 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1825 38))
                                       (display "\n")
                                       (sub1 x8107)))))
                                  (begin
                                    (write '(funapp 1826 35))
                                    (display "\n")
                                    (posn x8108 x8106)))))
                               g8105)
                              (letrec*
                               ((g8109
                                 (letrec*
                                  ((x8112
                                    (begin
                                      (write '(funapp 1831 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8110
                                    (letrec*
                                     ((x8111
                                       (begin
                                         (write '(funapp 1834 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1835 38))
                                       (display "\n")
                                       (add1 x8111)))))
                                  (begin
                                    (write '(funapp 1836 35))
                                    (display "\n")
                                    (posn x8112 x8110)))))
                               g8109)))))))))
                   g8093)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1844 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8114
                         (letrec*
                          ((x8115
                            (letrec*
                             ((x8118
                               (letrec*
                                ((x8119
                                  (letrec*
                                   ((x8120
                                     (begin
                                       (write '(funapp 1854 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1855 36))
                                     (display "\n")
                                     (car x8120)))))
                                (begin
                                  (write '(funapp 1856 33))
                                  (display "\n")
                                  (next-head x8119 d))))
                              (x8116
                               (letrec*
                                ((x8117
                                  (begin
                                    (write '(funapp 1859 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 1860 33))
                                  (display "\n")
                                  (cut-tail x8117)))))
                             (begin
                               (write '(funapp 1861 30))
                               (display "\n")
                               (cons x8118 x8116)))))
                          (begin
                            (write '(funapp 1862 27))
                            (display "\n")
                            (snake d x8115)))))
                       g8114))))
                   g8113)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1870 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8122
                         (letrec*
                          ((x8123
                            (letrec*
                             ((x8125
                               (letrec*
                                ((x8126
                                  (letrec*
                                   ((x8127
                                     (begin
                                       (write '(funapp 1880 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1881 36))
                                     (display "\n")
                                     (car x8127)))))
                                (begin
                                  (write '(funapp 1882 33))
                                  (display "\n")
                                  (next-head x8126 d))))
                              (x8124
                               (begin
                                 (write '(funapp 1883 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 1884 30))
                               (display "\n")
                               (cons x8125 x8124)))))
                          (begin
                            (write '(funapp 1885 27))
                            (display "\n")
                            (snake d x8123)))))
                       g8122))))
                   g8121)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8128
                     (letrec*
                      ((x-cnd8129
                        (begin
                          (write '(funapp 1893 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8129
                        (letrec*
                         ((g8130
                           (begin
                             (write '(funapp 1895 42))
                             (display "\n")
                             (snake-eat w))))
                         g8130)
                        (letrec*
                         ((g8131
                           (letrec*
                            ((x8133
                              (letrec*
                               ((x8134
                                 (begin
                                   (write '(funapp 1901 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 1902 32))
                                 (display "\n")
                                 (snake-slither x8134))))
                             (x8132
                              (begin
                                (write '(funapp 1903 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 1904 29))
                              (display "\n")
                              (world x8133 x8132)))))
                         g8131)))))
                   g8128)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8135
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1912 31))
                          (display "\n")
                          (world-food w)))
                       (x8136
                        (letrec*
                         ((x8137
                           (letrec*
                            ((x8138
                              (begin
                                (write '(funapp 1917 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1918 29))
                              (display "\n")
                              (snake-segs x8138)))))
                         (begin
                           (write '(funapp 1919 26))
                           (display "\n")
                           (car x8137)))))
                      (begin
                        (write '(funapp 1920 23))
                        (display "\n")
                        (posn=? x8139 x8136)))))
                   g8135)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1926 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 1926 58))
                        (display "\n")
                        (snake dir x8141)))))
                   g8140)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8144
                        (letrec*
                         ((x8145
                           (begin
                             (write '(funapp 1935 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1936 26))
                           (display "\n")
                           (snake-change-direction x8145 dir))))
                       (x8143
                        (begin
                          (write '(funapp 1937 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 1938 23))
                        (display "\n")
                        (world x8144 x8143)))))
                   g8142)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8150
                        (letrec*
                         ((x8151
                           (begin
                             (write '(funapp 1946 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1946 60))
                           (display "\n")
                           (snake-grow x8151))))
                       (x8147
                        (letrec*
                         ((x8149
                           (begin
                             (write '(funapp 1949 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8148
                           (begin
                             (write '(funapp 1949 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 1950 26))
                           (display "\n")
                           (posn x8149 x8148)))))
                      (begin
                        (write '(funapp 1951 23))
                        (display "\n")
                        (world x8150 x8147)))))
                   g8146)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x-cnd8153
                        (begin
                          (write '(funapp 1958 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8153
                        (letrec*
                         ((g8154
                           (begin
                             (write '(funapp 1960 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 1960 61))
                                (display "\n")
                                'up)))))
                         g8154)
                        (letrec*
                         ((x-cnd8155
                           (begin
                             (write '(funapp 1962 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8155
                           (letrec*
                            ((g8156
                              (begin
                                (write '(funapp 1964 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 1964 64))
                                   (display "\n")
                                   'down)))))
                            g8156)
                           (letrec*
                            ((x-cnd8157
                              (begin
                                (write '(funapp 1966 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8157
                              (letrec*
                               ((g8158
                                 (begin
                                   (write '(funapp 1969 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 1969 59))
                                      (display "\n")
                                      'left)))))
                               g8158)
                              (letrec*
                               ((x-cnd8159
                                 (begin
                                   (write '(funapp 1972 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8159
                                 (letrec*
                                  ((g8160
                                    (begin
                                      (write '(funapp 1975 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 1975 62))
                                         (display "\n")
                                         'right)))))
                                  g8160)
                                 (letrec* ((g8161 w)) g8161)))))))))))
                   g8152)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((val7262
                        (letrec*
                         ((x8163
                           (begin
                             (write '(funapp 1986 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1987 26))
                           (display "\n")
                           (snake-wall-collide? x8163)))))
                      (letrec*
                       ((g8164
                         (if val7262
                           val7262
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1993 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1994 29))
                              (display "\n")
                              (snake-self-collide? x8165))))))
                       g8164))))
                   g8162)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x8169
                        (begin
                          (write '(funapp 2002 31))
                          (display "\n")
                          (world-snake w)))
                       (x8167
                        (letrec*
                         ((x8168
                           (begin
                             (write '(funapp 2005 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2006 26))
                           (display "\n")
                           (food+scene x8168 BACKGROUND)))))
                      (begin
                        (write '(funapp 2007 23))
                        (display "\n")
                        (snake+scene x8169 x8167)))))
                   g8166)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8172
                        (begin
                          (write '(funapp 2014 31))
                          (display "\n")
                          (posn-x f)))
                       (x8171
                        (begin
                          (write '(funapp 2014 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2015 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8172 x8171 scn)))))
                   g8170)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8173
                     (letrec*
                      ((x8176
                        (begin
                          (write '(funapp 2022 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8174
                        (letrec*
                         ((x8175
                           (begin
                             (write '(funapp 2025 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2026 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8175)))))
                      (begin
                        (write '(funapp 2027 23))
                        (display "\n")
                        (place-image img x8176 x8174 scn)))))
                   g8173)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8177
                     (letrec*
                      ((x8178
                        (begin
                          (write '(funapp 2034 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2035 23))
                        (display "\n")
                        (segments+scene x8178 scn)))))
                   g8177)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8179
                     (letrec*
                      ((x-cnd8180
                        (begin
                          (write '(funapp 2042 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8180
                        (letrec* ((g8181 scn)) g8181)
                        (letrec*
                         ((g8182
                           (letrec*
                            ((x8185
                              (begin
                                (write '(funapp 2048 37))
                                (display "\n")
                                (cdr segs)))
                             (x8183
                              (letrec*
                               ((x8184
                                 (begin
                                   (write '(funapp 2051 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2052 32))
                                 (display "\n")
                                 (segment+scene x8184 scn)))))
                            (begin
                              (write '(funapp 2053 29))
                              (display "\n")
                              (segments+scene x8185 x8183)))))
                         g8182)))))
                   g8179)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8186
                     (letrec*
                      ((x8188
                        (begin
                          (write '(funapp 2061 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8187
                        (begin
                          (write '(funapp 2061 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2062 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8188 x8187 scn)))))
                   g8186))))
              (letrec*
               ((g8189
                 (letrec*
                  ((x8223
                    (begin
                      (write '(funapp 2068 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g8224
                            (lambda (g7363 g7364)
                              (letrec*
                               ((g8225
                                 (letrec*
                                  ((x8226
                                    (letrec*
                                     ((x8228
                                       (begin
                                         (write '(funapp 2077 44))
                                         (display "\n")
                                         (POSN/C j7365 k7366 g7363)))
                                      (x8227
                                       (begin
                                         (write '(funapp 2078 44))
                                         (display "\n")
                                         (POSN/C j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 2079 36))
                                       (display "\n")
                                       (f7367 x8228 x8227)))))
                                  (begin
                                    (write '(funapp 2080 33))
                                    (display "\n")
                                    (boolean?/c j7365 k7366 x8226)))))
                               g8225))))
                          g8224))
                       (begin (write '(funapp 2083 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2084 21))
                         (display "\n")
                         'importer)
                       posn=?)))
                   (x8218
                    (letrec*
                     ((x8219
                       (letrec*
                        ((x8222 (input))
                         (x8220
                          (letrec*
                           ((x8221 (input)))
                           (begin
                             (write '(funapp 2091 60))
                             (display "\n")
                             (cons
                              x8221
                              (begin
                                (write '(funapp 2091 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2092 25))
                          (display "\n")
                          (cons x8222 x8220)))))
                     (begin
                       (write '(funapp 2093 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2093 27)) (display "\n") 'posn)
                        x8219))))
                   (x8213
                    (letrec*
                     ((x8214
                       (letrec*
                        ((x8217 (input))
                         (x8215
                          (letrec*
                           ((x8216 (input)))
                           (begin
                             (write '(funapp 2099 60))
                             (display "\n")
                             (cons
                              x8216
                              (begin
                                (write '(funapp 2099 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2100 25))
                          (display "\n")
                          (cons x8217 x8215)))))
                     (begin
                       (write '(funapp 2101 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2101 27)) (display "\n") 'posn)
                        x8214)))))
                  (begin
                    (write '(funapp 2102 19))
                    (display "\n")
                    (x8223 x8218 x8213))))
                (g8190
                 (begin
                   (write '(funapp 2103 24))
                   (display "\n")
                   (WORLD/C
                    (begin (write '(funapp 2103 32)) (display "\n") 'module)
                    (begin (write '(funapp 2103 40)) (display "\n") 'importer)
                    WORLD)))
                (g8191
                 (begin
                   (write '(funapp 2104 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2104 32)) (display "\n") 'module)
                    (begin (write '(funapp 2104 40)) (display "\n") 'importer)
                    BACKGROUND)))
                (g8192
                 (begin
                   (write '(funapp 2105 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2105 32)) (display "\n") 'module)
                    (begin (write '(funapp 2105 40)) (display "\n") 'importer)
                    FOOD-IMAGE)))
                (g8193
                 (begin
                   (write '(funapp 2106 24))
                   (display "\n")
                   (image/c
                    (begin (write '(funapp 2106 32)) (display "\n") 'module)
                    (begin (write '(funapp 2106 40)) (display "\n") 'importer)
                    SEGMENT-IMAGE)))
                (g8194
                 (begin
                   (write '(funapp 2107 24))
                   (display "\n")
                   (real?/c
                    (begin (write '(funapp 2107 32)) (display "\n") 'module)
                    (begin (write '(funapp 2107 40)) (display "\n") 'importer)
                    GRID-SIZE)))
                (g8195
                 (begin
                   (write '(funapp 2108 24))
                   (display "\n")
                   (real?/c
                    (begin (write '(funapp 2108 32)) (display "\n") 'module)
                    (begin (write '(funapp 2108 40)) (display "\n") 'importer)
                    BOARD-HEIGHT-PIXELS)))
                (g8196
                 (begin
                   (write '(funapp 2109 24))
                   (display "\n")
                   (real?/c
                    (begin (write '(funapp 2109 32)) (display "\n") 'module)
                    (begin (write '(funapp 2109 40)) (display "\n") 'importer)
                    BOARD-WIDTH)))
                (g8197
                 (begin
                   (write '(funapp 2110 24))
                   (display "\n")
                   (real?/c
                    (begin (write '(funapp 2110 32)) (display "\n") 'module)
                    (begin (write '(funapp 2110 40)) (display "\n") 'importer)
                    BOARD-HEIGHT)))
                (g8198
                 (letrec*
                  ((x8234
                    (begin
                      (write '(funapp 2114 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g8235
                            (lambda (g7368)
                              (letrec*
                               ((g8236
                                 (letrec*
                                  ((x8237
                                    (letrec*
                                     ((x8238
                                       (begin
                                         (write '(funapp 2123 44))
                                         (display "\n")
                                         (SNAKE/C j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 2124 36))
                                       (display "\n")
                                       (f7371 x8238)))))
                                  (begin
                                    (write '(funapp 2125 33))
                                    (display "\n")
                                    (boolean?/c j7369 k7370 x8237)))))
                               g8236))))
                          g8235))
                       (begin (write '(funapp 2128 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2129 21))
                         (display "\n")
                         'importer)
                       snake-wall-collide?)))
                   (x8229
                    (letrec*
                     ((x8230
                       (letrec*
                        ((x8233 (input))
                         (x8231
                          (letrec*
                           ((x8232 (input)))
                           (begin
                             (write '(funapp 2136 60))
                             (display "\n")
                             (cons
                              x8232
                              (begin
                                (write '(funapp 2136 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2137 25))
                          (display "\n")
                          (cons x8233 x8231)))))
                     (begin
                       (write '(funapp 2138 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2138 27)) (display "\n") 'snake)
                        x8230)))))
                  (begin
                    (write '(funapp 2139 19))
                    (display "\n")
                    (x8234 x8229))))
                (g8199
                 (letrec*
                  ((x8244
                    (begin
                      (write '(funapp 2143 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g8245
                            (lambda (g7372)
                              (letrec*
                               ((g8246
                                 (letrec*
                                  ((x8247
                                    (letrec*
                                     ((x8248
                                       (begin
                                         (write '(funapp 2152 44))
                                         (display "\n")
                                         (SNAKE/C j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 2153 36))
                                       (display "\n")
                                       (f7375 x8248)))))
                                  (begin
                                    (write '(funapp 2154 33))
                                    (display "\n")
                                    (boolean?/c j7373 k7374 x8247)))))
                               g8246))))
                          g8245))
                       (begin (write '(funapp 2157 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2158 21))
                         (display "\n")
                         'importer)
                       snake-self-collide?)))
                   (x8239
                    (letrec*
                     ((x8240
                       (letrec*
                        ((x8243 (input))
                         (x8241
                          (letrec*
                           ((x8242 (input)))
                           (begin
                             (write '(funapp 2165 60))
                             (display "\n")
                             (cons
                              x8242
                              (begin
                                (write '(funapp 2165 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2166 25))
                          (display "\n")
                          (cons x8243 x8241)))))
                     (begin
                       (write '(funapp 2167 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2167 27)) (display "\n") 'snake)
                        x8240)))))
                  (begin
                    (write '(funapp 2168 19))
                    (display "\n")
                    (x8244 x8239))))
                (g8200
                 (letrec*
                  ((x8250
                    (begin
                      (write '(funapp 2172 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g8251
                            (lambda (g7376)
                              (letrec*
                               ((g8252
                                 (letrec*
                                  ((x8257
                                    (begin
                                      (write '(funapp 2179 41))
                                      (display "\n")
                                      (listof POSN/C)))
                                   (x8253
                                    (letrec*
                                     ((x8254
                                       (letrec*
                                        ((x8255
                                          (letrec*
                                           ((x8256
                                             (begin
                                               (write '(funapp 2186 50))
                                               (display "\n")
                                               (listof POSN/C))))
                                           (begin
                                             (write '(funapp 2187 42))
                                             (display "\n")
                                             (and/c cons?/c x8256)))))
                                        (begin
                                          (write '(funapp 2188 39))
                                          (display "\n")
                                          (x8255 j7377 k7378 g7376)))))
                                     (begin
                                       (write '(funapp 2189 36))
                                       (display "\n")
                                       (f7379 x8254)))))
                                  (begin
                                    (write '(funapp 2190 33))
                                    (display "\n")
                                    (x8257 j7377 k7378 x8253)))))
                               g8252))))
                          g8251))
                       (begin (write '(funapp 2193 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2194 21))
                         (display "\n")
                         'importer)
                       cut-tail)))
                   (x8249 (input)))
                  (begin
                    (write '(funapp 2197 19))
                    (display "\n")
                    (x8250 x8249))))
                (g8201
                 (letrec*
                  ((x8263
                    (begin
                      (write '(funapp 2201 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g8264
                            (lambda (g7380)
                              (letrec*
                               ((g8265
                                 (letrec*
                                  ((x8266
                                    (letrec*
                                     ((x8267
                                       (begin
                                         (write '(funapp 2210 44))
                                         (display "\n")
                                         (SNAKE/C j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 2211 36))
                                       (display "\n")
                                       (f7383 x8267)))))
                                  (begin
                                    (write '(funapp 2212 33))
                                    (display "\n")
                                    (SNAKE/C j7381 k7382 x8266)))))
                               g8265))))
                          g8264))
                       (begin (write '(funapp 2215 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2216 21))
                         (display "\n")
                         'importer)
                       snake-slither)))
                   (x8258
                    (letrec*
                     ((x8259
                       (letrec*
                        ((x8262 (input))
                         (x8260
                          (letrec*
                           ((x8261 (input)))
                           (begin
                             (write '(funapp 2223 60))
                             (display "\n")
                             (cons
                              x8261
                              (begin
                                (write '(funapp 2223 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2224 25))
                          (display "\n")
                          (cons x8262 x8260)))))
                     (begin
                       (write '(funapp 2225 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2225 27)) (display "\n") 'snake)
                        x8259)))))
                  (begin
                    (write '(funapp 2226 19))
                    (display "\n")
                    (x8263 x8258))))
                (g8202
                 (letrec*
                  ((x8273
                    (begin
                      (write '(funapp 2230 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g8274
                            (lambda (g7384)
                              (letrec*
                               ((g8275
                                 (letrec*
                                  ((x8276
                                    (letrec*
                                     ((x8277
                                       (begin
                                         (write '(funapp 2239 44))
                                         (display "\n")
                                         (SNAKE/C j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 2240 36))
                                       (display "\n")
                                       (f7387 x8277)))))
                                  (begin
                                    (write '(funapp 2241 33))
                                    (display "\n")
                                    (SNAKE/C j7385 k7386 x8276)))))
                               g8275))))
                          g8274))
                       (begin (write '(funapp 2244 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2245 21))
                         (display "\n")
                         'importer)
                       snake-grow)))
                   (x8268
                    (letrec*
                     ((x8269
                       (letrec*
                        ((x8272 (input))
                         (x8270
                          (letrec*
                           ((x8271 (input)))
                           (begin
                             (write '(funapp 2252 60))
                             (display "\n")
                             (cons
                              x8271
                              (begin
                                (write '(funapp 2252 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2253 25))
                          (display "\n")
                          (cons x8272 x8270)))))
                     (begin
                       (write '(funapp 2254 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2254 27)) (display "\n") 'snake)
                        x8269)))))
                  (begin
                    (write '(funapp 2255 19))
                    (display "\n")
                    (x8273 x8268))))
                (g8203
                 (letrec*
                  ((x8292
                    (begin
                      (write '(funapp 2259 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g8293
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g8294
                                 (letrec*
                                  ((x8295
                                    (letrec*
                                     ((x8297
                                       (begin
                                         (write '(funapp 2268 44))
                                         (display "\n")
                                         (WORLD/C j7390 k7391 g7388)))
                                      (x8296
                                       (begin
                                         (write '(funapp 2269 44))
                                         (display "\n")
                                         (DIR/C j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 2270 36))
                                       (display "\n")
                                       (f7392 x8297 x8296)))))
                                  (begin
                                    (write '(funapp 2271 33))
                                    (display "\n")
                                    (WORLD/C j7390 k7391 x8295)))))
                               g8294))))
                          g8293))
                       (begin (write '(funapp 2274 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2275 21))
                         (display "\n")
                         'importer)
                       world-change-dir)))
                   (x8279
                    (letrec*
                     ((x8280
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
                                   (write '(funapp 2287 60))
                                   (display "\n")
                                   (cons
                                    x8290
                                    (begin
                                      (write '(funapp 2287 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2288 31))
                                (display "\n")
                                (cons x8291 x8289)))))
                           (begin
                             (write '(funapp 2289 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2289 33))
                                (display "\n")
                                'snake)
                              x8288))))
                         (x8281
                          (letrec*
                           ((x8282
                             (letrec*
                              ((x8283
                                (letrec*
                                 ((x8286 (input))
                                  (x8284
                                   (letrec*
                                    ((x8285 (input)))
                                    (begin
                                      (write '(funapp 2300 37))
                                      (display "\n")
                                      (cons
                                       x8285
                                       (begin
                                         (write '(funapp 2300 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2301 34))
                                   (display "\n")
                                   (cons x8286 x8284)))))
                              (begin
                                (write '(funapp 2302 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2302 36))
                                   (display "\n")
                                   'posn)
                                 x8283)))))
                           (begin
                             (write '(funapp 2303 28))
                             (display "\n")
                             (cons
                              x8282
                              (begin
                                (write '(funapp 2303 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2304 25))
                          (display "\n")
                          (cons x8287 x8281)))))
                     (begin
                       (write '(funapp 2305 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2305 27)) (display "\n") 'world)
                        x8280))))
                   (x8278 (input)))
                  (begin
                    (write '(funapp 2307 19))
                    (display "\n")
                    (x8292 x8279 x8278))))
                (g8204
                 (letrec*
                  ((x8311
                    (begin
                      (write '(funapp 2311 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g8312
                            (lambda (g7393)
                              (letrec*
                               ((g8313
                                 (letrec*
                                  ((x8314
                                    (letrec*
                                     ((x8315
                                       (begin
                                         (write '(funapp 2320 44))
                                         (display "\n")
                                         (WORLD/C j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 2321 36))
                                       (display "\n")
                                       (f7396 x8315)))))
                                  (begin
                                    (write '(funapp 2322 33))
                                    (display "\n")
                                    (WORLD/C j7394 k7395 x8314)))))
                               g8313))))
                          g8312))
                       (begin (write '(funapp 2325 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2326 21))
                         (display "\n")
                         'importer)
                       world->world)))
                   (x8298
                    (letrec*
                     ((x8299
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
                                   (write '(funapp 2338 60))
                                   (display "\n")
                                   (cons
                                    x8309
                                    (begin
                                      (write '(funapp 2338 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2339 31))
                                (display "\n")
                                (cons x8310 x8308)))))
                           (begin
                             (write '(funapp 2340 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2340 33))
                                (display "\n")
                                'snake)
                              x8307))))
                         (x8300
                          (letrec*
                           ((x8301
                             (letrec*
                              ((x8302
                                (letrec*
                                 ((x8305 (input))
                                  (x8303
                                   (letrec*
                                    ((x8304 (input)))
                                    (begin
                                      (write '(funapp 2351 37))
                                      (display "\n")
                                      (cons
                                       x8304
                                       (begin
                                         (write '(funapp 2351 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2352 34))
                                   (display "\n")
                                   (cons x8305 x8303)))))
                              (begin
                                (write '(funapp 2353 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2353 36))
                                   (display "\n")
                                   'posn)
                                 x8302)))))
                           (begin
                             (write '(funapp 2354 28))
                             (display "\n")
                             (cons
                              x8301
                              (begin
                                (write '(funapp 2354 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2355 25))
                          (display "\n")
                          (cons x8306 x8300)))))
                     (begin
                       (write '(funapp 2356 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2356 27)) (display "\n") 'world)
                        x8299)))))
                  (begin
                    (write '(funapp 2357 19))
                    (display "\n")
                    (x8311 x8298))))
                (g8205
                 (letrec*
                  ((x8330
                    (begin
                      (write '(funapp 2361 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g8331
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g8332
                                 (letrec*
                                  ((x8333
                                    (letrec*
                                     ((x8335
                                       (begin
                                         (write '(funapp 2370 44))
                                         (display "\n")
                                         (WORLD/C j7399 k7400 g7397)))
                                      (x8334
                                       (begin
                                         (write '(funapp 2371 44))
                                         (display "\n")
                                         (string?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 2372 36))
                                       (display "\n")
                                       (f7401 x8335 x8334)))))
                                  (begin
                                    (write '(funapp 2373 33))
                                    (display "\n")
                                    (WORLD/C j7399 k7400 x8333)))))
                               g8332))))
                          g8331))
                       (begin (write '(funapp 2376 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2377 21))
                         (display "\n")
                         'importer)
                       handle-key)))
                   (x8317
                    (letrec*
                     ((x8318
                       (letrec*
                        ((x8325
                          (letrec*
                           ((x8326
                             (letrec*
                              ((x8329 (input))
                               (x8327
                                (letrec*
                                 ((x8328 (input)))
                                 (begin
                                   (write '(funapp 2389 60))
                                   (display "\n")
                                   (cons
                                    x8328
                                    (begin
                                      (write '(funapp 2389 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2390 31))
                                (display "\n")
                                (cons x8329 x8327)))))
                           (begin
                             (write '(funapp 2391 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2391 33))
                                (display "\n")
                                'snake)
                              x8326))))
                         (x8319
                          (letrec*
                           ((x8320
                             (letrec*
                              ((x8321
                                (letrec*
                                 ((x8324 (input))
                                  (x8322
                                   (letrec*
                                    ((x8323 (input)))
                                    (begin
                                      (write '(funapp 2402 37))
                                      (display "\n")
                                      (cons
                                       x8323
                                       (begin
                                         (write '(funapp 2402 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2403 34))
                                   (display "\n")
                                   (cons x8324 x8322)))))
                              (begin
                                (write '(funapp 2404 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2404 36))
                                   (display "\n")
                                   'posn)
                                 x8321)))))
                           (begin
                             (write '(funapp 2405 28))
                             (display "\n")
                             (cons
                              x8320
                              (begin
                                (write '(funapp 2405 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2406 25))
                          (display "\n")
                          (cons x8325 x8319)))))
                     (begin
                       (write '(funapp 2407 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2407 27)) (display "\n") 'world)
                        x8318))))
                   (x8316 (input)))
                  (begin
                    (write '(funapp 2409 19))
                    (display "\n")
                    (x8330 x8317 x8316))))
                (g8206
                 (letrec*
                  ((x8349
                    (begin
                      (write '(funapp 2413 21))
                      (display "\n")
                      ((lambda (j7403 k7404 f7405)
                         (letrec*
                          ((g8350
                            (lambda (g7402)
                              (letrec*
                               ((g8351
                                 (letrec*
                                  ((x8352
                                    (letrec*
                                     ((x8353
                                       (begin
                                         (write '(funapp 2422 44))
                                         (display "\n")
                                         (WORLD/C j7403 k7404 g7402))))
                                     (begin
                                       (write '(funapp 2423 36))
                                       (display "\n")
                                       (f7405 x8353)))))
                                  (begin
                                    (write '(funapp 2424 33))
                                    (display "\n")
                                    (boolean?/c j7403 k7404 x8352)))))
                               g8351))))
                          g8350))
                       (begin (write '(funapp 2427 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2428 21))
                         (display "\n")
                         'importer)
                       game-over?)))
                   (x8336
                    (letrec*
                     ((x8337
                       (letrec*
                        ((x8344
                          (letrec*
                           ((x8345
                             (letrec*
                              ((x8348 (input))
                               (x8346
                                (letrec*
                                 ((x8347 (input)))
                                 (begin
                                   (write '(funapp 2440 60))
                                   (display "\n")
                                   (cons
                                    x8347
                                    (begin
                                      (write '(funapp 2440 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2441 31))
                                (display "\n")
                                (cons x8348 x8346)))))
                           (begin
                             (write '(funapp 2442 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2442 33))
                                (display "\n")
                                'snake)
                              x8345))))
                         (x8338
                          (letrec*
                           ((x8339
                             (letrec*
                              ((x8340
                                (letrec*
                                 ((x8343 (input))
                                  (x8341
                                   (letrec*
                                    ((x8342 (input)))
                                    (begin
                                      (write '(funapp 2453 37))
                                      (display "\n")
                                      (cons
                                       x8342
                                       (begin
                                         (write '(funapp 2453 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2454 34))
                                   (display "\n")
                                   (cons x8343 x8341)))))
                              (begin
                                (write '(funapp 2455 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2455 36))
                                   (display "\n")
                                   'posn)
                                 x8340)))))
                           (begin
                             (write '(funapp 2456 28))
                             (display "\n")
                             (cons
                              x8339
                              (begin
                                (write '(funapp 2456 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2457 25))
                          (display "\n")
                          (cons x8344 x8338)))))
                     (begin
                       (write '(funapp 2458 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2458 27)) (display "\n") 'world)
                        x8337)))))
                  (begin
                    (write '(funapp 2459 19))
                    (display "\n")
                    (x8349 x8336))))
                (g8207
                 (letrec*
                  ((x8367
                    (begin
                      (write '(funapp 2463 21))
                      (display "\n")
                      ((lambda (j7407 k7408 f7409)
                         (letrec*
                          ((g8368
                            (lambda (g7406)
                              (letrec*
                               ((g8369
                                 (letrec*
                                  ((x8370
                                    (letrec*
                                     ((x8371
                                       (begin
                                         (write '(funapp 2472 44))
                                         (display "\n")
                                         (WORLD/C j7407 k7408 g7406))))
                                     (begin
                                       (write '(funapp 2473 36))
                                       (display "\n")
                                       (f7409 x8371)))))
                                  (begin
                                    (write '(funapp 2474 33))
                                    (display "\n")
                                    (image/c j7407 k7408 x8370)))))
                               g8369))))
                          g8368))
                       (begin (write '(funapp 2477 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2478 21))
                         (display "\n")
                         'importer)
                       world->scene)))
                   (x8354
                    (letrec*
                     ((x8355
                       (letrec*
                        ((x8362
                          (letrec*
                           ((x8363
                             (letrec*
                              ((x8366 (input))
                               (x8364
                                (letrec*
                                 ((x8365 (input)))
                                 (begin
                                   (write '(funapp 2490 60))
                                   (display "\n")
                                   (cons
                                    x8365
                                    (begin
                                      (write '(funapp 2490 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2491 31))
                                (display "\n")
                                (cons x8366 x8364)))))
                           (begin
                             (write '(funapp 2492 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2492 33))
                                (display "\n")
                                'snake)
                              x8363))))
                         (x8356
                          (letrec*
                           ((x8357
                             (letrec*
                              ((x8358
                                (letrec*
                                 ((x8361 (input))
                                  (x8359
                                   (letrec*
                                    ((x8360 (input)))
                                    (begin
                                      (write '(funapp 2503 37))
                                      (display "\n")
                                      (cons
                                       x8360
                                       (begin
                                         (write '(funapp 2503 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2504 34))
                                   (display "\n")
                                   (cons x8361 x8359)))))
                              (begin
                                (write '(funapp 2505 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2505 36))
                                   (display "\n")
                                   'posn)
                                 x8358)))))
                           (begin
                             (write '(funapp 2506 28))
                             (display "\n")
                             (cons
                              x8357
                              (begin
                                (write '(funapp 2506 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2507 25))
                          (display "\n")
                          (cons x8362 x8356)))))
                     (begin
                       (write '(funapp 2508 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2508 27)) (display "\n") 'world)
                        x8355)))))
                  (begin
                    (write '(funapp 2509 19))
                    (display "\n")
                    (x8367 x8354))))
                (g8208
                 (letrec*
                  ((x8378
                    (begin
                      (write '(funapp 2513 21))
                      (display "\n")
                      ((lambda (j7412 k7413 f7414)
                         (letrec*
                          ((g8379
                            (lambda (g7410 g7411)
                              (letrec*
                               ((g8380
                                 (letrec*
                                  ((x8381
                                    (letrec*
                                     ((x8383
                                       (begin
                                         (write '(funapp 2522 44))
                                         (display "\n")
                                         (POSN/C j7412 k7413 g7410)))
                                      (x8382
                                       (begin
                                         (write '(funapp 2523 44))
                                         (display "\n")
                                         (image/c j7412 k7413 g7411))))
                                     (begin
                                       (write '(funapp 2524 36))
                                       (display "\n")
                                       (f7414 x8383 x8382)))))
                                  (begin
                                    (write '(funapp 2525 33))
                                    (display "\n")
                                    (image/c j7412 k7413 x8381)))))
                               g8380))))
                          g8379))
                       (begin (write '(funapp 2528 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2529 21))
                         (display "\n")
                         'importer)
                       food+scene)))
                   (x8373
                    (letrec*
                     ((x8374
                       (letrec*
                        ((x8377 (input))
                         (x8375
                          (letrec*
                           ((x8376 (input)))
                           (begin
                             (write '(funapp 2536 60))
                             (display "\n")
                             (cons
                              x8376
                              (begin
                                (write '(funapp 2536 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2537 25))
                          (display "\n")
                          (cons x8377 x8375)))))
                     (begin
                       (write '(funapp 2538 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2538 27)) (display "\n") 'posn)
                        x8374))))
                   (x8372
                    (begin
                      (write '(funapp 2539 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2539 32)) (display "\n") 'image)
                       (begin (write '(funapp 2539 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2540 19))
                    (display "\n")
                    (x8378 x8373 x8372))))
                (g8209
                 (letrec*
                  ((x8388
                    (begin
                      (write '(funapp 2544 21))
                      (display "\n")
                      ((lambda (j7419 k7420 f7421)
                         (letrec*
                          ((g8389
                            (lambda (g7415 g7416 g7417 g7418)
                              (letrec*
                               ((g8390
                                 (letrec*
                                  ((x8391
                                    (letrec*
                                     ((x8395
                                       (begin
                                         (write '(funapp 2553 44))
                                         (display "\n")
                                         (image/c j7419 k7420 g7415)))
                                      (x8394
                                       (begin
                                         (write '(funapp 2554 44))
                                         (display "\n")
                                         (real?/c j7419 k7420 g7416)))
                                      (x8393
                                       (begin
                                         (write '(funapp 2555 44))
                                         (display "\n")
                                         (real?/c j7419 k7420 g7417)))
                                      (x8392
                                       (begin
                                         (write '(funapp 2556 44))
                                         (display "\n")
                                         (image/c j7419 k7420 g7418))))
                                     (begin
                                       (write '(funapp 2557 36))
                                       (display "\n")
                                       (f7421 x8395 x8394 x8393 x8392)))))
                                  (begin
                                    (write '(funapp 2558 33))
                                    (display "\n")
                                    (image/c j7419 k7420 x8391)))))
                               g8390))))
                          g8389))
                       (begin (write '(funapp 2561 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2562 21))
                         (display "\n")
                         'importer)
                       place-image-on-grid)))
                   (x8387
                    (begin
                      (write '(funapp 2564 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2564 32)) (display "\n") 'image)
                       (begin (write '(funapp 2564 39)) (display "\n") '()))))
                   (x8386 (input))
                   (x8385 (input))
                   (x8384
                    (begin
                      (write '(funapp 2567 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2567 32)) (display "\n") 'image)
                       (begin (write '(funapp 2567 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2568 19))
                    (display "\n")
                    (x8388 x8387 x8386 x8385 x8384))))
                (g8210
                 (letrec*
                  ((x8402
                    (begin
                      (write '(funapp 2572 21))
                      (display "\n")
                      ((lambda (j7424 k7425 f7426)
                         (letrec*
                          ((g8403
                            (lambda (g7422 g7423)
                              (letrec*
                               ((g8404
                                 (letrec*
                                  ((x8405
                                    (letrec*
                                     ((x8407
                                       (begin
                                         (write '(funapp 2581 44))
                                         (display "\n")
                                         (SNAKE/C j7424 k7425 g7422)))
                                      (x8406
                                       (begin
                                         (write '(funapp 2582 44))
                                         (display "\n")
                                         (image/c j7424 k7425 g7423))))
                                     (begin
                                       (write '(funapp 2583 36))
                                       (display "\n")
                                       (f7426 x8407 x8406)))))
                                  (begin
                                    (write '(funapp 2584 33))
                                    (display "\n")
                                    (image/c j7424 k7425 x8405)))))
                               g8404))))
                          g8403))
                       (begin (write '(funapp 2587 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2588 21))
                         (display "\n")
                         'importer)
                       snake+scene)))
                   (x8397
                    (letrec*
                     ((x8398
                       (letrec*
                        ((x8401 (input))
                         (x8399
                          (letrec*
                           ((x8400 (input)))
                           (begin
                             (write '(funapp 2595 60))
                             (display "\n")
                             (cons
                              x8400
                              (begin
                                (write '(funapp 2595 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2596 25))
                          (display "\n")
                          (cons x8401 x8399)))))
                     (begin
                       (write '(funapp 2597 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2597 27)) (display "\n") 'snake)
                        x8398))))
                   (x8396
                    (begin
                      (write '(funapp 2598 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2598 32)) (display "\n") 'image)
                       (begin (write '(funapp 2598 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2599 19))
                    (display "\n")
                    (x8402 x8397 x8396))))
                (g8211
                 (letrec*
                  ((x8410
                    (begin
                      (write '(funapp 2603 21))
                      (display "\n")
                      ((lambda (j7429 k7430 f7431)
                         (letrec*
                          ((g8411
                            (lambda (g7427 g7428)
                              (letrec*
                               ((g8412
                                 (letrec*
                                  ((x8413
                                    (letrec*
                                     ((x8415
                                       (letrec*
                                        ((x8416
                                          (begin
                                            (write '(funapp 2614 47))
                                            (display "\n")
                                            (listof POSN/C))))
                                        (begin
                                          (write '(funapp 2615 39))
                                          (display "\n")
                                          (x8416 j7429 k7430 g7427))))
                                      (x8414
                                       (begin
                                         (write '(funapp 2616 44))
                                         (display "\n")
                                         (image/c j7429 k7430 g7428))))
                                     (begin
                                       (write '(funapp 2617 36))
                                       (display "\n")
                                       (f7431 x8415 x8414)))))
                                  (begin
                                    (write '(funapp 2618 33))
                                    (display "\n")
                                    (image/c j7429 k7430 x8413)))))
                               g8412))))
                          g8411))
                       (begin (write '(funapp 2621 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2622 21))
                         (display "\n")
                         'importer)
                       segments+scene)))
                   (x8409 (input))
                   (x8408
                    (begin
                      (write '(funapp 2625 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2625 32)) (display "\n") 'image)
                       (begin (write '(funapp 2625 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2626 19))
                    (display "\n")
                    (x8410 x8409 x8408))))
                (g8212
                 (letrec*
                  ((x8423
                    (begin
                      (write '(funapp 2630 21))
                      (display "\n")
                      ((lambda (j7434 k7435 f7436)
                         (letrec*
                          ((g8424
                            (lambda (g7432 g7433)
                              (letrec*
                               ((g8425
                                 (letrec*
                                  ((x8426
                                    (letrec*
                                     ((x8428
                                       (begin
                                         (write '(funapp 2639 44))
                                         (display "\n")
                                         (POSN/C j7434 k7435 g7432)))
                                      (x8427
                                       (begin
                                         (write '(funapp 2640 44))
                                         (display "\n")
                                         (image/c j7434 k7435 g7433))))
                                     (begin
                                       (write '(funapp 2641 36))
                                       (display "\n")
                                       (f7436 x8428 x8427)))))
                                  (begin
                                    (write '(funapp 2642 33))
                                    (display "\n")
                                    (image/c j7434 k7435 x8426)))))
                               g8425))))
                          g8424))
                       (begin (write '(funapp 2645 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2646 21))
                         (display "\n")
                         'importer)
                       segment+scene)))
                   (x8418
                    (letrec*
                     ((x8419
                       (letrec*
                        ((x8422 (input))
                         (x8420
                          (letrec*
                           ((x8421 (input)))
                           (begin
                             (write '(funapp 2653 60))
                             (display "\n")
                             (cons
                              x8421
                              (begin
                                (write '(funapp 2653 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2654 25))
                          (display "\n")
                          (cons x8422 x8420)))))
                     (begin
                       (write '(funapp 2655 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2655 27)) (display "\n") 'posn)
                        x8419))))
                   (x8417
                    (begin
                      (write '(funapp 2656 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2656 32)) (display "\n") 'image)
                       (begin (write '(funapp 2656 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2657 19))
                    (display "\n")
                    (x8423 x8418 x8417)))))
               g8212))))
           g7466))))
       g7464)))
    g7463)))
