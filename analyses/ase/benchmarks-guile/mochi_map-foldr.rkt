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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7580
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7580)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7583
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7586
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7587 x7586)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7585)))))
                               g7584))))
                          g7583))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7582))))))
                  g7581)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7590
                            (lambda (g7372)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7593)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7592)))))
                               g7591))))
                          g7590))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7589))))))
                  g7588)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7596
                            (lambda (g7378)
                              (letrec*
                               ((g7597
                                 (letrec*
                                  ((x7598
                                    (letrec*
                                     ((x7599
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7599)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7598)))))
                               g7597))))
                          g7596))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7595
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7595))))))
                  g7594)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7600
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7602
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7603
                                 (letrec*
                                  ((x7604
                                    (letrec*
                                     ((x7606
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7605
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7606 x7605)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7604)))))
                               g7603))))
                          g7602))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7601
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7601))))))
                  g7600)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7607
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7609
                            (lambda (g7391)
                              (letrec*
                               ((g7610
                                 (letrec*
                                  ((x7611
                                    (letrec*
                                     ((x7612
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7612)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7611)))))
                               g7610))))
                          g7609))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7608
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7608))))))
                  g7607)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7613
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7615
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7616
                                 (letrec*
                                  ((x7617
                                    (letrec*
                                     ((x7619
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7618
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7619 x7618)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7617)))))
                               g7616))))
                          g7615))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7614
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7614))))))
                  g7613)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7622)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7621)))))
                   g7620)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7628
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7632))))
                          (x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7630)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7631 x7629)))))))
                   g7625)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7637)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7642)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7640)))))
                   g7639)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 751 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 752 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7648
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7649 res))
                       g7649))))
                   g7645)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7656)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7654)))))
                   g7653)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7660
                        #f
                        (letrec*
                         ((x-cnd7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7662 k)))))
                         (if x-cnd7661
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7663)))))))))
                   g7658)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7665)))))
                   g7664)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7668))))
                    (g7667
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7669
                        ""
                        (letrec*
                         ((x7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7673))))
                          (x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7671)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7672 x7670)))))))
                   g7667)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7677))))
                    (g7675
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7678))))
                    (g7676
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7679
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7679))))
                   g7676)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (letrec*
                         ((x7682
                           (letrec*
                            ((x7683
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7683)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7682)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7687))))
                    (g7685
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7688))))
                    (g7686
                     (letrec*
                      ((x-cnd7689
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7689
                        x
                        (letrec*
                         ((x7691
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7690
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7691 x7690)))))))
                   g7686)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7692
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7692)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x-cnd7694
                        (letrec*
                         ((x7695 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7695)))))
                      (if x-cnd7694
                        (letrec*
                         ((x7696 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7696)))
                        #f))))
                   g7693)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7698
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7698 9)))))
                      (letrec*
                       ((g7699
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7700
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7700 10)))))
                            (letrec*
                             ((g7701
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7702
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7702 32))))))
                             g7701)))))
                       g7699))))
                   g7697)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7704
                        (letrec*
                         ((x7705
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7705)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7704)))))
                   g7703)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7708))))
                    (g7707
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7707)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7709
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7709)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7710 #f)) g7710)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7712)))))
                   g7711)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7715
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7715))))
                    (g7714
                     (letrec*
                      ((x-cnd7716
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7716
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7714)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7718
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7719
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7719
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7720
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7721
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7721
                                       (letrec*
                                        ((x-cnd7722
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7722
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7723
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7724
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7724
                                             (letrec*
                                              ((x-cnd7725
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7725
                                                (letrec*
                                                 ((x-cnd7726
                                                   (letrec*
                                                    ((x7728
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7727
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7728 x7727)))))
                                                 (if x-cnd7726
                                                   (letrec*
                                                    ((x7730
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7729
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7730 x7729)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7731
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7732
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7732
                                                (letrec*
                                                 ((x-cnd7733
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7733
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7734
                                                       (letrec*
                                                        ((x-cnd7735
                                                          (letrec*
                                                           ((x7736
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
                                                             (display "\n")
                                                             (= x7736 n)))))
                                                        (if x-cnd7735
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7737
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1004
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7738
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7739
                                                                           (letrec*
                                                                            ((x7741
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1013
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7740
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1017
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1020
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7741
                                                                               x7740)))))
                                                                         (if x-cnd7739
                                                                           (letrec*
                                                                            ((x7742
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1026
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1029
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7742)))
                                                                           #f)))))
                                                                    g7738))))
                                                                g7737))))
                                                           (letrec*
                                                            ((g7743
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7743))
                                                          #f))))
                                                     g7734))
                                                   #f))
                                                #f)))))
                                         g7731)))))
                                   g7723)))))
                             g7720)))))
                       g7718))))
                   g7717)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7747)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7745)))))
                   g7744)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7751)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7752
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7752)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1078 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1079 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7758
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7759 res))
                       g7759))))
                   g7755)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7760
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7760)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7766
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7766))))
                   g7763)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7773)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7776)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7785)))))
                   g7782)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7791)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7793
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7793)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7797
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7797)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7805))))
                          (x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7803)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7804 x7802)))))))
                   g7799)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7809)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7808)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7807)))))
                   g7806)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7811
                        (letrec*
                         ((x7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7813)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7812)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7811)))))
                   g7810)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7816))))
                    (g7815
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7817)))))
                   g7815)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7819
                        (letrec*
                         ((x7820
                           (letrec*
                            ((x7821
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7821)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7820)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7819)))))
                   g7818)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7827
                        (letrec*
                         ((g7828
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7828)
                        (letrec*
                         ((x-cnd7829
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7830)))))
                         (if x-cnd7829
                           (letrec*
                            ((g7831
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7832)))))
                            g7831)
                           (letrec*
                            ((x-cnd7833
                              (letrec*
                               ((x7834
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7834)))))
                            (if x-cnd7833
                              (letrec*
                               ((g7835
                                 (letrec*
                                  ((x7837
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7836
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7837 x7836)))))
                               g7835)
                              (letrec*
                               ((x-cnd7838
                                 (letrec*
                                  ((x7839
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7839)))))
                               (if x-cnd7838
                                 (letrec*
                                  ((g7840
                                    (letrec*
                                     ((x7843
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7842
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7841
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7843 x7842 x7841)))))
                                  g7840)
                                 (letrec*
                                  ((x-cnd7844
                                    (letrec*
                                     ((x7845
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7845)))))
                                  (if x-cnd7844
                                    (letrec*
                                     ((g7846
                                       (letrec*
                                        ((x7850
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7849
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7848
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7847
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7850 x7849 x7848 x7847)))))
                                     g7846)
                                    (letrec*
                                     ((x-cnd7851
                                       (letrec*
                                        ((x7852
                                          (letrec*
                                           ((x7853
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7853)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7852)))))
                                     (if x-cnd7851
                                       (letrec*
                                        ((g7854
                                          (letrec*
                                           ((x7860
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7859
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7858
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7857
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7855
                                             (letrec*
                                              ((x7856
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7856)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7860
                                              x7859
                                              x7858
                                              x7857
                                              x7855)))))
                                        g7854)
                                       (letrec*
                                        ((x-cnd7861
                                          (letrec*
                                           ((x7862
                                             (letrec*
                                              ((x7863
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7863)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7862)))))
                                        (if x-cnd7861
                                          (letrec*
                                           ((g7864
                                             (letrec*
                                              ((x7872
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7871
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7870
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7869
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7867
                                                (letrec*
                                                 ((x7868
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7868))))
                                               (x7865
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7866)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7872
                                                 x7871
                                                 x7870
                                                 x7869
                                                 x7867
                                                 x7865)))))
                                           g7864)
                                          (letrec*
                                           ((x-cnd7873
                                             (letrec*
                                              ((x7874
                                                (letrec*
                                                 ((x7875
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7875)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7874)))))
                                           (if x-cnd7873
                                             (letrec*
                                              ((g7876
                                                (letrec*
                                                 ((x7886
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7885
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7884
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7883
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7881
                                                   (letrec*
                                                    ((x7882
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7882))))
                                                  (x7879
                                                   (letrec*
                                                    ((x7880
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7880))))
                                                  (x7877
                                                   (letrec*
                                                    ((x7878
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7878)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7886
                                                    x7885
                                                    x7884
                                                    x7883
                                                    x7881
                                                    x7879
                                                    x7877)))))
                                              g7876)
                                             (letrec*
                                              ((g7887
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7887)))))))))))))))))))
                   g7824)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7891
                        #f
                        (letrec*
                         ((x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7893 e)))))
                         (if x-cnd7892
                           l
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7894)))))))))
                   g7889)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7898)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7896)))))
                   g7895)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7902)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7901)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7900)))))
                   g7899)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7903
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7903)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7905)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7908
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7908))))
                   g7907)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7910)))))
                   g7909)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7912
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7913)))
                           #f))))
                      (letrec*
                       ((g7914
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7914))))
                   g7911)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7918)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7917)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7916)))))
                   g7915)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x-cnd7920
                        (letrec*
                         ((x7921 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7921 c)))))
                      (if x-cnd7920
                        (letrec*
                         ((x7922 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7922)))
                        #f))))
                   g7919)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((x-cnd7926
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7926
                        #f
                        (letrec*
                         ((x-cnd7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7928 k)))))
                         (if x-cnd7927
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7929)))))))))
                   g7924)))
               (not (lambda (x) (letrec* ((g7930 (if x #f #t))) g7930)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7931
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7931)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7935
                        #f
                        (letrec*
                         ((x-cnd7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7937 e)))))
                         (if x-cnd7936
                           l
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7938)))))))))
                   g7933)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (letrec*
                         ((x7941
                           (letrec*
                            ((x7942
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7942)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7941)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7946
                             (letrec*
                              ((x-cnd7947
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7947
                                0
                                (letrec*
                                 ((x7948
                                   (letrec*
                                    ((x7949
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7949)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7948)))))))
                           g7946))))
                      (letrec*
                       ((g7950
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7950))))
                   g7944)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7956
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7956))))
                   g7953)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7958)))))
                   g7957)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7960
                        (letrec*
                         ((x7961
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7961)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7960)))))
                   g7959)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7964))))
                    (g7963
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7965
                        #f
                        (letrec*
                         ((x-cnd7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7967 k)))))
                         (if x-cnd7966
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7968)))))))))
                   g7963)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7970)))))
                   g7969)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7976)))))
                   g7973)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7978
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7978))))
                   g7977)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7982))))
                    (g7980
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7984
                        #t
                        (letrec*
                         ((x-cnd7985
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7985
                           (letrec*
                            ((g7986
                              (letrec*
                               ((x7988
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7988))))
                             (g7987
                              (letrec*
                               ((x7989
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7989)))))
                            g7987)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7981)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7992))))
                    (g7991
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7993
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7991)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7997))))
                    (g7995
                     (letrec*
                      ((x7998
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7998))))
                    (g7996
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7999
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7999))))
                   g7996)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (letrec*
                            ((x8003
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x8003)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x8002)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x8001)))))
                   g8000)))
               (newline (lambda () (letrec* ((g8004 #f)) g8004)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8007
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8008))))
                       (x8006
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8007 x8006)))))
                   g8005)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8013))))
                    (g8010
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8014))))
                    (g8011
                     (letrec*
                      ((x8015
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8016)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8015))))
                    (g8012
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8017
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8019
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8018
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8019 x8018)))))))
                   g8012)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x-cnd8021
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8021
                        a
                        (letrec*
                         ((x8022
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8022)))))))
                   g8020)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x-cnd8024
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8024
                        z
                        (letrec*
                         ((x8027
                           (begin
                             (write '(funapp 1706 34))
                             (display "\n")
                             (car xs)))
                          (x8025
                           (letrec*
                            ((x8026
                              (begin
                                (write '(funapp 1708 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1708 56))
                              (display "\n")
                              (foldr f z x8026)))))
                         (begin
                           (write '(funapp 1709 26))
                           (display "\n")
                           (f x8027 x8025)))))))
                   g8023)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8028
                     (begin
                       (write '(funapp 1715 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8029
                             (letrec*
                              ((x8030
                                (begin
                                  (write '(funapp 1718 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1718 59))
                                (display "\n")
                                (cons x8030 ys)))))
                           g8029))
                        empty
                        xs))))
                   g8028))))
              (letrec*
               ((g8031
                 (begin
                   (write '(funapp 1725 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1726 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8035
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1730 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1730 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1730 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1730 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8036
                              (begin
                                (write '(funapp 1733 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8037
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8038
                                           (letrec*
                                            ((x8039
                                              (letrec*
                                               ((x8043
                                                 (begin
                                                   (write '(funapp 1743 44))
                                                   (display "\n")
                                                   ((lambda (j7412 k7413 f7414)
                                                      (letrec*
                                                       ((g8044
                                                         (lambda (g7410 g7411)
                                                           (letrec*
                                                            ((g8045
                                                              (letrec*
                                                               ((x8046
                                                                 (letrec*
                                                                  ((x8048
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1753
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7412
                                                                       k7413
                                                                       g7410)))
                                                                   (x8047
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1758
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
                                                                       1762
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7414
                                                                     x8048
                                                                     x8047)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1765
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7412
                                                                  k7413
                                                                  x8046)))))
                                                            g8045))))
                                                       g8044))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8042
                                                 (begin
                                                   (write '(funapp 1774 50))
                                                   (display "\n")
                                                   (any/c j7407 k7408 g7405)))
                                                (x8040
                                                 (letrec*
                                                  ((x8041
                                                    (begin
                                                      (write '(funapp 1777 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1778 45))
                                                    (display "\n")
                                                    (x8041
                                                     j7407
                                                     k7408
                                                     g7406)))))
                                               (begin
                                                 (write '(funapp 1779 42))
                                                 (display "\n")
                                                 (f7409 x8043 x8042 x8040)))))
                                            (begin
                                              (write '(funapp 1780 39))
                                              (display "\n")
                                              (any/c j7407 k7408 x8039)))))
                                         g8038))))
                                    g8037))
                                 xj7402
                                 xk7403
                                 foldr))))
                            g8036)))
                         (x8034 (input))
                         (x8033 (input))
                         (x8032 (input)))
                        (begin
                          (write '(funapp 1790 21))
                          (display "\n")
                          (x8035 x8034 x8033 x8032)))
                       (letrec*
                        ((x8051
                          (letrec*
                           ((xj7415
                             (begin
                               (write '(funapp 1794 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1794 37))
                                  (display "\n")
                                  'module))))
                            (xk7416
                             (begin
                               (write '(funapp 1794 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1794 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8052
                              (begin
                                (write '(funapp 1797 27))
                                (display "\n")
                                ((lambda (j7419 k7420 f7421)
                                   (letrec*
                                    ((g8053
                                      (lambda (g7417 g7418)
                                        (letrec*
                                         ((g8054
                                           (letrec*
                                            ((x8063
                                              (begin
                                                (write '(funapp 1804 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8055
                                              (letrec*
                                               ((x8058
                                                 (begin
                                                   (write '(funapp 1808 44))
                                                   (display "\n")
                                                   ((lambda (j7423 k7424 f7425)
                                                      (letrec*
                                                       ((g8059
                                                         (lambda (g7422)
                                                           (letrec*
                                                            ((g8060
                                                              (letrec*
                                                               ((x8061
                                                                 (letrec*
                                                                  ((x8062
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1818
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
                                                                       1822
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7425
                                                                     x8062)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1823
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7423
                                                                  k7424
                                                                  x8061)))))
                                                            g8060))))
                                                       g8059))
                                                    j7419
                                                    k7420
                                                    g7417)))
                                                (x8056
                                                 (letrec*
                                                  ((x8057
                                                    (begin
                                                      (write '(funapp 1834 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1835 45))
                                                    (display "\n")
                                                    (x8057
                                                     j7419
                                                     k7420
                                                     g7418)))))
                                               (begin
                                                 (write '(funapp 1836 42))
                                                 (display "\n")
                                                 (f7421 x8058 x8056)))))
                                            (begin
                                              (write '(funapp 1837 39))
                                              (display "\n")
                                              (x8063 j7419 k7420 x8055)))))
                                         g8054))))
                                    g8053))
                                 xj7415
                                 xk7416
                                 map_))))
                            g8052)))
                         (x8050 (input))
                         (x8049 (input)))
                        (begin
                          (write '(funapp 1846 21))
                          (display "\n")
                          (x8051 x8050 x8049)))))))))
               g8031))))
           g7454))))
       g7437)))
    g7436)))
