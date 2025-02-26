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
               (add1
                (lambda (x)
                  (letrec*
                   ((g7579
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7579)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7582
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7585
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7586 x7585)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7584)))))
                               g7583))))
                          g7582))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7581))))))
                  g7580)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7589
                            (lambda (g7372)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7592)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7591)))))
                               g7590))))
                          g7589))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7588))))))
                  g7587)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7595
                            (lambda (g7378)
                              (letrec*
                               ((g7596
                                 (letrec*
                                  ((x7597
                                    (letrec*
                                     ((x7598
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7598)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7597)))))
                               g7596))))
                          g7595))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7594
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7594))))))
                  g7593)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7599
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7601
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7602
                                 (letrec*
                                  ((x7603
                                    (letrec*
                                     ((x7605
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7604
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7605 x7604)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7603)))))
                               g7602))))
                          g7601))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7600
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7600))))))
                  g7599)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7606
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7608
                            (lambda (g7391)
                              (letrec*
                               ((g7609
                                 (letrec*
                                  ((x7610
                                    (letrec*
                                     ((x7611
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7611)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7610)))))
                               g7609))))
                          g7608))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7607
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7607))))))
                  g7606)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7612
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7614
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7615
                                 (letrec*
                                  ((x7616
                                    (letrec*
                                     ((x7618
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7617
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7618 x7617)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7616)))))
                               g7615))))
                          g7614))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7613
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7613))))))
                  g7612)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7621)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7627
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7631))))
                          (x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7629)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7630 x7628)))))))
                   g7624)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7633)))))
                   g7632)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7637)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7636)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (cdadar
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
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7641)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7639)))))
                   g7638)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 750 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 751 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7647
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7648 res))
                       g7648))))
                   g7644)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7651)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7653)))))
                   g7652)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7659
                        #f
                        (letrec*
                         ((x-cnd7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7661 k)))))
                         (if x-cnd7660
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7662)))))))))
                   g7657)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7664)))))
                   g7663)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7668
                        ""
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7672))))
                          (x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7670)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7671 x7669)))))))
                   g7666)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7677))))
                    (g7675
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7678
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7678))))
                   g7675)))
               (cdddar
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
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7682)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7681)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7680)))))
                   g7679)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7686))))
                    (g7684
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7688
                        x
                        (letrec*
                         ((x7690
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7689
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7690 x7689)))))))
                   g7685)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7691
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7691)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x-cnd7693
                        (letrec*
                         ((x7694 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7694)))))
                      (if x-cnd7693
                        (letrec*
                         ((x7695 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7695)))
                        #f))))
                   g7692)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7697
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7697 9)))))
                      (letrec*
                       ((g7698
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7699
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7699 10)))))
                            (letrec*
                             ((g7700
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7701
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7701 32))))))
                             g7700)))))
                       g7698))))
                   g7696)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (letrec*
                         ((x7704
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7704)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7703)))))
                   g7702)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7707))))
                    (g7706
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7706)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7708
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7708)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7709 #f)) g7709)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7711)))))
                   g7710)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7714))))
                    (g7713
                     (letrec*
                      ((x-cnd7715
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7715
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7713)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7717
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7718
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7718
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7719
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7720
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7720
                                       (letrec*
                                        ((x-cnd7721
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7721
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7722
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7723
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7723
                                             (letrec*
                                              ((x-cnd7724
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7724
                                                (letrec*
                                                 ((x-cnd7725
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7726
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7727 x7726)))))
                                                 (if x-cnd7725
                                                   (letrec*
                                                    ((x7729
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7728
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7729 x7728)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7730
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7731
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7731
                                                (letrec*
                                                 ((x-cnd7732
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7732
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7733
                                                       (letrec*
                                                        ((x-cnd7734
                                                          (letrec*
                                                           ((x7735
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
                                                             (display "\n")
                                                             (= x7735 n)))))
                                                        (if x-cnd7734
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7736
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1003
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7737
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7738
                                                                           (letrec*
                                                                            ((x7740
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1012
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7739
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1016
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1019
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7740
                                                                               x7739)))))
                                                                         (if x-cnd7738
                                                                           (letrec*
                                                                            ((x7741
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1025
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1028
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7741)))
                                                                           #f)))))
                                                                    g7737))))
                                                                g7736))))
                                                           (letrec*
                                                            ((g7742
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7742))
                                                          #f))))
                                                     g7733))
                                                   #f))
                                                #f)))))
                                         g7730)))))
                                   g7722)))))
                             g7719)))))
                       g7717))))
                   g7716)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7746)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7750)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7751
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7751)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1077 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1078 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7757
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7758 res))
                       g7758))))
                   g7754)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7759
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7759)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7765
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7765))))
                   g7762)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (cdaddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7772)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7770)))))
                   g7769)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7784)))))
                   g7781)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7790)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7792
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7792)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (letrec*
                         ((x7795
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7794)))))
                   g7793)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7796
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7796)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7800
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7804))))
                          (x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7802)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7803 x7801)))))))
                   g7798)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (letrec*
                         ((x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7808)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7807)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7806)))))
                   g7805)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (letrec*
                         ((x7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7812)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7811)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7810)))))
                   g7809)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7815))))
                    (g7814
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7816)))))
                   g7814)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7818
                        (letrec*
                         ((x7819
                           (letrec*
                            ((x7820
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7820)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7819)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7818)))))
                   g7817)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7826
                        (letrec*
                         ((g7827
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7827)
                        (letrec*
                         ((x-cnd7828
                           (letrec*
                            ((x7829
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7829)))))
                         (if x-cnd7828
                           (letrec*
                            ((g7830
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7831)))))
                            g7830)
                           (letrec*
                            ((x-cnd7832
                              (letrec*
                               ((x7833
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7833)))))
                            (if x-cnd7832
                              (letrec*
                               ((g7834
                                 (letrec*
                                  ((x7836
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7835
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7836 x7835)))))
                               g7834)
                              (letrec*
                               ((x-cnd7837
                                 (letrec*
                                  ((x7838
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7838)))))
                               (if x-cnd7837
                                 (letrec*
                                  ((g7839
                                    (letrec*
                                     ((x7842
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7841
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7840
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7842 x7841 x7840)))))
                                  g7839)
                                 (letrec*
                                  ((x-cnd7843
                                    (letrec*
                                     ((x7844
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7844)))))
                                  (if x-cnd7843
                                    (letrec*
                                     ((g7845
                                       (letrec*
                                        ((x7849
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7848
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7847
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7846
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7849 x7848 x7847 x7846)))))
                                     g7845)
                                    (letrec*
                                     ((x-cnd7850
                                       (letrec*
                                        ((x7851
                                          (letrec*
                                           ((x7852
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7852)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7851)))))
                                     (if x-cnd7850
                                       (letrec*
                                        ((g7853
                                          (letrec*
                                           ((x7859
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7858
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7857
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7856
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7854
                                             (letrec*
                                              ((x7855
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7855)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7859
                                              x7858
                                              x7857
                                              x7856
                                              x7854)))))
                                        g7853)
                                       (letrec*
                                        ((x-cnd7860
                                          (letrec*
                                           ((x7861
                                             (letrec*
                                              ((x7862
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7862)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7861)))))
                                        (if x-cnd7860
                                          (letrec*
                                           ((g7863
                                             (letrec*
                                              ((x7871
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7870
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7869
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7868
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7866
                                                (letrec*
                                                 ((x7867
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7867))))
                                               (x7864
                                                (letrec*
                                                 ((x7865
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7865)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7871
                                                 x7870
                                                 x7869
                                                 x7868
                                                 x7866
                                                 x7864)))))
                                           g7863)
                                          (letrec*
                                           ((x-cnd7872
                                             (letrec*
                                              ((x7873
                                                (letrec*
                                                 ((x7874
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7874)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7873)))))
                                           (if x-cnd7872
                                             (letrec*
                                              ((g7875
                                                (letrec*
                                                 ((x7885
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7884
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7883
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7882
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7880
                                                   (letrec*
                                                    ((x7881
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7881))))
                                                  (x7878
                                                   (letrec*
                                                    ((x7879
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7879))))
                                                  (x7876
                                                   (letrec*
                                                    ((x7877
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7877)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7885
                                                    x7884
                                                    x7883
                                                    x7882
                                                    x7880
                                                    x7878
                                                    x7876)))))
                                              g7875)
                                             (letrec*
                                              ((g7886
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7886)))))))))))))))))))
                   g7823)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        #f
                        (letrec*
                         ((x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7892 e)))))
                         (if x-cnd7891
                           l
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7893)))))))))
                   g7888)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7897)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7896)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7895)))))
                   g7894)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (letrec*
                         ((x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7901)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7900)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7899)))))
                   g7898)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7902
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7902)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7904)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7907
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7907))))
                   g7906)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7909)))))
                   g7908)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7911
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7912)))
                           #f))))
                      (letrec*
                       ((g7913
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7913))))
                   g7910)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7917)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7916)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7915)))))
                   g7914)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x-cnd7919
                        (letrec*
                         ((x7920 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7920 c)))))
                      (if x-cnd7919
                        (letrec*
                         ((x7921 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7921)))
                        #f))))
                   g7918)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7924))))
                    (g7923
                     (letrec*
                      ((x-cnd7925
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7925
                        #f
                        (letrec*
                         ((x-cnd7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7927 k)))))
                         (if x-cnd7926
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7928)))))))))
                   g7923)))
               (not (lambda (x) (letrec* ((g7929 (if x #f #t))) g7929)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7930
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7930)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7933))))
                    (g7932
                     (letrec*
                      ((x-cnd7934
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7934
                        #f
                        (letrec*
                         ((x-cnd7935
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7936 e)))))
                         (if x-cnd7935
                           l
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7937)))))))))
                   g7932)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (letrec*
                         ((x7940
                           (letrec*
                            ((x7941
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7941)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7940)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7939)))))
                   g7938)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7945
                             (letrec*
                              ((x-cnd7946
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7946
                                0
                                (letrec*
                                 ((x7947
                                   (letrec*
                                    ((x7948
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7948)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7947)))))))
                           g7945))))
                      (letrec*
                       ((g7949
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7949))))
                   g7943)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7955
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7955))))
                   g7952)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7957)))))
                   g7956)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (letrec*
                         ((x7960
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7960)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7959)))))
                   g7958)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7963))))
                    (g7962
                     (letrec*
                      ((x-cnd7964
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7964
                        #f
                        (letrec*
                         ((x-cnd7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7966 k)))))
                         (if x-cnd7965
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7967)))))))))
                   g7962)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7969)))))
                   g7968)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7975)))))
                   g7972)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7977
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7977))))
                   g7976)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7982))))
                    (g7980
                     (letrec*
                      ((x-cnd7983
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7983
                        #t
                        (letrec*
                         ((x-cnd7984
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7984
                           (letrec*
                            ((g7985
                              (letrec*
                               ((x7987
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7987))))
                             (g7986
                              (letrec*
                               ((x7988
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7988)))))
                            g7986)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7980)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7991))))
                    (g7990
                     (letrec*
                      ((x-cnd7992
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7992
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7990)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7996))))
                    (g7994
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7997))))
                    (g7995
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7998
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7998))))
                   g7995)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (letrec*
                         ((x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8002)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x8001)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x8000)))))
                   g7999)))
               (newline (lambda () (letrec* ((g8003 #f)) g8003)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8007))))
                       (x8005
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8006 x8005)))))
                   g8004)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8012))))
                    (g8009
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8013))))
                    (g8010
                     (letrec*
                      ((x8014
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8015)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8014))))
                    (g8011
                     (letrec*
                      ((x-cnd8016
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8016
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8018
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8017
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8018 x8017)))))))
                   g8011)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8020
                        a
                        (letrec*
                         ((x8021
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8021)))))))
                   g8019)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8023
                        z
                        (letrec*
                         ((x8026
                           (begin
                             (write '(funapp 1705 34))
                             (display "\n")
                             (car xs)))
                          (x8024
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 1707 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1707 56))
                              (display "\n")
                              (foldr f z x8025)))))
                         (begin
                           (write '(funapp 1708 26))
                           (display "\n")
                           (f x8026 x8024)))))))
                   g8022)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8027
                     (begin
                       (write '(funapp 1714 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8028
                             (letrec*
                              ((x8029
                                (begin
                                  (write '(funapp 1717 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1717 59))
                                (display "\n")
                                (cons x8029 ys)))))
                           g8028))
                        empty
                        xs))))
                   g8027))))
              (letrec*
               ((g8030
                 (begin
                   (write '(funapp 1724 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1725 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8034
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1729 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1729 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1729 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1729 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8035
                              (begin
                                (write '(funapp 1732 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8036
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8037
                                           (letrec*
                                            ((x8038
                                              (letrec*
                                               ((x8042
                                                 (begin
                                                   (write '(funapp 1742 44))
                                                   (display "\n")
                                                   ((lambda (j7412 k7413 f7414)
                                                      (letrec*
                                                       ((g8043
                                                         (lambda (g7410 g7411)
                                                           (letrec*
                                                            ((g8044
                                                              (letrec*
                                                               ((x8045
                                                                 (letrec*
                                                                  ((x8047
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1752
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7412
                                                                       k7413
                                                                       g7410)))
                                                                   (x8046
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1757
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
                                                                       1761
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7414
                                                                     x8047
                                                                     x8046)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1764
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7412
                                                                  k7413
                                                                  x8045)))))
                                                            g8044))))
                                                       g8043))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8041
                                                 (begin
                                                   (write '(funapp 1773 50))
                                                   (display "\n")
                                                   (any/c j7407 k7408 g7405)))
                                                (x8039
                                                 (letrec*
                                                  ((x8040
                                                    (begin
                                                      (write '(funapp 1776 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1777 45))
                                                    (display "\n")
                                                    (x8040
                                                     j7407
                                                     k7408
                                                     g7406)))))
                                               (begin
                                                 (write '(funapp 1778 42))
                                                 (display "\n")
                                                 (f7409 x8042 x8041 x8039)))))
                                            (begin
                                              (write '(funapp 1779 39))
                                              (display "\n")
                                              (any/c j7407 k7408 x8038)))))
                                         g8037))))
                                    g8036))
                                 xj7402
                                 xk7403
                                 foldr))))
                            g8035)))
                         (x8033 (input))
                         (x8032 (input))
                         (x8031 (input)))
                        (begin
                          (write '(funapp 1789 21))
                          (display "\n")
                          (x8034 x8033 x8032 x8031)))
                       (letrec*
                        ((x8050
                          (letrec*
                           ((xj7415
                             (begin
                               (write '(funapp 1793 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1793 37))
                                  (display "\n")
                                  'module))))
                            (xk7416
                             (begin
                               (write '(funapp 1793 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1793 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8051
                              (begin
                                (write '(funapp 1796 27))
                                (display "\n")
                                ((lambda (j7419 k7420 f7421)
                                   (letrec*
                                    ((g8052
                                      (lambda (g7417 g7418)
                                        (letrec*
                                         ((g8053
                                           (letrec*
                                            ((x8062
                                              (begin
                                                (write '(funapp 1803 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8054
                                              (letrec*
                                               ((x8057
                                                 (begin
                                                   (write '(funapp 1807 44))
                                                   (display "\n")
                                                   ((lambda (j7423 k7424 f7425)
                                                      (letrec*
                                                       ((g8058
                                                         (lambda (g7422)
                                                           (letrec*
                                                            ((g8059
                                                              (letrec*
                                                               ((x8060
                                                                 (letrec*
                                                                  ((x8061
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1817
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
                                                                       1821
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7425
                                                                     x8061)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1822
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7423
                                                                  k7424
                                                                  x8060)))))
                                                            g8059))))
                                                       g8058))
                                                    j7419
                                                    k7420
                                                    g7417)))
                                                (x8055
                                                 (letrec*
                                                  ((x8056
                                                    (begin
                                                      (write '(funapp 1833 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1834 45))
                                                    (display "\n")
                                                    (x8056
                                                     j7419
                                                     k7420
                                                     g7418)))))
                                               (begin
                                                 (write '(funapp 1835 42))
                                                 (display "\n")
                                                 (f7421 x8057 x8055)))))
                                            (begin
                                              (write '(funapp 1836 39))
                                              (display "\n")
                                              (x8062 j7419 k7420 x8054)))))
                                         g8053))))
                                    g8052))
                                 xj7415
                                 xk7416
                                 map_))))
                            g8051)))
                         (x8049 (input))
                         (x8048 (input)))
                        (begin
                          (write '(funapp 1845 21))
                          (display "\n")
                          (x8050 x8049 x8048)))))))))
               g8030))))
           g7454))))
       g7437)))
    g7436)))
