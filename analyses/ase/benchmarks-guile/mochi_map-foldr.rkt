(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7426 #t)) g7426)))
    (meta (lambda (v) (letrec* ((g7427 v)) g7427)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7428
          (letrec*
           ((g7429
             (letrec*
              ((x-e7430 lst))
              (letrec*
               ((v1742 x-e7430))
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
                   ((x-cnd7431
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7431
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
           g7429)))
        g7428)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7432 (lambda (v) (letrec* ((g7433 v)) g7433)))) g7432)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7434
          (letrec*
           ((x7435 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7435)))))
        g7434))))
   (letrec*
    ((g7436
      (letrec*
       ((g7437
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7438
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7438)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7439
                 (letrec*
                  ((x7441
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7441))))
                (g7440
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7442
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7443 (if val7245 val7245 #f))) g7443)))))
                   g7442))))
               g7440)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7444
                 (letrec*
                  ((x7446
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7446))))
                (g7445
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7447
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7448 (if val7247 val7247 #f))) g7448)))))
                   g7447))))
               g7445)))
           (>
            (lambda (x y)
              (letrec*
               ((g7449
                 (letrec*
                  ((x7451
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7451))))
                (g7450
                 (letrec*
                  ((x7452
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7452)))))
               g7450)))
           (orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-> >)
           (orig-< <)
           (orig->= >=)
           (orig-<= <=)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g7453 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7454
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7455
                     (lambda (k j lst)
                       (letrec*
                        ((g7456
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7457
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7457))
                             lst))))
                        g7456))))
                   g7455)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7459
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7458)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7461
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7460)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7463
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7462)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7466 #t)) g7466)) g7274))))
                      (if x-cnd7465
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7464)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7469 #t)) g7469)) g7277))))
                      (if x-cnd7468
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7467)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7471
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7470)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7472
                     (lambda (k j v)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x7476
                             (letrec*
                              ((x7477
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7477))))
                            (x7474
                             (letrec*
                              ((x7475
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7475)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7476 x7474)))))
                        g7473))))
                   g7472)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7479
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7478)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7481
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7480)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7483
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7482)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7485
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7484)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7486
                     (lambda (k j v)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7488
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7487))))
                   g7486)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7489
                     (lambda (k j v)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7491
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7491))))
                        g7490))))
                   g7489)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7493
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7492)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7494
                     (lambda (k j v)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7496
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7500
                                (letrec*
                                 ((x7501
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7501))))
                               (x7497
                                (letrec*
                                 ((x7499
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7498
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7499 k j x7498)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7500 x7497)))))))
                        g7495))))
                   g7494)))
               (any? (lambda (v) (letrec* ((g7502 #t)) g7502)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7504)))))
                   g7503)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x-cnd7506
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7507
                                (letrec*
                                 ((x7508
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7508)))))
                              g7507))
                           g7298))))
                      (if x-cnd7506
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7505)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7509
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7510
                          (letrec*
                           ((x-cnd7511
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7512
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7512))
                                g7301))))
                           (if x-cnd7511
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7510))))
                   g7509)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7513
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7514
                          (letrec*
                           ((x-cnd7515
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7516
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7516))
                                g7304))))
                           (if x-cnd7515
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7514))))
                   g7513)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7517
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7518
                          (letrec*
                           ((x-cnd7519
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7520
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7520))
                                g7307))))
                           (if x-cnd7519
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7518))))
                   g7517)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7521
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7522
                          (letrec*
                           ((x-cnd7523
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7524
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7524))
                                g7310))))
                           (if x-cnd7523
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7522))))
                   g7521)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7525
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7526
                          (letrec*
                           ((x-cnd7527
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7528
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7528))
                                g7313))))
                           (if x-cnd7527
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7526))))
                   g7525)))
               (meta (lambda (v) (letrec* ((g7529 v)) g7529)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7532
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7535
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7534)))))
                               g7533))))
                          g7532))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7531))))))
                  g7530)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7539
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7542
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7541)))))
                               g7540))))
                          g7539))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7538))))))
                  g7537)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7546
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7549
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7548)))))
                               g7547))))
                          g7546))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7545))))))
                  g7544)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7553
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7556
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7555)))))
                               g7554))))
                          g7553))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7552))))))
                  g7551)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7560
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7563
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7564 x7563)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7562)))))
                               g7561))))
                          g7560))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7559))))))
                  g7558)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7567
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7570
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7569)))))
                               g7568))))
                          g7567))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7566))))))
                  g7565)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7574
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7577
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7576)))))
                               g7575))))
                          g7574))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7573))))))
                  g7572)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7581
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7584
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7585 x7584)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7583)))))
                               g7582))))
                          g7581))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7580))))))
                  g7579)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7588
                            (lambda (g7372)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7591
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7591)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7590)))))
                               g7589))))
                          g7588))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7587))))))
                  g7586)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7592
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7594
                            (lambda (g7378)
                              (letrec*
                               ((g7595
                                 (letrec*
                                  ((x7596
                                    (letrec*
                                     ((x7597
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7597)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7596)))))
                               g7595))))
                          g7594))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7593
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7593))))))
                  g7592)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7598
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7600
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7601
                                 (letrec*
                                  ((x7602
                                    (letrec*
                                     ((x7604
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7603
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7604 x7603)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7602)))))
                               g7601))))
                          g7600))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7599
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7599))))))
                  g7598)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7605
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7607
                            (lambda (g7391)
                              (letrec*
                               ((g7608
                                 (letrec*
                                  ((x7609
                                    (letrec*
                                     ((x7610
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7610)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7609)))))
                               g7608))))
                          g7607))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7606
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7606))))))
                  g7605)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7611
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7613
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7614
                                 (letrec*
                                  ((x7615
                                    (letrec*
                                     ((x7617
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7616
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7617 x7616)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7615)))))
                               g7614))))
                          g7613))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7612
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7612))))))
                  g7611)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7620)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7619)))))
                   g7618)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x-cnd7626
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7626
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7630))))
                          (x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7628)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7629 x7627)))))))
                   g7623)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7632)))))
                   g7631)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7636)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7635)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7640)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7638)))))
                   g7637)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 749 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 750 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7646
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7647 res))
                       g7647))))
                   g7643)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7650)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7649)))))
                   g7648)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7654)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7653)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7652)))))
                   g7651)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7657))))
                    (g7656
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7658
                        #f
                        (letrec*
                         ((x-cnd7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7660 k)))))
                         (if x-cnd7659
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7661)))))))))
                   g7656)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7663)))))
                   g7662)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7666))))
                    (g7665
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7667
                        ""
                        (letrec*
                         ((x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7671))))
                          (x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7669)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7670 x7668)))))))
                   g7665)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7677
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7677))))
                   g7674)))
               (cdddar
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
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7681)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7680)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7685))))
                    (g7683
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7686))))
                    (g7684
                     (letrec*
                      ((x-cnd7687
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7687
                        x
                        (letrec*
                         ((x7689
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7688
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7689 x7688)))))))
                   g7684)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7690
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7690)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x-cnd7692
                        (letrec*
                         ((x7693 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7693)))))
                      (if x-cnd7692
                        (letrec*
                         ((x7694 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7694)))
                        #f))))
                   g7691)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7696
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7696 9)))))
                      (letrec*
                       ((g7697
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7698
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7698 10)))))
                            (letrec*
                             ((g7699
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7700
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7700 32))))))
                             g7699)))))
                       g7697))))
                   g7695)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7702
                        (letrec*
                         ((x7703
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7703)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7702)))))
                   g7701)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7706))))
                    (g7705
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7705)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7707
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7707)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7708 #f)) g7708)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7710)))))
                   g7709)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7713))))
                    (g7712
                     (letrec*
                      ((x-cnd7714
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7714
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7712)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7716
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7717
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7717
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7718
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7719
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7719
                                       (letrec*
                                        ((x-cnd7720
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7720
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7721
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7722
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7722
                                             (letrec*
                                              ((x-cnd7723
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7723
                                                (letrec*
                                                 ((x-cnd7724
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7725
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7726 x7725)))))
                                                 (if x-cnd7724
                                                   (letrec*
                                                    ((x7728
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7727
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7728 x7727)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7729
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7730
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7730
                                                (letrec*
                                                 ((x-cnd7731
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7731
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7732
                                                       (letrec*
                                                        ((x-cnd7733
                                                          (letrec*
                                                           ((x7734
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
                                                             (display "\n")
                                                             (= x7734 n)))))
                                                        (if x-cnd7733
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7735
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1002
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7736
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7737
                                                                           (letrec*
                                                                            ((x7739
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1011
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7738
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1015
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1018
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7739
                                                                               x7738)))))
                                                                         (if x-cnd7737
                                                                           (letrec*
                                                                            ((x7740
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1024
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1027
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7740)))
                                                                           #f)))))
                                                                    g7736))))
                                                                g7735))))
                                                           (letrec*
                                                            ((g7741
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7741))
                                                          #f))))
                                                     g7732))
                                                   #f))
                                                #f)))))
                                         g7729)))))
                                   g7721)))))
                             g7718)))))
                       g7716))))
                   g7715)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7745)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7749)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7750
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7750)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1076 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1077 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7756
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7757 res))
                       g7757))))
                   g7753)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7758
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7758)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7764
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7764))))
                   g7761)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (cdaddr
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
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7771)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7769)))))
                   g7768)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7782))))
                    (g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7783)))))
                   g7780)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7787)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7790))))
                    (g7789
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7789)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7791
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7791)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7793)))))
                   g7792)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7795
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7795)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7803))))
                          (x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7801)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7802 x7800)))))))
                   g7797)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (letrec*
                         ((x7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7807)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7806)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7805)))))
                   g7804)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7809
                        (letrec*
                         ((x7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7811)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7810)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7809)))))
                   g7808)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7814))))
                    (g7813
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7815)))))
                   g7813)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7817
                        (letrec*
                         ((x7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7819)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7818)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7817)))))
                   g7816)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7825
                        (letrec*
                         ((g7826
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7826)
                        (letrec*
                         ((x-cnd7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7828)))))
                         (if x-cnd7827
                           (letrec*
                            ((g7829
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7830)))))
                            g7829)
                           (letrec*
                            ((x-cnd7831
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7832)))))
                            (if x-cnd7831
                              (letrec*
                               ((g7833
                                 (letrec*
                                  ((x7835
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7834
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7835 x7834)))))
                               g7833)
                              (letrec*
                               ((x-cnd7836
                                 (letrec*
                                  ((x7837
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7837)))))
                               (if x-cnd7836
                                 (letrec*
                                  ((g7838
                                    (letrec*
                                     ((x7841
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7840
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7839
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7841 x7840 x7839)))))
                                  g7838)
                                 (letrec*
                                  ((x-cnd7842
                                    (letrec*
                                     ((x7843
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7843)))))
                                  (if x-cnd7842
                                    (letrec*
                                     ((g7844
                                       (letrec*
                                        ((x7848
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7847
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7846
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7845
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7848 x7847 x7846 x7845)))))
                                     g7844)
                                    (letrec*
                                     ((x-cnd7849
                                       (letrec*
                                        ((x7850
                                          (letrec*
                                           ((x7851
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7851)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7850)))))
                                     (if x-cnd7849
                                       (letrec*
                                        ((g7852
                                          (letrec*
                                           ((x7858
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7857
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7856
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7855
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7853
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7854)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7858
                                              x7857
                                              x7856
                                              x7855
                                              x7853)))))
                                        g7852)
                                       (letrec*
                                        ((x-cnd7859
                                          (letrec*
                                           ((x7860
                                             (letrec*
                                              ((x7861
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7861)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7860)))))
                                        (if x-cnd7859
                                          (letrec*
                                           ((g7862
                                             (letrec*
                                              ((x7870
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7869
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7868
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7867
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7865
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7866))))
                                               (x7863
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7864)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7870
                                                 x7869
                                                 x7868
                                                 x7867
                                                 x7865
                                                 x7863)))))
                                           g7862)
                                          (letrec*
                                           ((x-cnd7871
                                             (letrec*
                                              ((x7872
                                                (letrec*
                                                 ((x7873
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7873)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7872)))))
                                           (if x-cnd7871
                                             (letrec*
                                              ((g7874
                                                (letrec*
                                                 ((x7884
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7883
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7882
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7881
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7879
                                                   (letrec*
                                                    ((x7880
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7880))))
                                                  (x7877
                                                   (letrec*
                                                    ((x7878
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7878))))
                                                  (x7875
                                                   (letrec*
                                                    ((x7876
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7876)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7884
                                                    x7883
                                                    x7882
                                                    x7881
                                                    x7879
                                                    x7877
                                                    x7875)))))
                                              g7874)
                                             (letrec*
                                              ((g7885
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7885)))))))))))))))))))
                   g7822)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7891 e)))))
                         (if x-cnd7890
                           l
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7892)))))))))
                   g7887)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (letrec*
                         ((x7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7896)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7895)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7894)))))
                   g7893)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7898
                        (letrec*
                         ((x7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7900)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7899)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7898)))))
                   g7897)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7901
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7901)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7903)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7906
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7906))))
                   g7905)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7908)))))
                   g7907)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7910
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7911)))
                           #f))))
                      (letrec*
                       ((g7912
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7912))))
                   g7909)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7916)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7915)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7914)))))
                   g7913)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x-cnd7918
                        (letrec*
                         ((x7919 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7919 c)))))
                      (if x-cnd7918
                        (letrec*
                         ((x7920 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7920)))
                        #f))))
                   g7917)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((x-cnd7924
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7924
                        #f
                        (letrec*
                         ((x-cnd7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7926 k)))))
                         (if x-cnd7925
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7927)))))))))
                   g7922)))
               (not (lambda (x) (letrec* ((g7928 (if x #f #t))) g7928)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7929
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7929)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7932))))
                    (g7931
                     (letrec*
                      ((x-cnd7933
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7933
                        #f
                        (letrec*
                         ((x-cnd7934
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7935 e)))))
                         (if x-cnd7934
                           l
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7936)))))))))
                   g7931)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (letrec*
                         ((x7939
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7940)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7939)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7938)))))
                   g7937)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7943))))
                    (g7942
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7944
                             (letrec*
                              ((x-cnd7945
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7945
                                0
                                (letrec*
                                 ((x7946
                                   (letrec*
                                    ((x7947
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7947)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7946)))))))
                           g7944))))
                      (letrec*
                       ((g7948
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7948))))
                   g7942)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7954
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7954))))
                   g7951)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7956)))))
                   g7955)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (letrec*
                         ((x7959
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7959)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7958)))))
                   g7957)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7963
                        #f
                        (letrec*
                         ((x-cnd7964
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7965 k)))))
                         (if x-cnd7964
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7966)))))))))
                   g7961)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7968)))))
                   g7967)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7974)))))
                   g7971)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7976
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7976))))
                   g7975)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7982
                        #t
                        (letrec*
                         ((x-cnd7983
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7983
                           (letrec*
                            ((g7984
                              (letrec*
                               ((x7986
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7986))))
                             (g7985
                              (letrec*
                               ((x7987
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7987)))))
                            g7985)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7979)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7990))))
                    (g7989
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7991
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7989)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7995))))
                    (g7993
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7996))))
                    (g7994
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7997
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7997))))
                   g7994)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (letrec*
                         ((x8000
                           (letrec*
                            ((x8001
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x8001)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x8000)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7999)))))
                   g7998)))
               (newline (lambda () (letrec* ((g8002 #f)) g8002)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8006))))
                       (x8004
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8005 x8004)))))
                   g8003)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8011))))
                    (g8008
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8012))))
                    (g8009
                     (letrec*
                      ((x8013
                        (letrec*
                         ((x8014
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8014)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8013))))
                    (g8010
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8015
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8017
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8016
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8017 x8016)))))))
                   g8010)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x-cnd8019
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8019
                        a
                        (letrec*
                         ((x8020
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8020)))))))
                   g8018)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x-cnd8022
                        (begin
                          (write '(funapp 1700 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8022
                        z
                        (letrec*
                         ((x8025
                           (begin
                             (write '(funapp 1704 34))
                             (display "\n")
                             (car xs)))
                          (x8023
                           (letrec*
                            ((x8024
                              (begin
                                (write '(funapp 1706 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1706 56))
                              (display "\n")
                              (foldr f z x8024)))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (f x8025 x8023)))))))
                   g8021)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8026
                     (begin
                       (write '(funapp 1713 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8027
                             (letrec*
                              ((x8028
                                (begin
                                  (write '(funapp 1716 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1716 59))
                                (display "\n")
                                (cons x8028 ys)))))
                           g8027))
                        empty
                        xs))))
                   g8026))))
              (letrec*
               ((g8029
                 (begin
                   (write '(funapp 1723 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1724 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8033
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1728 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1728 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1728 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1728 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8034
                              (begin
                                (write '(funapp 1731 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8035
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8036
                                           (letrec*
                                            ((x8037
                                              (letrec*
                                               ((x8041
                                                 (begin
                                                   (write '(funapp 1741 44))
                                                   (display "\n")
                                                   ((lambda (j7412 k7413 f7414)
                                                      (letrec*
                                                       ((g8042
                                                         (lambda (g7410 g7411)
                                                           (letrec*
                                                            ((g8043
                                                              (letrec*
                                                               ((x8044
                                                                 (letrec*
                                                                  ((x8046
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1751
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7412
                                                                       k7413
                                                                       g7410)))
                                                                   (x8045
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1756
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7412
                                                                       k7413
                                                                       g7411))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1760
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7414
                                                                     x8046
                                                                     x8045)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1763
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7412
                                                                  k7413
                                                                  x8044)))))
                                                            g8043))))
                                                       g8042))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8040
                                                 (begin
                                                   (write '(funapp 1772 50))
                                                   (display "\n")
                                                   (any/c j7407 k7408 g7405)))
                                                (x8038
                                                 (letrec*
                                                  ((x8039
                                                    (begin
                                                      (write '(funapp 1775 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1776 45))
                                                    (display "\n")
                                                    (x8039
                                                     j7407
                                                     k7408
                                                     g7406)))))
                                               (begin
                                                 (write '(funapp 1777 42))
                                                 (display "\n")
                                                 (f7409 x8041 x8040 x8038)))))
                                            (begin
                                              (write '(funapp 1778 39))
                                              (display "\n")
                                              (any/c j7407 k7408 x8037)))))
                                         g8036))))
                                    g8035))
                                 xj7402
                                 xk7403
                                 foldr))))
                            g8034)))
                         (x8032 (input))
                         (x8031 (input))
                         (x8030 (input)))
                        (begin
                          (write '(funapp 1788 21))
                          (display "\n")
                          (x8033 x8032 x8031 x8030)))
                       (letrec*
                        ((x8049
                          (letrec*
                           ((xj7415
                             (begin
                               (write '(funapp 1792 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1792 37))
                                  (display "\n")
                                  'module))))
                            (xk7416
                             (begin
                               (write '(funapp 1792 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1792 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8050
                              (begin
                                (write '(funapp 1795 27))
                                (display "\n")
                                ((lambda (j7419 k7420 f7421)
                                   (letrec*
                                    ((g8051
                                      (lambda (g7417 g7418)
                                        (letrec*
                                         ((g8052
                                           (letrec*
                                            ((x8061
                                              (begin
                                                (write '(funapp 1802 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8053
                                              (letrec*
                                               ((x8056
                                                 (begin
                                                   (write '(funapp 1806 44))
                                                   (display "\n")
                                                   ((lambda (j7423 k7424 f7425)
                                                      (letrec*
                                                       ((g8057
                                                         (lambda (g7422)
                                                           (letrec*
                                                            ((g8058
                                                              (letrec*
                                                               ((x8059
                                                                 (letrec*
                                                                  ((x8060
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1816
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7423
                                                                       k7424
                                                                       g7422))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1820
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7425
                                                                     x8060)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1821
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7423
                                                                  k7424
                                                                  x8059)))))
                                                            g8058))))
                                                       g8057))
                                                    j7419
                                                    k7420
                                                    g7417)))
                                                (x8054
                                                 (letrec*
                                                  ((x8055
                                                    (begin
                                                      (write '(funapp 1832 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1833 45))
                                                    (display "\n")
                                                    (x8055
                                                     j7419
                                                     k7420
                                                     g7418)))))
                                               (begin
                                                 (write '(funapp 1834 42))
                                                 (display "\n")
                                                 (f7421 x8056 x8054)))))
                                            (begin
                                              (write '(funapp 1835 39))
                                              (display "\n")
                                              (x8061 j7419 k7420 x8053)))))
                                         g8052))))
                                    g8051))
                                 xj7415
                                 xk7416
                                 map_))))
                            g8050)))
                         (x8048 (input))
                         (x8047 (input)))
                        (begin
                          (write '(funapp 1844 21))
                          (display "\n")
                          (x8049 x8048 x8047)))))))))
               g8029))))
           g7454))))
       g7437)))
    g7436)))
