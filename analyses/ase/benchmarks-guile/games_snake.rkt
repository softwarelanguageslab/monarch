(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7519 #t)) g7519)))
    (meta (lambda (v) (letrec* ((g7520 v)) g7520)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7521
          (letrec*
           ((g7522
             (letrec*
              ((x-e7523 lst))
              (letrec*
               ((v1742 x-e7523))
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
                   ((x-cnd7524
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7524
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
           g7522)))
        g7521)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7525 (lambda (v) (letrec* ((g7526 v)) g7526)))) g7525)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7527
          (letrec*
           ((x7528 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7528)))))
        g7527))))
   (letrec*
    ((g7529
      (letrec*
       ((g7530
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
           ((g7531 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7532
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7533
                     (lambda (k j lst)
                       (letrec*
                        ((g7534
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7535
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7535))
                             lst))))
                        g7534))))
                   g7533)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x-cnd7537
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7537
                        g7265
                        (begin
                          (write '(blame g7263 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7536)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x-cnd7539
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7539
                        g7268
                        (begin
                          (write '(blame g7266 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7538)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x-cnd7541
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7541
                        g7271
                        (begin
                          (write '(blame g7269 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7540)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x-cnd7543
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7544 #t)) g7544)) g7274))))
                      (if x-cnd7543
                        g7274
                        (begin
                          (write '(blame g7272 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7542)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x-cnd7546
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7547 #t)) g7547)) g7277))))
                      (if x-cnd7546
                        g7277
                        (begin
                          (write '(blame g7275 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7545)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x-cnd7549
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7549
                        g7280
                        (begin
                          (write '(blame g7278 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7548)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x-cnd7551
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7551
                        g7283
                        (begin
                          (write '(blame g7281 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7550)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((x-cnd7553
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7553
                        g7286
                        (begin
                          (write '(blame g7284 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7552)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x-cnd7555
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7555
                        g7289
                        (begin
                          (write '(blame g7287 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7554)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7556
                     (lambda (k j v)
                       (letrec*
                        ((g7557
                          (letrec*
                           ((x-cnd7558
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7558
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7557))))
                   g7556)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7559
                     (lambda (k j v)
                       (letrec*
                        ((g7560
                          (letrec*
                           ((x-cnd7561
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7561
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7565
                                (letrec*
                                 ((x7566
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7566))))
                               (x7562
                                (letrec*
                                 ((x7564
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7563
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7564 k j x7563)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7565 x7562)))))))
                        g7560))))
                   g7559)))
               (any? (lambda (v) (letrec* ((g7567 #t)) g7567)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7569
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7569)))))
                   g7568)))
               (nonzero?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x-cnd7571
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7572
                                (letrec*
                                 ((x7573
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7573)))))
                              g7572))
                           g7292))))
                      (if x-cnd7571
                        g7292
                        (begin
                          (write '(blame g7290 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7570)))
               (meta (lambda (v) (letrec* ((g7574 v)) g7574)))
               (+
                (letrec*
                 ((xj7293
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7294
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7297 k7298 f7299)
                         (letrec*
                          ((g7577
                            (lambda (g7295 g7296)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7297 k7298 g7295)))
                                      (x7580
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7297 k7298 g7296))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7299 x7581 x7580)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7297 k7298 x7579)))))
                               g7578))))
                          g7577))
                       xj7293
                       xk7294
                       (lambda (a b)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7576))))))
                  g7575)))
               (-
                (letrec*
                 ((xj7300
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7301
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7304 k7305 f7306)
                         (letrec*
                          ((g7584
                            (lambda (g7302 g7303)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7304 k7305 g7302)))
                                      (x7587
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7304 k7305 g7303))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7306 x7588 x7587)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7304 k7305 x7586)))))
                               g7585))))
                          g7584))
                       xj7300
                       xk7301
                       (lambda (a b)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7583))))))
                  g7582)))
               (*
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7591
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7594
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7313 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7593)))))
                               g7592))))
                          g7591))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7590))))))
                  g7589)))
               (/
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7598
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7601
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7320 x7602 x7601)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7600)))))
                               g7599))))
                          g7598))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7597))))))
                  g7596)))
               (car
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7603
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7605
                            (lambda (g7323)
                              (letrec*
                               ((g7606
                                 (letrec*
                                  ((x7607
                                    (letrec*
                                     ((x7608
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7326 x7608)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7324 k7325 x7607)))))
                               g7606))))
                          g7605))
                       xj7321
                       xk7322
                       (lambda (p)
                         (letrec*
                          ((g7604
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7604))))))
                  g7603)))
               (cdr
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7609
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7330 k7331 f7332)
                         (letrec*
                          ((g7611
                            (lambda (g7329)
                              (letrec*
                               ((g7612
                                 (letrec*
                                  ((x7613
                                    (letrec*
                                     ((x7614
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7330 k7331 g7329))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7332 x7614)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7330 k7331 x7613)))))
                               g7612))))
                          g7611))
                       xj7327
                       xk7328
                       (lambda (p)
                         (letrec*
                          ((g7610
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7610))))))
                  g7609)))
               (cons
                (letrec*
                 ((xj7333
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7334
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7615
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7337 k7338 f7339)
                         (letrec*
                          ((g7617
                            (lambda (g7335 g7336)
                              (letrec*
                               ((g7618
                                 (letrec*
                                  ((x7619
                                    (letrec*
                                     ((x7621
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7337 k7338 g7335)))
                                      (x7620
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7337 k7338 g7336))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7339 x7621 x7620)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7337 k7338 x7619)))))
                               g7618))))
                          g7617))
                       xj7333
                       xk7334
                       (lambda (a b)
                         (letrec*
                          ((g7616
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7616))))))
                  g7615)))
               (vector-ref
                (letrec*
                 ((xj7340
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7341
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7622
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7624
                            (lambda (g7342)
                              (letrec*
                               ((g7625
                                 (letrec*
                                  ((x7626
                                    (letrec*
                                     ((x7627
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7345 x7627)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7343 k7344 x7626)))))
                               g7625))))
                          g7624))
                       xj7340
                       xk7341
                       (lambda (v i)
                         (letrec*
                          ((g7623
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7623))))))
                  g7622)))
               (vector-set!
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7628
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7630
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7631
                                 (letrec*
                                  ((x7632
                                    (letrec*
                                     ((x7634
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7350 k7351 g7348)))
                                      (x7633
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7352 x7634 x7633)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7350 k7351 x7632)))))
                               g7631))))
                          g7630))
                       xj7346
                       xk7347
                       (lambda (vec i v)
                         (letrec*
                          ((g7629
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7629))))))
                  g7628)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7635
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7635)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7638)))))
                      (begin
                        (write '(funapp 429 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7644
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7648))))
                          (x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7646)))))
                         (begin
                           (write '(funapp 445 26))
                           (display "\n")
                           (cons x7647 x7645)))))))
                   g7641)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (cadadr
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7654)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7653)))))
                      (begin
                        (write '(funapp 461 23))
                        (display "\n")
                        (car x7652)))))
                   g7651)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7658)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 472 23))
                        (display "\n")
                        (cdr x7656)))))
                   g7655)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7663))))
                    (g7661
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
                       ((g7664
                         (begin
                           (write '(funapp 486 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7665 res))
                       g7665))))
                   g7661)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (letrec*
                         ((x7668
                           (begin
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7668)))))
                      (begin
                        (write '(funapp 495 23))
                        (display "\n")
                        (car x7667)))))
                   g7666)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7672)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7671)))))
                      (begin
                        (write '(funapp 506 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7675))))
                    (g7674
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7676
                        #f
                        (letrec*
                         ((x-cnd7677
                           (letrec*
                            ((x7678
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7678 k)))))
                         (if x-cnd7677
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
                              (display "\n")
                              (assq k x7679)))))))))
                   g7674)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
                        (display "\n")
                        (= 0 x7681)))))
                   g7680)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7684))))
                    (g7683
                     (letrec*
                      ((x-cnd7685
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7685
                        ""
                        (letrec*
                         ((x7688
                           (letrec*
                            ((x7689
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7689))))
                          (x7686
                           (letrec*
                            ((x7687
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7687)))))
                         (begin
                           (write '(funapp 543 26))
                           (display "\n")
                           (string-append x7688 x7686)))))))
                   g7683)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7693))))
                    (g7691
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7694))))
                    (g7692
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7695
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7695))))
                   g7692)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (letrec*
                         ((x7698
                           (letrec*
                            ((x7699
                              (begin
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7699)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7698)))))
                      (begin
                        (write '(funapp 566 23))
                        (display "\n")
                        (cdr x7697)))))
                   g7696)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7703))))
                    (g7701
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7704))))
                    (g7702
                     (letrec*
                      ((x-cnd7705
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7705
                        x
                        (letrec*
                         ((x7707
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7706
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7707 x7706)))))))
                   g7702)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7708
                     (begin (write '(funapp 582 49)) (display "\n") '())))
                   g7708)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x-cnd7710
                        (letrec*
                         ((x7711 #\a))
                         (begin
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7711)))))
                      (if x-cnd7710
                        (letrec*
                         ((x7712 #\z))
                         (begin
                           (write '(funapp 591 48))
                           (display "\n")
                           (char-ci<=? c x7712)))
                        #f))))
                   g7709)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7715
                        (begin
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7715))))
                    (g7714
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7716
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7717 (if val7243 val7243 #f)))
                             g7717)))))
                       g7716))))
                   g7714)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7719
                           (begin
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
                           (display "\n")
                           (= x7719 9)))))
                      (letrec*
                       ((g7720
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7721
                                 (begin
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7721 10)))))
                            (letrec*
                             ((g7722
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7723
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
                                    (display "\n")
                                    (= x7723 32))))))
                             g7722)))))
                       g7720))))
                   g7718)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (begin
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7726)))))
                      (begin
                        (write '(funapp 644 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7729))))
                    (g7728
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7728)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7730 #f)) g7730)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7735))))
                    (g7734
                     (letrec*
                      ((x-cnd7736
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7736
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7734)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7738
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7739
                                 (begin
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7739
                                 (begin
                                   (write '(funapp 684 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7740
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7741
                                       (begin
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7741
                                       (letrec*
                                        ((x-cnd7742
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7742
                                          (begin
                                            (write '(funapp 696 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7743
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7744
                                             (begin
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7744
                                             (letrec*
                                              ((x-cnd7745
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7745
                                                (letrec*
                                                 ((x-cnd7746
                                                   (letrec*
                                                    ((x7748
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7747
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7748 x7747)))))
                                                 (if x-cnd7746
                                                   (letrec*
                                                    ((x7750
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7749
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
                                                      (display "\n")
                                                      (equal? x7750 x7749)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7751
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7752
                                                (begin
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7752
                                                (letrec*
                                                 ((x-cnd7753
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7753
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7754
                                                       (letrec*
                                                        ((x-cnd7755
                                                          (letrec*
                                                           ((x7756
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
                                                             (= x7756 n)))))
                                                        (if x-cnd7755
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7757
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
                                                                    ((g7758
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7759
                                                                           (letrec*
                                                                            ((x7761
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
                                                                             (x7760
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
                                                                               x7761
                                                                               x7760)))))
                                                                         (if x-cnd7759
                                                                           (letrec*
                                                                            ((x7762
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
                                                                               x7762)))
                                                                           #f)))))
                                                                    g7758))))
                                                                g7757))))
                                                           (letrec*
                                                            ((g7763
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7763))
                                                          #f))))
                                                     g7754))
                                                   #f))
                                                #f)))))
                                         g7751)))))
                                   g7743)))))
                             g7740)))))
                       g7738))))
                   g7737)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7767)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 804 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (caaddr
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7771)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7772
                     (begin
                       (write '(funapp 817 53))
                       (display "\n")
                       (eq? x y))))
                   g7772)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7776
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7777 (if val7252 val7252 #f)))
                             g7777)))))
                       g7776))))
                   g7774)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7782))))
                    (g7780
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
                       ((g7783
                         (begin
                           (write '(funapp 848 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7784 res))
                       g7784))))
                   g7780)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7785
                     (begin
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7785)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7791
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7791))))
                   g7788)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (begin
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7798)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7797)))))
                      (begin
                        (write '(funapp 881 23))
                        (display "\n")
                        (cdr x7796)))))
                   g7795)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (begin
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7801)))))
                      (begin
                        (write '(funapp 890 23))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (letrec*
                         ((x7804
                           (begin
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 898 23))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
                        (display "\n")
                        (not x7810)))))
                   g7807)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7812
                        (letrec*
                         ((x7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7814)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7813)))))
                      (begin
                        (write '(funapp 917 23))
                        (display "\n")
                        (car x7812)))))
                   g7811)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7817))))
                    (g7816
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7816)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7818
                     (begin
                       (write '(funapp 925 53))
                       (display "\n")
                       (memq e l))))
                   g7818)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (letrec*
                         ((x7821
                           (begin
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7821)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7820)))))
                   g7819)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7822
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7822)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7826
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7829
                           (letrec*
                            ((x7830
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7830))))
                          (x7827
                           (letrec*
                            ((x7828
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7828)))))
                         (begin
                           (write '(funapp 947 26))
                           (display "\n")
                           (append x7829 x7827)))))))
                   g7824)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (letrec*
                         ((x7833
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7834)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7833)))))
                      (begin
                        (write '(funapp 958 23))
                        (display "\n")
                        (car x7832)))))
                   g7831)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7838)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7837)))))
                      (begin
                        (write '(funapp 969 23))
                        (display "\n")
                        (cdr x7836)))))
                   g7835)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7841))))
                    (g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
                        (display "\n")
                        (= 1 x7842)))))
                   g7840)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7846)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7845)))))
                      (begin
                        (write '(funapp 986 23))
                        (display "\n")
                        (car x7844)))))
                   g7843)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7852
                        (letrec*
                         ((g7853
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7853)
                        (letrec*
                         ((x-cnd7854
                           (letrec*
                            ((x7855
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7855)))))
                         (if x-cnd7854
                           (letrec*
                            ((g7856
                              (letrec*
                               ((x7857
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7857)))))
                            g7856)
                           (letrec*
                            ((x-cnd7858
                              (letrec*
                               ((x7859
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7859)))))
                            (if x-cnd7858
                              (letrec*
                               ((g7860
                                 (letrec*
                                  ((x7862
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7861
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7862 x7861)))))
                               g7860)
                              (letrec*
                               ((x-cnd7863
                                 (letrec*
                                  ((x7864
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7864)))))
                               (if x-cnd7863
                                 (letrec*
                                  ((g7865
                                    (letrec*
                                     ((x7868
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7867
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7866
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7868 x7867 x7866)))))
                                  g7865)
                                 (letrec*
                                  ((x-cnd7869
                                    (letrec*
                                     ((x7870
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7870)))))
                                  (if x-cnd7869
                                    (letrec*
                                     ((g7871
                                       (letrec*
                                        ((x7875
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7874
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7873
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7872
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
                                          (display "\n")
                                          (proc x7875 x7874 x7873 x7872)))))
                                     g7871)
                                    (letrec*
                                     ((x-cnd7876
                                       (letrec*
                                        ((x7877
                                          (letrec*
                                           ((x7878
                                             (begin
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7878)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7877)))))
                                     (if x-cnd7876
                                       (letrec*
                                        ((g7879
                                          (letrec*
                                           ((x7885
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7884
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7883
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7882
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7880
                                             (letrec*
                                              ((x7881
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7881)))))
                                           (begin
                                             (write '(funapp 1066 44))
                                             (display "\n")
                                             (proc
                                              x7885
                                              x7884
                                              x7883
                                              x7882
                                              x7880)))))
                                        g7879)
                                       (letrec*
                                        ((x-cnd7886
                                          (letrec*
                                           ((x7887
                                             (letrec*
                                              ((x7888
                                                (begin
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7888)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7887)))))
                                        (if x-cnd7886
                                          (letrec*
                                           ((g7889
                                             (letrec*
                                              ((x7897
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7896
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7895
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7894
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7892
                                                (letrec*
                                                 ((x7893
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7893))))
                                               (x7890
                                                (letrec*
                                                 ((x7891
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7891)))))
                                              (begin
                                                (write '(funapp 1097 47))
                                                (display "\n")
                                                (proc
                                                 x7897
                                                 x7896
                                                 x7895
                                                 x7894
                                                 x7892
                                                 x7890)))))
                                           g7889)
                                          (letrec*
                                           ((x-cnd7898
                                             (letrec*
                                              ((x7899
                                                (letrec*
                                                 ((x7900
                                                   (begin
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7900)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7899)))))
                                           (if x-cnd7898
                                             (letrec*
                                              ((g7901
                                                (letrec*
                                                 ((x7911
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7910
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7909
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7908
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7906
                                                   (letrec*
                                                    ((x7907
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7907))))
                                                  (x7904
                                                   (letrec*
                                                    ((x7905
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7905))))
                                                  (x7902
                                                   (letrec*
                                                    ((x7903
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7903)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
                                                   (display "\n")
                                                   (proc
                                                    x7911
                                                    x7910
                                                    x7909
                                                    x7908
                                                    x7906
                                                    x7904
                                                    x7902)))))
                                              g7901)
                                             (letrec*
                                              ((g7912
                                                (begin
                                                  (write '(funapp 1144 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7912)))))))))))))))))))
                   g7849)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((x-cnd7916
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7916
                        #f
                        (letrec*
                         ((x-cnd7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7918 e)))))
                         (if x-cnd7917
                           l
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
                              (display "\n")
                              (member e x7919)))))))))
                   g7914)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7923)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7922)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (cdr x7921)))))
                   g7920)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7927)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7926)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7928
                     (begin
                       (write '(funapp 1185 53))
                       (display "\n")
                       (random 42))))
                   g7928)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7930)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7933
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7933))))
                   g7932)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
                        (display "\n")
                        (car x7935)))))
                   g7934)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7937
                           (begin
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7938)))
                           #f))))
                      (letrec*
                       ((g7939
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
                             (display "\n")
                             (null? l)))))
                       g7939))))
                   g7936)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7943)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7942)))))
                      (begin
                        (write '(funapp 1232 23))
                        (display "\n")
                        (cdr x7941)))))
                   g7940)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x-cnd7945
                        (letrec*
                         ((x7946 #\0))
                         (begin
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7946 c)))))
                      (if x-cnd7945
                        (letrec*
                         ((x7947 #\9))
                         (begin
                           (write '(funapp 1241 48))
                           (display "\n")
                           (char<=? c x7947)))
                        #f))))
                   g7944)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        #f
                        (letrec*
                         ((x-cnd7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7953 k)))))
                         (if x-cnd7952
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7954)))))))))
                   g7949)))
               (not (lambda (x) (letrec* ((g7955 (if x #f #t))) g7955)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7956
                     (begin
                       (write '(funapp 1263 50))
                       (display "\n")
                       (append l1 l2))))
                   g7956)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7959))))
                    (g7958
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7960
                        #f
                        (letrec*
                         ((x-cnd7961
                           (letrec*
                            ((x7962
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7962 e)))))
                         (if x-cnd7961
                           l
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
                              (display "\n")
                              (memq e x7963)))))))))
                   g7958)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7967)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7966)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7970))))
                    (g7969
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7971
                             (letrec*
                              ((x-cnd7972
                                (begin
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7972
                                0
                                (letrec*
                                 ((x7973
                                   (letrec*
                                    ((x7974
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7974)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7973)))))))
                           g7971))))
                      (letrec*
                       ((g7975
                         (begin
                           (write '(funapp 1310 40))
                           (display "\n")
                           (rec l))))
                       g7975))))
                   g7969)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7981
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7981))))
                   g7978)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
                        (display "\n")
                        (not x7983)))))
                   g7982)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7986)))))
                      (begin
                        (write '(funapp 1335 23))
                        (display "\n")
                        (cdr x7985)))))
                   g7984)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7989))))
                    (g7988
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7990
                        #f
                        (letrec*
                         ((x-cnd7991
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7992 k)))))
                         (if x-cnd7991
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7993
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
                              (display "\n")
                              (assoc k x7993)))))))))
                   g7988)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
                        (display "\n")
                        (car x7995)))))
                   g7994)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7999))))
                    (g7997
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8000))))
                    (g7998
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
                        (display "\n")
                        (not x8001)))))
                   g7998)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8003
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8003))))
                   g8002)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8007
                        (begin
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x8007))))
                    (g8005
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x8008))))
                    (g8006
                     (letrec*
                      ((x-cnd8009
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8009
                        #t
                        (letrec*
                         ((x-cnd8010
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8010
                           (letrec*
                            ((g8011
                              (letrec*
                               ((x8013
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x8013))))
                             (g8012
                              (letrec*
                               ((x8014
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x8014)))))
                            g8012)
                           (begin
                             (write '(funapp 1393 27))
                             (display "\n")
                             '())))))))
                   g8006)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x8017
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x8017))))
                    (g8016
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8018
                        (begin
                          (write '(funapp 1400 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8016)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x8022))))
                    (g8020
                     (letrec*
                      ((x8023
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8023))))
                    (g8021
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8024
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8024))))
                   g8021)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x8026
                        (letrec*
                         ((x8027
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x8028)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x8027)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (car x8026)))))
                   g8025)))
               (newline (lambda () (letrec* ((g8029 #f)) g8029)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8032
                        (letrec*
                         ((x8033
                           (begin
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x8033))))
                       (x8031
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (/ x8032 x8031)))))
                   g8030)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x8036
                        (begin
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x8036))))
                    (g8035
                     (letrec*
                      ((x8037
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
                        (display "\n")
                        (not x8037)))))
                   g8035)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8042
                        (begin
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x8042))))
                    (g8039
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x8043))))
                    (g8040
                     (letrec*
                      ((x8044
                        (letrec*
                         ((x8045
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x8045)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x8044))))
                    (g8041
                     (letrec*
                      ((x-cnd8046
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8046
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8048
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x8047
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
                           (display "\n")
                           (list-ref x8048 x8047)))))))
                   g8041)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x-cnd8050
                        (begin
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8050
                        a
                        (letrec*
                         ((x8051
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x8051)))))))
                   g8049)))
               (image
                (lambda ()
                  (letrec*
                   ((g8052
                     (begin
                       (write '(funapp 1470 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 1470 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 1470 63))
                          (display "\n")
                          '())))))
                   g8052)))
               (image?
                (lambda (image7503)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1475 39))
                          (display "\n")
                          (car image7503))))
                      (begin
                        (write '(funapp 1475 57))
                        (display "\n")
                        (eq?
                         x8054
                         (begin
                           (write '(funapp 1475 67))
                           (display "\n")
                           'image))))))
                   g8053)))
               (image/c
                (lambda (j7354 k7355 v7353)
                  (letrec*
                   ((g8055
                     (begin
                       (write '(funapp 1479 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 1479 47))
                          (display "\n")
                          '())))))
                   g8055)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8056
                     (begin (write '(funapp 1480 57)) (display "\n") (image))))
                   g8056)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8057
                     (begin (write '(funapp 1481 60)) (display "\n") (image))))
                   g8057)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8058
                     (begin (write '(funapp 1483 54)) (display "\n") (image))))
                   g8058)))
               (posn
                (lambda (x7505 y7506)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8060
                        (letrec*
                         ((x8061
                           (begin
                             (write '(funapp 1491 34))
                             (display "\n")
                             (cons
                              y7506
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1492 26))
                           (display "\n")
                           (cons x7505 x8061)))))
                      (begin
                        (write '(funapp 1493 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1493 28)) (display "\n") 'posn)
                         x8060)))))
                   g8059)))
               (posn?
                (lambda (posn7504)
                  (letrec*
                   ((g8062
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 1499 39))
                          (display "\n")
                          (car posn7504))))
                      (begin
                        (write '(funapp 1499 56))
                        (display "\n")
                        (eq?
                         x8063
                         (begin
                           (write '(funapp 1499 66))
                           (display "\n")
                           'posn))))))
                   g8062)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8064
                     (letrec*
                      ((x8065
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (car x8065)))))
                   g8064)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x8067
                        (letrec*
                         ((x8068
                           (begin
                             (write '(funapp 1511 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1511 61))
                           (display "\n")
                           (cdr x8068)))))
                      (begin
                        (write '(funapp 1512 23))
                        (display "\n")
                        (car x8067)))))
                   g8066)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((x-cnd8070
                        (letrec*
                         ((x8072
                           (begin
                             (write '(funapp 1521 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8071
                           (begin
                             (write '(funapp 1521 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1522 26))
                           (display "\n")
                           (= x8072 x8071)))))
                      (if x-cnd8070
                        (letrec*
                         ((x8074
                           (begin
                             (write '(funapp 1525 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8073
                           (begin
                             (write '(funapp 1525 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1526 26))
                           (display "\n")
                           (= x8074 x8073)))
                        #f))))
                   g8069)))
               (snake
                (lambda (dir7510 segs7511)
                  (letrec*
                   ((g8075
                     (letrec*
                      ((x8076
                        (letrec*
                         ((x8077
                           (begin
                             (write '(funapp 1536 34))
                             (display "\n")
                             (cons
                              segs7511
                              (begin
                                (write '(funapp 1536 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1537 26))
                           (display "\n")
                           (cons dir7510 x8077)))))
                      (begin
                        (write '(funapp 1538 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1538 28))
                           (display "\n")
                           'snake)
                         x8076)))))
                   g8075)))
               (snake?
                (lambda (snake7509)
                  (letrec*
                   ((g8078
                     (letrec*
                      ((x8079
                        (begin
                          (write '(funapp 1544 39))
                          (display "\n")
                          (car snake7509))))
                      (begin
                        (write '(funapp 1544 57))
                        (display "\n")
                        (eq?
                         x8079
                         (begin
                           (write '(funapp 1544 67))
                           (display "\n")
                           'snake))))))
                   g8078)))
               (snake-dir
                (lambda (snake)
                  (letrec*
                   ((g8080
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (cdr snake))))
                      (begin
                        (write '(funapp 1549 59))
                        (display "\n")
                        (car x8081)))))
                   g8080)))
               (snake-segs
                (lambda (snake)
                  (letrec*
                   ((g8082
                     (letrec*
                      ((x8083
                        (letrec*
                         ((x8084
                           (begin
                             (write '(funapp 1556 48))
                             (display "\n")
                             (cdr snake))))
                         (begin
                           (write '(funapp 1556 62))
                           (display "\n")
                           (cdr x8084)))))
                      (begin
                        (write '(funapp 1557 23))
                        (display "\n")
                        (car x8083)))))
                   g8082)))
               (world
                (lambda (snake7515 food7516)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8086
                        (letrec*
                         ((x8087
                           (begin
                             (write '(funapp 1566 34))
                             (display "\n")
                             (cons
                              food7516
                              (begin
                                (write '(funapp 1566 48))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1567 26))
                           (display "\n")
                           (cons snake7515 x8087)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1568 28))
                           (display "\n")
                           'world)
                         x8086)))))
                   g8085)))
               (world?
                (lambda (world7514)
                  (letrec*
                   ((g8088
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1574 39))
                          (display "\n")
                          (car world7514))))
                      (begin
                        (write '(funapp 1574 57))
                        (display "\n")
                        (eq?
                         x8089
                         (begin
                           (write '(funapp 1574 67))
                           (display "\n")
                           'world))))))
                   g8088)))
               (world-snake
                (lambda (world)
                  (letrec*
                   ((g8090
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1579 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1579 59))
                        (display "\n")
                        (car x8091)))))
                   g8090)))
               (world-food
                (lambda (world)
                  (letrec*
                   ((g8092
                     (letrec*
                      ((x8093
                        (letrec*
                         ((x8094
                           (begin
                             (write '(funapp 1586 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1586 62))
                           (display "\n")
                           (cdr x8094)))))
                      (begin
                        (write '(funapp 1587 23))
                        (display "\n")
                        (car x8093)))))
                   g8092)))
               (DIR/C
                (lambda (g7360 g7361 g7362)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x-cnd8096
                        (begin
                          (write '(funapp 1595 25))
                          (display "\n")
                          ((lambda (v7359)
                             (letrec*
                              ((g8097
                                (letrec*
                                 ((x-cnd8098
                                   (begin
                                     (write '(funapp 1599 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1599 48))
                                        (display "\n")
                                        'up)
                                      v7359))))
                                 (if x-cnd8098
                                   #t
                                   (letrec*
                                    ((x-cnd8099
                                      (begin
                                        (write '(funapp 1603 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1603 51))
                                           (display "\n")
                                           'down)
                                         v7359))))
                                    (if x-cnd8099
                                      #t
                                      (letrec*
                                       ((x-cnd8100
                                         (begin
                                           (write '(funapp 1607 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1607 54))
                                              (display "\n")
                                              'left)
                                            v7359))))
                                       (if x-cnd8100
                                         #t
                                         (begin
                                           (write '(funapp 1610 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1610 44))
                                              (display "\n")
                                              'right)
                                            v7359))))))))))
                              g8097))
                           g7362))))
                      (if x-cnd8096
                        g7362
                        (begin
                          (write '(blame g7360 1615 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7360)))))))
                   g8095)))
               (POSN/C
                (lambda (j7364 k7365 v7363)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((checked7366
                        (letrec*
                         ((x8102
                           (letrec*
                            ((x8103
                              (begin
                                (write '(funapp 1633 51))
                                (display "\n")
                                (cdr v7363))))
                            (begin
                              (write '(funapp 1633 65))
                              (display "\n")
                              (car x8103)))))
                         (begin
                           (write '(funapp 1634 26))
                           (display "\n")
                           (real?/c j7364 k7365 x8102)))))
                      (letrec*
                       ((g8104
                         (letrec*
                          ((checked7367
                            (letrec*
                             ((x8105
                               (letrec*
                                ((x8106
                                  (letrec*
                                   ((x8107
                                     (begin
                                       (write '(funapp 1643 52))
                                       (display "\n")
                                       (cdr v7363))))
                                   (begin
                                     (write '(funapp 1643 66))
                                     (display "\n")
                                     (cdr x8107)))))
                                (begin
                                  (write '(funapp 1644 33))
                                  (display "\n")
                                  (car x8106)))))
                             (begin
                               (write '(funapp 1645 30))
                               (display "\n")
                               (real?/c j7364 k7365 x8105)))))
                          (letrec*
                           ((g8108
                             (letrec*
                              ((x8109
                                (letrec*
                                 ((x8110
                                   (begin
                                     (write '(funapp 1651 42))
                                     (display "\n")
                                     (cons
                                      checked7367
                                      (begin
                                        (write '(funapp 1651 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1652 34))
                                   (display "\n")
                                   (cons checked7366 x8110)))))
                              (begin
                                (write '(funapp 1653 31))
                                (display "\n")
                                (cons posn x8109)))))
                           g8108))))
                       g8104))))
                   g8101)))
               (SNAKE/C
                (lambda (j7370 k7371 v7369)
                  (letrec*
                   ((g8111
                     (letrec*
                      ((checked7372
                        (letrec*
                         ((x8112
                           (letrec*
                            ((x8113
                              (begin
                                (write '(funapp 1664 51))
                                (display "\n")
                                (cdr v7369))))
                            (begin
                              (write '(funapp 1664 65))
                              (display "\n")
                              (car x8113)))))
                         (begin
                           (write '(funapp 1665 26))
                           (display "\n")
                           (DIR/C j7370 k7371 x8112)))))
                      (letrec*
                       ((g8114
                         (letrec*
                          ((checked7373
                            (letrec*
                             ((x8118
                               (letrec*
                                ((x8119
                                  (begin
                                    (write '(funapp 1673 41))
                                    (display "\n")
                                    (listof POSN/C))))
                                (begin
                                  (write '(funapp 1674 33))
                                  (display "\n")
                                  (and/c cons?/c x8119))))
                              (x8115
                               (letrec*
                                ((x8116
                                  (letrec*
                                   ((x8117
                                     (begin
                                       (write '(funapp 1678 52))
                                       (display "\n")
                                       (cdr v7369))))
                                   (begin
                                     (write '(funapp 1678 66))
                                     (display "\n")
                                     (cdr x8117)))))
                                (begin
                                  (write '(funapp 1679 33))
                                  (display "\n")
                                  (car x8116)))))
                             (begin
                               (write '(funapp 1680 30))
                               (display "\n")
                               (x8118 j7370 k7371 x8115)))))
                          (letrec*
                           ((g8120
                             (letrec*
                              ((x8121
                                (letrec*
                                 ((x8122
                                   (begin
                                     (write '(funapp 1686 42))
                                     (display "\n")
                                     (cons
                                      checked7373
                                      (begin
                                        (write '(funapp 1686 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1687 34))
                                   (display "\n")
                                   (cons checked7372 x8122)))))
                              (begin
                                (write '(funapp 1688 31))
                                (display "\n")
                                (cons snake x8121)))))
                           g8120))))
                       g8114))))
                   g8111)))
               (WORLD/C
                (lambda (j7376 k7377 v7375)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((checked7378
                        (letrec*
                         ((x8124
                           (letrec*
                            ((x8125
                              (begin
                                (write '(funapp 1699 51))
                                (display "\n")
                                (cdr v7375))))
                            (begin
                              (write '(funapp 1699 65))
                              (display "\n")
                              (car x8125)))))
                         (begin
                           (write '(funapp 1700 26))
                           (display "\n")
                           (SNAKE/C j7376 k7377 x8124)))))
                      (letrec*
                       ((g8126
                         (letrec*
                          ((checked7379
                            (letrec*
                             ((x8127
                               (letrec*
                                ((x8128
                                  (letrec*
                                   ((x8129
                                     (begin
                                       (write '(funapp 1709 52))
                                       (display "\n")
                                       (cdr v7375))))
                                   (begin
                                     (write '(funapp 1709 66))
                                     (display "\n")
                                     (cdr x8129)))))
                                (begin
                                  (write '(funapp 1710 33))
                                  (display "\n")
                                  (car x8128)))))
                             (begin
                               (write '(funapp 1711 30))
                               (display "\n")
                               (POSN/C j7376 k7377 x8127)))))
                          (letrec*
                           ((g8130
                             (letrec*
                              ((x8131
                                (letrec*
                                 ((x8132
                                   (begin
                                     (write '(funapp 1717 42))
                                     (display "\n")
                                     (cons
                                      checked7379
                                      (begin
                                        (write '(funapp 1717 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1718 34))
                                   (display "\n")
                                   (cons checked7378 x8132)))))
                              (begin
                                (write '(funapp 1719 31))
                                (display "\n")
                                (cons world x8131)))))
                           g8130))))
                       g8126))))
                   g8123)))
               (GRID-SIZE 30)
               (BOARD-HEIGHT 20)
               (BOARD-WIDTH 30)
               (BOARD-HEIGHT-PIXELS
                (begin
                  (write '(funapp 1726 37))
                  (display "\n")
                  (* GRID-SIZE BOARD-HEIGHT)))
               (BOARD-WIDTH-PIXELS
                (begin
                  (write '(funapp 1727 36))
                  (display "\n")
                  (* GRID-SIZE BOARD-WIDTH)))
               (BACKGROUND
                (begin
                  (write '(funapp 1729 17))
                  (display "\n")
                  (empty-scene BOARD-WIDTH-PIXELS BOARD-HEIGHT-PIXELS)))
               (SEGMENT-RADIUS
                (begin
                  (write '(funapp 1730 32))
                  (display "\n")
                  (/ GRID-SIZE 2)))
               (SEGMENT-IMAGE
                (begin
                  (write '(funapp 1731 31))
                  (display "\n")
                  (circle SEGMENT-RADIUS "solid" "red")))
               (FOOD-RADIUS SEGMENT-RADIUS)
               (FOOD-IMAGE
                (begin
                  (write '(funapp 1733 28))
                  (display "\n")
                  (circle FOOD-RADIUS "solid" "green")))
               (WORLD
                (letrec*
                 ((x8134
                   (letrec*
                    ((x8135
                      (letrec*
                       ((x8136
                         (begin
                           (write '(funapp 1738 46))
                           (display "\n")
                           (posn 5 3))))
                       (begin
                         (write '(funapp 1738 59))
                         (display "\n")
                         (cons x8136 empty)))))
                    (begin
                      (write '(funapp 1739 21))
                      (display "\n")
                      (snake
                       (begin (write '(funapp 1739 27)) (display "\n") 'right)
                       x8135))))
                  (x8133
                   (begin
                     (write '(funapp 1740 26))
                     (display "\n")
                     (posn 8 12))))
                 (begin
                   (write '(funapp 1741 18))
                   (display "\n")
                   (world x8134 x8133))))
               (snake-wall-collide?
                (lambda (snk)
                  (letrec*
                   ((g8137
                     (letrec*
                      ((x8138
                        (letrec*
                         ((x8139
                           (begin
                             (write '(funapp 1748 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1748 61))
                           (display "\n")
                           (car x8139)))))
                      (begin
                        (write '(funapp 1749 23))
                        (display "\n")
                        (head-collide? x8138)))))
                   g8137)))
               (head-collide?
                (lambda (p)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x8141
                           (begin
                             (write '(funapp 1756 50))
                             (display "\n")
                             (posn-x p))))
                         (begin
                           (write '(funapp 1756 63))
                           (display "\n")
                           (<= x8141 0)))))
                      (letrec*
                       ((g8142
                         (if val7259
                           val7259
                           (letrec*
                            ((val7260
                              (letrec*
                               ((x8143
                                 (begin
                                   (write '(funapp 1764 40))
                                   (display "\n")
                                   (posn-x p))))
                               (begin
                                 (write '(funapp 1765 32))
                                 (display "\n")
                                 (>= x8143 BOARD-WIDTH)))))
                            (letrec*
                             ((g8144
                               (if val7260
                                 val7260
                                 (letrec*
                                  ((val7261
                                    (letrec*
                                     ((x8145
                                       (begin
                                         (write '(funapp 1773 46))
                                         (display "\n")
                                         (posn-y p))))
                                     (begin
                                       (write '(funapp 1774 38))
                                       (display "\n")
                                       (<= x8145 0)))))
                                  (letrec*
                                   ((g8146
                                     (if val7261
                                       val7261
                                       (letrec*
                                        ((x8147
                                          (begin
                                            (write '(funapp 1780 49))
                                            (display "\n")
                                            (posn-y p))))
                                        (begin
                                          (write '(funapp 1781 41))
                                          (display "\n")
                                          (>= x8147 BOARD-HEIGHT))))))
                                   g8146)))))
                             g8144)))))
                       g8142))))
                   g8140)))
               (snake-self-collide?
                (lambda (snk)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x8151
                        (letrec*
                         ((x8152
                           (begin
                             (write '(funapp 1791 48))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1791 67))
                           (display "\n")
                           (car x8152))))
                       (x8149
                        (letrec*
                         ((x8150
                           (begin
                             (write '(funapp 1793 42))
                             (display "\n")
                             (snake-segs snk))))
                         (begin
                           (write '(funapp 1793 61))
                           (display "\n")
                           (cdr x8150)))))
                      (begin
                        (write '(funapp 1794 23))
                        (display "\n")
                        (segs-self-collide? x8151 x8149)))))
                   g8148)))
               (segs-self-collide?
                (lambda (h segs)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x-cnd8154
                        (begin
                          (write '(funapp 1801 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8154
                        (letrec* ((g8155 #f)) g8155)
                        (letrec*
                         ((g8156
                           (letrec*
                            ((x8159
                              (letrec*
                               ((x8160
                                 (begin
                                   (write '(funapp 1808 48))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 1808 61))
                                 (display "\n")
                                 (posn=? x8160 h))))
                             (x8157
                              (letrec*
                               ((x8158
                                 (begin
                                   (write '(funapp 1811 40))
                                   (display "\n")
                                   (cdr segs))))
                               (begin
                                 (write '(funapp 1812 32))
                                 (display "\n")
                                 (segs-self-collide? h x8158)))))
                            (begin
                              (write '(funapp 1813 29))
                              (display "\n")
                              (or x8159 x8157)))))
                         g8156)))))
                   g8153)))
               (cut-tail
                (lambda (segs)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((r
                        (begin
                          (write '(funapp 1821 27))
                          (display "\n")
                          (cdr segs))))
                      (letrec*
                       ((g8162
                         (letrec*
                          ((x-cnd8163
                            (begin
                              (write '(funapp 1825 39))
                              (display "\n")
                              (empty? r))))
                          (if x-cnd8163
                            (letrec* ((g8164 empty)) g8164)
                            (letrec*
                             ((g8165
                               (letrec*
                                ((x8167
                                  (begin
                                    (write '(funapp 1831 41))
                                    (display "\n")
                                    (car segs)))
                                 (x8166
                                  (begin
                                    (write '(funapp 1831 60))
                                    (display "\n")
                                    (cut-tail r))))
                                (begin
                                  (write '(funapp 1832 33))
                                  (display "\n")
                                  (cons x8167 x8166)))))
                             g8165)))))
                       g8162))))
                   g8161)))
               (next-head
                (lambda (seg dir)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x-cnd8169
                        (begin
                          (write '(funapp 1841 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1841 42))
                             (display "\n")
                             'right)
                           dir))))
                      (if x-cnd8169
                        (letrec*
                         ((g8170
                           (letrec*
                            ((x8172
                              (letrec*
                               ((x8173
                                 (begin
                                   (write '(funapp 1847 48))
                                   (display "\n")
                                   (posn-x seg))))
                               (begin
                                 (write '(funapp 1847 63))
                                 (display "\n")
                                 (add1 x8173))))
                             (x8171
                              (begin
                                (write '(funapp 1848 37))
                                (display "\n")
                                (posn-y seg))))
                            (begin
                              (write '(funapp 1849 29))
                              (display "\n")
                              (posn x8172 x8171)))))
                         g8170)
                        (letrec*
                         ((x-cnd8174
                           (begin
                             (write '(funapp 1852 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1852 45))
                                (display "\n")
                                'left)
                              dir))))
                         (if x-cnd8174
                           (letrec*
                            ((g8175
                              (letrec*
                               ((x8177
                                 (letrec*
                                  ((x8178
                                    (begin
                                      (write '(funapp 1858 51))
                                      (display "\n")
                                      (posn-x seg))))
                                  (begin
                                    (write '(funapp 1858 66))
                                    (display "\n")
                                    (sub1 x8178))))
                                (x8176
                                 (begin
                                   (write '(funapp 1859 40))
                                   (display "\n")
                                   (posn-y seg))))
                               (begin
                                 (write '(funapp 1860 32))
                                 (display "\n")
                                 (posn x8177 x8176)))))
                            g8175)
                           (letrec*
                            ((x-cnd8179
                              (begin
                                (write '(funapp 1863 41))
                                (display "\n")
                                (equal?
                                 (begin
                                   (write '(funapp 1863 48))
                                   (display "\n")
                                   'down)
                                 dir))))
                            (if x-cnd8179
                              (letrec*
                               ((g8180
                                 (letrec*
                                  ((x8183
                                    (begin
                                      (write '(funapp 1868 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8181
                                    (letrec*
                                     ((x8182
                                       (begin
                                         (write '(funapp 1871 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1872 38))
                                       (display "\n")
                                       (sub1 x8182)))))
                                  (begin
                                    (write '(funapp 1873 35))
                                    (display "\n")
                                    (posn x8183 x8181)))))
                               g8180)
                              (letrec*
                               ((g8184
                                 (letrec*
                                  ((x8187
                                    (begin
                                      (write '(funapp 1878 43))
                                      (display "\n")
                                      (posn-x seg)))
                                   (x8185
                                    (letrec*
                                     ((x8186
                                       (begin
                                         (write '(funapp 1881 46))
                                         (display "\n")
                                         (posn-y seg))))
                                     (begin
                                       (write '(funapp 1882 38))
                                       (display "\n")
                                       (add1 x8186)))))
                                  (begin
                                    (write '(funapp 1883 35))
                                    (display "\n")
                                    (posn x8187 x8185)))))
                               g8184)))))))))
                   g8168)))
               (snake-slither
                (lambda (snk)
                  (letrec*
                   ((g8188
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1891 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8189
                         (letrec*
                          ((x8190
                            (letrec*
                             ((x8193
                               (letrec*
                                ((x8194
                                  (letrec*
                                   ((x8195
                                     (begin
                                       (write '(funapp 1901 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1902 36))
                                     (display "\n")
                                     (car x8195)))))
                                (begin
                                  (write '(funapp 1903 33))
                                  (display "\n")
                                  (next-head x8194 d))))
                              (x8191
                               (letrec*
                                ((x8192
                                  (begin
                                    (write '(funapp 1906 41))
                                    (display "\n")
                                    (snake-segs snk))))
                                (begin
                                  (write '(funapp 1907 33))
                                  (display "\n")
                                  (cut-tail x8192)))))
                             (begin
                               (write '(funapp 1908 30))
                               (display "\n")
                               (cons x8193 x8191)))))
                          (begin
                            (write '(funapp 1909 27))
                            (display "\n")
                            (snake d x8190)))))
                       g8189))))
                   g8188)))
               (snake-grow
                (lambda (snk)
                  (letrec*
                   ((g8196
                     (letrec*
                      ((d
                        (begin
                          (write '(funapp 1917 27))
                          (display "\n")
                          (snake-dir snk))))
                      (letrec*
                       ((g8197
                         (letrec*
                          ((x8198
                            (letrec*
                             ((x8200
                               (letrec*
                                ((x8201
                                  (letrec*
                                   ((x8202
                                     (begin
                                       (write '(funapp 1927 44))
                                       (display "\n")
                                       (snake-segs snk))))
                                   (begin
                                     (write '(funapp 1928 36))
                                     (display "\n")
                                     (car x8202)))))
                                (begin
                                  (write '(funapp 1929 33))
                                  (display "\n")
                                  (next-head x8201 d))))
                              (x8199
                               (begin
                                 (write '(funapp 1930 38))
                                 (display "\n")
                                 (snake-segs snk))))
                             (begin
                               (write '(funapp 1931 30))
                               (display "\n")
                               (cons x8200 x8199)))))
                          (begin
                            (write '(funapp 1932 27))
                            (display "\n")
                            (snake d x8198)))))
                       g8197))))
                   g8196)))
               (world->world
                (lambda (w)
                  (letrec*
                   ((g8203
                     (letrec*
                      ((x-cnd8204
                        (begin
                          (write '(funapp 1940 35))
                          (display "\n")
                          (eating? w))))
                      (if x-cnd8204
                        (letrec*
                         ((g8205
                           (begin
                             (write '(funapp 1942 42))
                             (display "\n")
                             (snake-eat w))))
                         g8205)
                        (letrec*
                         ((g8206
                           (letrec*
                            ((x8208
                              (letrec*
                               ((x8209
                                 (begin
                                   (write '(funapp 1948 40))
                                   (display "\n")
                                   (world-snake w))))
                               (begin
                                 (write '(funapp 1949 32))
                                 (display "\n")
                                 (snake-slither x8209))))
                             (x8207
                              (begin
                                (write '(funapp 1950 37))
                                (display "\n")
                                (world-food w))))
                            (begin
                              (write '(funapp 1951 29))
                              (display "\n")
                              (world x8208 x8207)))))
                         g8206)))))
                   g8203)))
               (eating?
                (lambda (w)
                  (letrec*
                   ((g8210
                     (letrec*
                      ((x8214
                        (begin
                          (write '(funapp 1959 31))
                          (display "\n")
                          (world-food w)))
                       (x8211
                        (letrec*
                         ((x8212
                           (letrec*
                            ((x8213
                              (begin
                                (write '(funapp 1964 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 1965 29))
                              (display "\n")
                              (snake-segs x8213)))))
                         (begin
                           (write '(funapp 1966 26))
                           (display "\n")
                           (car x8212)))))
                      (begin
                        (write '(funapp 1967 23))
                        (display "\n")
                        (posn=? x8214 x8211)))))
                   g8210)))
               (snake-change-direction
                (lambda (snk dir)
                  (letrec*
                   ((g8215
                     (letrec*
                      ((x8216
                        (begin
                          (write '(funapp 1973 39))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 1973 58))
                        (display "\n")
                        (snake dir x8216)))))
                   g8215)))
               (world-change-dir
                (lambda (w dir)
                  (letrec*
                   ((g8217
                     (letrec*
                      ((x8219
                        (letrec*
                         ((x8220
                           (begin
                             (write '(funapp 1982 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1983 26))
                           (display "\n")
                           (snake-change-direction x8220 dir))))
                       (x8218
                        (begin
                          (write '(funapp 1984 31))
                          (display "\n")
                          (world-food w))))
                      (begin
                        (write '(funapp 1985 23))
                        (display "\n")
                        (world x8219 x8218)))))
                   g8217)))
               (snake-eat
                (lambda (w)
                  (letrec*
                   ((g8221
                     (letrec*
                      ((x8225
                        (letrec*
                         ((x8226
                           (begin
                             (write '(funapp 1993 42))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 1993 60))
                           (display "\n")
                           (snake-grow x8226))))
                       (x8222
                        (letrec*
                         ((x8224
                           (begin
                             (write '(funapp 1996 34))
                             (display "\n")
                             (- BOARD-WIDTH 1)))
                          (x8223
                           (begin
                             (write '(funapp 1996 60))
                             (display "\n")
                             (- BOARD-HEIGHT 1))))
                         (begin
                           (write '(funapp 1997 26))
                           (display "\n")
                           (posn x8224 x8223)))))
                      (begin
                        (write '(funapp 1998 23))
                        (display "\n")
                        (world x8225 x8222)))))
                   g8221)))
               (handle-key
                (lambda (w ke)
                  (letrec*
                   ((g8227
                     (letrec*
                      ((x-cnd8228
                        (begin
                          (write '(funapp 2005 35))
                          (display "\n")
                          (equal? ke "w"))))
                      (if x-cnd8228
                        (letrec*
                         ((g8229
                           (begin
                             (write '(funapp 2007 42))
                             (display "\n")
                             (world-change-dir
                              w
                              (begin
                                (write '(funapp 2007 61))
                                (display "\n")
                                'up)))))
                         g8229)
                        (letrec*
                         ((x-cnd8230
                           (begin
                             (write '(funapp 2009 38))
                             (display "\n")
                             (equal? ke "s"))))
                         (if x-cnd8230
                           (letrec*
                            ((g8231
                              (begin
                                (write '(funapp 2011 45))
                                (display "\n")
                                (world-change-dir
                                 w
                                 (begin
                                   (write '(funapp 2011 64))
                                   (display "\n")
                                   'down)))))
                            g8231)
                           (letrec*
                            ((x-cnd8232
                              (begin
                                (write '(funapp 2013 41))
                                (display "\n")
                                (equal? ke "a"))))
                            (if x-cnd8232
                              (letrec*
                               ((g8233
                                 (begin
                                   (write '(funapp 2016 40))
                                   (display "\n")
                                   (world-change-dir
                                    w
                                    (begin
                                      (write '(funapp 2016 59))
                                      (display "\n")
                                      'left)))))
                               g8233)
                              (letrec*
                               ((x-cnd8234
                                 (begin
                                   (write '(funapp 2019 44))
                                   (display "\n")
                                   (equal? ke "d"))))
                               (if x-cnd8234
                                 (letrec*
                                  ((g8235
                                    (begin
                                      (write '(funapp 2022 43))
                                      (display "\n")
                                      (world-change-dir
                                       w
                                       (begin
                                         (write '(funapp 2022 62))
                                         (display "\n")
                                         'right)))))
                                  g8235)
                                 (letrec* ((g8236 w)) g8236)))))))))))
                   g8227)))
               (game-over?
                (lambda (w)
                  (letrec*
                   ((g8237
                     (letrec*
                      ((val7262
                        (letrec*
                         ((x8238
                           (begin
                             (write '(funapp 2033 34))
                             (display "\n")
                             (world-snake w))))
                         (begin
                           (write '(funapp 2034 26))
                           (display "\n")
                           (snake-wall-collide? x8238)))))
                      (letrec*
                       ((g8239
                         (if val7262
                           val7262
                           (letrec*
                            ((x8240
                              (begin
                                (write '(funapp 2040 37))
                                (display "\n")
                                (world-snake w))))
                            (begin
                              (write '(funapp 2041 29))
                              (display "\n")
                              (snake-self-collide? x8240))))))
                       g8239))))
                   g8237)))
               (world->scene
                (lambda (w)
                  (letrec*
                   ((g8241
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 2049 31))
                          (display "\n")
                          (world-snake w)))
                       (x8242
                        (letrec*
                         ((x8243
                           (begin
                             (write '(funapp 2052 34))
                             (display "\n")
                             (world-food w))))
                         (begin
                           (write '(funapp 2053 26))
                           (display "\n")
                           (food+scene x8243 BACKGROUND)))))
                      (begin
                        (write '(funapp 2054 23))
                        (display "\n")
                        (snake+scene x8244 x8242)))))
                   g8241)))
               (food+scene
                (lambda (f scn)
                  (letrec*
                   ((g8245
                     (letrec*
                      ((x8247
                        (begin
                          (write '(funapp 2061 31))
                          (display "\n")
                          (posn-x f)))
                       (x8246
                        (begin
                          (write '(funapp 2061 50))
                          (display "\n")
                          (posn-y f))))
                      (begin
                        (write '(funapp 2062 23))
                        (display "\n")
                        (place-image-on-grid FOOD-IMAGE x8247 x8246 scn)))))
                   g8245)))
               (place-image-on-grid
                (lambda (img x y scn)
                  (letrec*
                   ((g8248
                     (letrec*
                      ((x8251
                        (begin
                          (write '(funapp 2069 31))
                          (display "\n")
                          (* GRID-SIZE x)))
                       (x8249
                        (letrec*
                         ((x8250
                           (begin
                             (write '(funapp 2072 34))
                             (display "\n")
                             (* GRID-SIZE y))))
                         (begin
                           (write '(funapp 2073 26))
                           (display "\n")
                           (- BOARD-HEIGHT-PIXELS x8250)))))
                      (begin
                        (write '(funapp 2074 23))
                        (display "\n")
                        (place-image img x8251 x8249 scn)))))
                   g8248)))
               (snake+scene
                (lambda (snk scn)
                  (letrec*
                   ((g8252
                     (letrec*
                      ((x8253
                        (begin
                          (write '(funapp 2081 31))
                          (display "\n")
                          (snake-segs snk))))
                      (begin
                        (write '(funapp 2082 23))
                        (display "\n")
                        (segments+scene x8253 scn)))))
                   g8252)))
               (segments+scene
                (lambda (segs scn)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x-cnd8255
                        (begin
                          (write '(funapp 2089 35))
                          (display "\n")
                          (empty? segs))))
                      (if x-cnd8255
                        (letrec* ((g8256 scn)) g8256)
                        (letrec*
                         ((g8257
                           (letrec*
                            ((x8260
                              (begin
                                (write '(funapp 2095 37))
                                (display "\n")
                                (cdr segs)))
                             (x8258
                              (letrec*
                               ((x8259
                                 (begin
                                   (write '(funapp 2098 40))
                                   (display "\n")
                                   (car segs))))
                               (begin
                                 (write '(funapp 2099 32))
                                 (display "\n")
                                 (segment+scene x8259 scn)))))
                            (begin
                              (write '(funapp 2100 29))
                              (display "\n")
                              (segments+scene x8260 x8258)))))
                         g8257)))))
                   g8254)))
               (segment+scene
                (lambda (seg scn)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x8263
                        (begin
                          (write '(funapp 2108 31))
                          (display "\n")
                          (posn-x seg)))
                       (x8262
                        (begin
                          (write '(funapp 2108 52))
                          (display "\n")
                          (posn-y seg))))
                      (begin
                        (write '(funapp 2109 23))
                        (display "\n")
                        (place-image-on-grid SEGMENT-IMAGE x8263 x8262 scn)))))
                   g8261))))
              (letrec*
               ((g8264
                 (letrec*
                  ((x8298
                    (letrec*
                     ((xj7381
                       (letrec*
                        ((x8299
                          (begin
                            (write '(funapp 2116 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2116 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2116 61))
                             (display "\n")
                             'module)
                           x8299))))
                      (xk7382
                       (letrec*
                        ((x8300
                          (begin
                            (write '(funapp 2118 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2118 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2118 54))
                             (display "\n")
                             'importer)
                           x8300)))))
                     (letrec*
                      ((g8301
                        (begin
                          (write '(funapp 2121 25))
                          (display "\n")
                          ((lambda (j7385 k7386 f7387)
                             (letrec*
                              ((g8302
                                (lambda (g7383 g7384)
                                  (letrec*
                                   ((g8303
                                     (letrec*
                                      ((x8304
                                        (letrec*
                                         ((x8306
                                           (begin
                                             (write '(funapp 2130 48))
                                             (display "\n")
                                             (POSN/C j7385 k7386 g7383)))
                                          (x8305
                                           (begin
                                             (write '(funapp 2131 48))
                                             (display "\n")
                                             (POSN/C j7385 k7386 g7384))))
                                         (begin
                                           (write '(funapp 2132 40))
                                           (display "\n")
                                           (f7387 x8306 x8305)))))
                                      (begin
                                        (write '(funapp 2133 37))
                                        (display "\n")
                                        (boolean?/c j7385 k7386 x8304)))))
                                   g8303))))
                              g8302))
                           xj7381
                           xk7382
                           posn=?))))
                      g8301)))
                   (x8293
                    (letrec*
                     ((x8294
                       (letrec*
                        ((x8297 (input))
                         (x8295
                          (letrec*
                           ((x8296 (input)))
                           (begin
                             (write '(funapp 2145 60))
                             (display "\n")
                             (cons
                              x8296
                              (begin
                                (write '(funapp 2145 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2146 25))
                          (display "\n")
                          (cons x8297 x8295)))))
                     (begin
                       (write '(funapp 2147 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2147 27)) (display "\n") 'posn)
                        x8294))))
                   (x8288
                    (letrec*
                     ((x8289
                       (letrec*
                        ((x8292 (input))
                         (x8290
                          (letrec*
                           ((x8291 (input)))
                           (begin
                             (write '(funapp 2153 60))
                             (display "\n")
                             (cons
                              x8291
                              (begin
                                (write '(funapp 2153 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2154 25))
                          (display "\n")
                          (cons x8292 x8290)))))
                     (begin
                       (write '(funapp 2155 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2155 27)) (display "\n") 'posn)
                        x8289)))))
                  (begin
                    (write '(funapp 2156 19))
                    (display "\n")
                    (x8298 x8293 x8288))))
                (g8265
                 (letrec*
                  ((xj7388
                    (letrec*
                     ((x8307
                       (begin (write '(funapp 2159 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2159 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2159 58))
                          (display "\n")
                          'module)
                        x8307))))
                   (xk7389
                    (letrec*
                     ((x8308
                       (begin (write '(funapp 2160 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2160 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2160 58))
                          (display "\n")
                          'importer)
                        x8308)))))
                  (letrec*
                   ((g8309
                     (begin
                       (write '(funapp 2161 36))
                       (display "\n")
                       (WORLD/C xj7388 xk7389 WORLD))))
                   g8309)))
                (g8266
                 (letrec*
                  ((xj7390
                    (letrec*
                     ((x8310
                       (begin (write '(funapp 2164 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2164 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2164 58))
                          (display "\n")
                          'module)
                        x8310))))
                   (xk7391
                    (letrec*
                     ((x8311
                       (begin (write '(funapp 2165 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2165 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2165 58))
                          (display "\n")
                          'importer)
                        x8311)))))
                  (letrec*
                   ((g8312
                     (begin
                       (write '(funapp 2167 28))
                       (display "\n")
                       (image/c xj7390 xk7391 BACKGROUND))))
                   g8312)))
                (g8267
                 (letrec*
                  ((xj7392
                    (letrec*
                     ((x8313
                       (begin (write '(funapp 2171 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2171 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2171 58))
                          (display "\n")
                          'module)
                        x8313))))
                   (xk7393
                    (letrec*
                     ((x8314
                       (begin (write '(funapp 2172 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2172 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2172 58))
                          (display "\n")
                          'importer)
                        x8314)))))
                  (letrec*
                   ((g8315
                     (begin
                       (write '(funapp 2174 28))
                       (display "\n")
                       (image/c xj7392 xk7393 FOOD-IMAGE))))
                   g8315)))
                (g8268
                 (letrec*
                  ((xj7394
                    (letrec*
                     ((x8316
                       (begin (write '(funapp 2178 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2178 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2178 58))
                          (display "\n")
                          'module)
                        x8316))))
                   (xk7395
                    (letrec*
                     ((x8317
                       (begin (write '(funapp 2179 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2179 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2179 58))
                          (display "\n")
                          'importer)
                        x8317)))))
                  (letrec*
                   ((g8318
                     (begin
                       (write '(funapp 2181 28))
                       (display "\n")
                       (image/c xj7394 xk7395 SEGMENT-IMAGE))))
                   g8318)))
                (g8269
                 (letrec*
                  ((xj7396
                    (letrec*
                     ((x8319
                       (begin (write '(funapp 2185 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2185 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2185 58))
                          (display "\n")
                          'module)
                        x8319))))
                   (xk7397
                    (letrec*
                     ((x8320
                       (begin (write '(funapp 2186 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2186 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2186 58))
                          (display "\n")
                          'importer)
                        x8320)))))
                  (letrec*
                   ((g8321
                     (begin
                       (write '(funapp 2187 36))
                       (display "\n")
                       (real?/c xj7396 xk7397 GRID-SIZE))))
                   g8321)))
                (g8270
                 (letrec*
                  ((xj7398
                    (letrec*
                     ((x8322
                       (begin (write '(funapp 2190 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2190 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2190 58))
                          (display "\n")
                          'module)
                        x8322))))
                   (xk7399
                    (letrec*
                     ((x8323
                       (begin (write '(funapp 2191 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2191 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2191 58))
                          (display "\n")
                          'importer)
                        x8323)))))
                  (letrec*
                   ((g8324
                     (begin
                       (write '(funapp 2193 28))
                       (display "\n")
                       (real?/c xj7398 xk7399 BOARD-HEIGHT-PIXELS))))
                   g8324)))
                (g8271
                 (letrec*
                  ((xj7400
                    (letrec*
                     ((x8325
                       (begin (write '(funapp 2197 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2197 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2197 58))
                          (display "\n")
                          'module)
                        x8325))))
                   (xk7401
                    (letrec*
                     ((x8326
                       (begin (write '(funapp 2198 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2198 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2198 58))
                          (display "\n")
                          'importer)
                        x8326)))))
                  (letrec*
                   ((g8327
                     (begin
                       (write '(funapp 2200 28))
                       (display "\n")
                       (real?/c xj7400 xk7401 BOARD-WIDTH))))
                   g8327)))
                (g8272
                 (letrec*
                  ((xj7402
                    (letrec*
                     ((x8328
                       (begin (write '(funapp 2204 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2204 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2204 58))
                          (display "\n")
                          'module)
                        x8328))))
                   (xk7403
                    (letrec*
                     ((x8329
                       (begin (write '(funapp 2205 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2205 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2205 58))
                          (display "\n")
                          'importer)
                        x8329)))))
                  (letrec*
                   ((g8330
                     (begin
                       (write '(funapp 2207 28))
                       (display "\n")
                       (real?/c xj7402 xk7403 BOARD-HEIGHT))))
                   g8330)))
                (g8273
                 (letrec*
                  ((x8336
                    (letrec*
                     ((xj7404
                       (letrec*
                        ((x8337
                          (begin
                            (write '(funapp 2213 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2213 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2213 61))
                             (display "\n")
                             'module)
                           x8337))))
                      (xk7405
                       (letrec*
                        ((x8338
                          (begin
                            (write '(funapp 2215 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2215 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2215 54))
                             (display "\n")
                             'importer)
                           x8338)))))
                     (letrec*
                      ((g8339
                        (begin
                          (write '(funapp 2218 25))
                          (display "\n")
                          ((lambda (j7407 k7408 f7409)
                             (letrec*
                              ((g8340
                                (lambda (g7406)
                                  (letrec*
                                   ((g8341
                                     (letrec*
                                      ((x8342
                                        (letrec*
                                         ((x8343
                                           (begin
                                             (write '(funapp 2227 48))
                                             (display "\n")
                                             (SNAKE/C j7407 k7408 g7406))))
                                         (begin
                                           (write '(funapp 2228 40))
                                           (display "\n")
                                           (f7409 x8343)))))
                                      (begin
                                        (write '(funapp 2229 37))
                                        (display "\n")
                                        (boolean?/c j7407 k7408 x8342)))))
                                   g8341))))
                              g8340))
                           xj7404
                           xk7405
                           snake-wall-collide?))))
                      g8339)))
                   (x8331
                    (letrec*
                     ((x8332
                       (letrec*
                        ((x8335 (input))
                         (x8333
                          (letrec*
                           ((x8334 (input)))
                           (begin
                             (write '(funapp 2241 60))
                             (display "\n")
                             (cons
                              x8334
                              (begin
                                (write '(funapp 2241 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2242 25))
                          (display "\n")
                          (cons x8335 x8333)))))
                     (begin
                       (write '(funapp 2243 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2243 27)) (display "\n") 'snake)
                        x8332)))))
                  (begin
                    (write '(funapp 2244 19))
                    (display "\n")
                    (x8336 x8331))))
                (g8274
                 (letrec*
                  ((x8349
                    (letrec*
                     ((xj7410
                       (letrec*
                        ((x8350
                          (begin
                            (write '(funapp 2249 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2249 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2249 61))
                             (display "\n")
                             'module)
                           x8350))))
                      (xk7411
                       (letrec*
                        ((x8351
                          (begin
                            (write '(funapp 2251 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2251 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2251 54))
                             (display "\n")
                             'importer)
                           x8351)))))
                     (letrec*
                      ((g8352
                        (begin
                          (write '(funapp 2254 25))
                          (display "\n")
                          ((lambda (j7413 k7414 f7415)
                             (letrec*
                              ((g8353
                                (lambda (g7412)
                                  (letrec*
                                   ((g8354
                                     (letrec*
                                      ((x8355
                                        (letrec*
                                         ((x8356
                                           (begin
                                             (write '(funapp 2263 48))
                                             (display "\n")
                                             (SNAKE/C j7413 k7414 g7412))))
                                         (begin
                                           (write '(funapp 2264 40))
                                           (display "\n")
                                           (f7415 x8356)))))
                                      (begin
                                        (write '(funapp 2265 37))
                                        (display "\n")
                                        (boolean?/c j7413 k7414 x8355)))))
                                   g8354))))
                              g8353))
                           xj7410
                           xk7411
                           snake-self-collide?))))
                      g8352)))
                   (x8344
                    (letrec*
                     ((x8345
                       (letrec*
                        ((x8348 (input))
                         (x8346
                          (letrec*
                           ((x8347 (input)))
                           (begin
                             (write '(funapp 2277 60))
                             (display "\n")
                             (cons
                              x8347
                              (begin
                                (write '(funapp 2277 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2278 25))
                          (display "\n")
                          (cons x8348 x8346)))))
                     (begin
                       (write '(funapp 2279 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2279 27)) (display "\n") 'snake)
                        x8345)))))
                  (begin
                    (write '(funapp 2280 19))
                    (display "\n")
                    (x8349 x8344))))
                (g8275
                 (letrec*
                  ((x8358
                    (letrec*
                     ((xj7416
                       (letrec*
                        ((x8359
                          (begin
                            (write '(funapp 2285 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2285 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2285 61))
                             (display "\n")
                             'module)
                           x8359))))
                      (xk7417
                       (letrec*
                        ((x8360
                          (begin
                            (write '(funapp 2287 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2287 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2287 54))
                             (display "\n")
                             'importer)
                           x8360)))))
                     (letrec*
                      ((g8361
                        (begin
                          (write '(funapp 2290 25))
                          (display "\n")
                          ((lambda (j7419 k7420 f7421)
                             (letrec*
                              ((g8362
                                (lambda (g7418)
                                  (letrec*
                                   ((g8363
                                     (letrec*
                                      ((x8368
                                        (begin
                                          (write '(funapp 2297 45))
                                          (display "\n")
                                          (listof POSN/C)))
                                       (x8364
                                        (letrec*
                                         ((x8365
                                           (letrec*
                                            ((x8366
                                              (letrec*
                                               ((x8367
                                                 (begin
                                                   (write '(funapp 2304 54))
                                                   (display "\n")
                                                   (listof POSN/C))))
                                               (begin
                                                 (write '(funapp 2305 46))
                                                 (display "\n")
                                                 (and/c cons?/c x8367)))))
                                            (begin
                                              (write '(funapp 2306 43))
                                              (display "\n")
                                              (x8366 j7419 k7420 g7418)))))
                                         (begin
                                           (write '(funapp 2307 40))
                                           (display "\n")
                                           (f7421 x8365)))))
                                      (begin
                                        (write '(funapp 2308 37))
                                        (display "\n")
                                        (x8368 j7419 k7420 x8364)))))
                                   g8363))))
                              g8362))
                           xj7416
                           xk7417
                           cut-tail))))
                      g8361)))
                   (x8357 (input)))
                  (begin
                    (write '(funapp 2316 19))
                    (display "\n")
                    (x8358 x8357))))
                (g8276
                 (letrec*
                  ((x8374
                    (letrec*
                     ((xj7422
                       (letrec*
                        ((x8375
                          (begin
                            (write '(funapp 2321 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2321 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2321 61))
                             (display "\n")
                             'module)
                           x8375))))
                      (xk7423
                       (letrec*
                        ((x8376
                          (begin
                            (write '(funapp 2323 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2323 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2323 54))
                             (display "\n")
                             'importer)
                           x8376)))))
                     (letrec*
                      ((g8377
                        (begin
                          (write '(funapp 2326 25))
                          (display "\n")
                          ((lambda (j7425 k7426 f7427)
                             (letrec*
                              ((g8378
                                (lambda (g7424)
                                  (letrec*
                                   ((g8379
                                     (letrec*
                                      ((x8380
                                        (letrec*
                                         ((x8381
                                           (begin
                                             (write '(funapp 2335 48))
                                             (display "\n")
                                             (SNAKE/C j7425 k7426 g7424))))
                                         (begin
                                           (write '(funapp 2336 40))
                                           (display "\n")
                                           (f7427 x8381)))))
                                      (begin
                                        (write '(funapp 2337 37))
                                        (display "\n")
                                        (SNAKE/C j7425 k7426 x8380)))))
                                   g8379))))
                              g8378))
                           xj7422
                           xk7423
                           snake-slither))))
                      g8377)))
                   (x8369
                    (letrec*
                     ((x8370
                       (letrec*
                        ((x8373 (input))
                         (x8371
                          (letrec*
                           ((x8372 (input)))
                           (begin
                             (write '(funapp 2349 60))
                             (display "\n")
                             (cons
                              x8372
                              (begin
                                (write '(funapp 2349 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2350 25))
                          (display "\n")
                          (cons x8373 x8371)))))
                     (begin
                       (write '(funapp 2351 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2351 27)) (display "\n") 'snake)
                        x8370)))))
                  (begin
                    (write '(funapp 2352 19))
                    (display "\n")
                    (x8374 x8369))))
                (g8277
                 (letrec*
                  ((x8387
                    (letrec*
                     ((xj7428
                       (letrec*
                        ((x8388
                          (begin
                            (write '(funapp 2357 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2357 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2357 61))
                             (display "\n")
                             'module)
                           x8388))))
                      (xk7429
                       (letrec*
                        ((x8389
                          (begin
                            (write '(funapp 2359 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2359 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2359 54))
                             (display "\n")
                             'importer)
                           x8389)))))
                     (letrec*
                      ((g8390
                        (begin
                          (write '(funapp 2362 25))
                          (display "\n")
                          ((lambda (j7431 k7432 f7433)
                             (letrec*
                              ((g8391
                                (lambda (g7430)
                                  (letrec*
                                   ((g8392
                                     (letrec*
                                      ((x8393
                                        (letrec*
                                         ((x8394
                                           (begin
                                             (write '(funapp 2371 48))
                                             (display "\n")
                                             (SNAKE/C j7431 k7432 g7430))))
                                         (begin
                                           (write '(funapp 2372 40))
                                           (display "\n")
                                           (f7433 x8394)))))
                                      (begin
                                        (write '(funapp 2373 37))
                                        (display "\n")
                                        (SNAKE/C j7431 k7432 x8393)))))
                                   g8392))))
                              g8391))
                           xj7428
                           xk7429
                           snake-grow))))
                      g8390)))
                   (x8382
                    (letrec*
                     ((x8383
                       (letrec*
                        ((x8386 (input))
                         (x8384
                          (letrec*
                           ((x8385 (input)))
                           (begin
                             (write '(funapp 2385 60))
                             (display "\n")
                             (cons
                              x8385
                              (begin
                                (write '(funapp 2385 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2386 25))
                          (display "\n")
                          (cons x8386 x8384)))))
                     (begin
                       (write '(funapp 2387 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2387 27)) (display "\n") 'snake)
                        x8383)))))
                  (begin
                    (write '(funapp 2388 19))
                    (display "\n")
                    (x8387 x8382))))
                (g8278
                 (letrec*
                  ((x8409
                    (letrec*
                     ((xj7434
                       (letrec*
                        ((x8410
                          (begin
                            (write '(funapp 2393 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2393 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2393 61))
                             (display "\n")
                             'module)
                           x8410))))
                      (xk7435
                       (letrec*
                        ((x8411
                          (begin
                            (write '(funapp 2395 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2395 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2395 54))
                             (display "\n")
                             'importer)
                           x8411)))))
                     (letrec*
                      ((g8412
                        (begin
                          (write '(funapp 2398 25))
                          (display "\n")
                          ((lambda (j7438 k7439 f7440)
                             (letrec*
                              ((g8413
                                (lambda (g7436 g7437)
                                  (letrec*
                                   ((g8414
                                     (letrec*
                                      ((x8415
                                        (letrec*
                                         ((x8417
                                           (begin
                                             (write '(funapp 2407 48))
                                             (display "\n")
                                             (WORLD/C j7438 k7439 g7436)))
                                          (x8416
                                           (begin
                                             (write '(funapp 2408 48))
                                             (display "\n")
                                             (DIR/C j7438 k7439 g7437))))
                                         (begin
                                           (write '(funapp 2409 40))
                                           (display "\n")
                                           (f7440 x8417 x8416)))))
                                      (begin
                                        (write '(funapp 2410 37))
                                        (display "\n")
                                        (WORLD/C j7438 k7439 x8415)))))
                                   g8414))))
                              g8413))
                           xj7434
                           xk7435
                           world-change-dir))))
                      g8412)))
                   (x8396
                    (letrec*
                     ((x8397
                       (letrec*
                        ((x8404
                          (letrec*
                           ((x8405
                             (letrec*
                              ((x8408 (input))
                               (x8406
                                (letrec*
                                 ((x8407 (input)))
                                 (begin
                                   (write '(funapp 2427 60))
                                   (display "\n")
                                   (cons
                                    x8407
                                    (begin
                                      (write '(funapp 2427 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2428 31))
                                (display "\n")
                                (cons x8408 x8406)))))
                           (begin
                             (write '(funapp 2429 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2429 33))
                                (display "\n")
                                'snake)
                              x8405))))
                         (x8398
                          (letrec*
                           ((x8399
                             (letrec*
                              ((x8400
                                (letrec*
                                 ((x8403 (input))
                                  (x8401
                                   (letrec*
                                    ((x8402 (input)))
                                    (begin
                                      (write '(funapp 2440 37))
                                      (display "\n")
                                      (cons
                                       x8402
                                       (begin
                                         (write '(funapp 2440 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2441 34))
                                   (display "\n")
                                   (cons x8403 x8401)))))
                              (begin
                                (write '(funapp 2442 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2442 36))
                                   (display "\n")
                                   'posn)
                                 x8400)))))
                           (begin
                             (write '(funapp 2443 28))
                             (display "\n")
                             (cons
                              x8399
                              (begin
                                (write '(funapp 2443 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2444 25))
                          (display "\n")
                          (cons x8404 x8398)))))
                     (begin
                       (write '(funapp 2445 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2445 27)) (display "\n") 'world)
                        x8397))))
                   (x8395 (input)))
                  (begin
                    (write '(funapp 2447 19))
                    (display "\n")
                    (x8409 x8396 x8395))))
                (g8279
                 (letrec*
                  ((x8431
                    (letrec*
                     ((xj7441
                       (letrec*
                        ((x8432
                          (begin
                            (write '(funapp 2452 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2452 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2452 61))
                             (display "\n")
                             'module)
                           x8432))))
                      (xk7442
                       (letrec*
                        ((x8433
                          (begin
                            (write '(funapp 2454 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2454 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2454 54))
                             (display "\n")
                             'importer)
                           x8433)))))
                     (letrec*
                      ((g8434
                        (begin
                          (write '(funapp 2457 25))
                          (display "\n")
                          ((lambda (j7444 k7445 f7446)
                             (letrec*
                              ((g8435
                                (lambda (g7443)
                                  (letrec*
                                   ((g8436
                                     (letrec*
                                      ((x8437
                                        (letrec*
                                         ((x8438
                                           (begin
                                             (write '(funapp 2466 48))
                                             (display "\n")
                                             (WORLD/C j7444 k7445 g7443))))
                                         (begin
                                           (write '(funapp 2467 40))
                                           (display "\n")
                                           (f7446 x8438)))))
                                      (begin
                                        (write '(funapp 2468 37))
                                        (display "\n")
                                        (WORLD/C j7444 k7445 x8437)))))
                                   g8436))))
                              g8435))
                           xj7441
                           xk7442
                           world->world))))
                      g8434)))
                   (x8418
                    (letrec*
                     ((x8419
                       (letrec*
                        ((x8426
                          (letrec*
                           ((x8427
                             (letrec*
                              ((x8430 (input))
                               (x8428
                                (letrec*
                                 ((x8429 (input)))
                                 (begin
                                   (write '(funapp 2485 60))
                                   (display "\n")
                                   (cons
                                    x8429
                                    (begin
                                      (write '(funapp 2485 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2486 31))
                                (display "\n")
                                (cons x8430 x8428)))))
                           (begin
                             (write '(funapp 2487 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2487 33))
                                (display "\n")
                                'snake)
                              x8427))))
                         (x8420
                          (letrec*
                           ((x8421
                             (letrec*
                              ((x8422
                                (letrec*
                                 ((x8425 (input))
                                  (x8423
                                   (letrec*
                                    ((x8424 (input)))
                                    (begin
                                      (write '(funapp 2498 37))
                                      (display "\n")
                                      (cons
                                       x8424
                                       (begin
                                         (write '(funapp 2498 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2499 34))
                                   (display "\n")
                                   (cons x8425 x8423)))))
                              (begin
                                (write '(funapp 2500 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2500 36))
                                   (display "\n")
                                   'posn)
                                 x8422)))))
                           (begin
                             (write '(funapp 2501 28))
                             (display "\n")
                             (cons
                              x8421
                              (begin
                                (write '(funapp 2501 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2502 25))
                          (display "\n")
                          (cons x8426 x8420)))))
                     (begin
                       (write '(funapp 2503 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2503 27)) (display "\n") 'world)
                        x8419)))))
                  (begin
                    (write '(funapp 2504 19))
                    (display "\n")
                    (x8431 x8418))))
                (g8280
                 (letrec*
                  ((x8453
                    (letrec*
                     ((xj7447
                       (letrec*
                        ((x8454
                          (begin
                            (write '(funapp 2509 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2509 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2509 61))
                             (display "\n")
                             'module)
                           x8454))))
                      (xk7448
                       (letrec*
                        ((x8455
                          (begin
                            (write '(funapp 2511 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2511 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2511 54))
                             (display "\n")
                             'importer)
                           x8455)))))
                     (letrec*
                      ((g8456
                        (begin
                          (write '(funapp 2514 25))
                          (display "\n")
                          ((lambda (j7451 k7452 f7453)
                             (letrec*
                              ((g8457
                                (lambda (g7449 g7450)
                                  (letrec*
                                   ((g8458
                                     (letrec*
                                      ((x8459
                                        (letrec*
                                         ((x8461
                                           (begin
                                             (write '(funapp 2523 48))
                                             (display "\n")
                                             (WORLD/C j7451 k7452 g7449)))
                                          (x8460
                                           (begin
                                             (write '(funapp 2524 48))
                                             (display "\n")
                                             (string?/c j7451 k7452 g7450))))
                                         (begin
                                           (write '(funapp 2525 40))
                                           (display "\n")
                                           (f7453 x8461 x8460)))))
                                      (begin
                                        (write '(funapp 2526 37))
                                        (display "\n")
                                        (WORLD/C j7451 k7452 x8459)))))
                                   g8458))))
                              g8457))
                           xj7447
                           xk7448
                           handle-key))))
                      g8456)))
                   (x8440
                    (letrec*
                     ((x8441
                       (letrec*
                        ((x8448
                          (letrec*
                           ((x8449
                             (letrec*
                              ((x8452 (input))
                               (x8450
                                (letrec*
                                 ((x8451 (input)))
                                 (begin
                                   (write '(funapp 2543 60))
                                   (display "\n")
                                   (cons
                                    x8451
                                    (begin
                                      (write '(funapp 2543 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2544 31))
                                (display "\n")
                                (cons x8452 x8450)))))
                           (begin
                             (write '(funapp 2545 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2545 33))
                                (display "\n")
                                'snake)
                              x8449))))
                         (x8442
                          (letrec*
                           ((x8443
                             (letrec*
                              ((x8444
                                (letrec*
                                 ((x8447 (input))
                                  (x8445
                                   (letrec*
                                    ((x8446 (input)))
                                    (begin
                                      (write '(funapp 2556 37))
                                      (display "\n")
                                      (cons
                                       x8446
                                       (begin
                                         (write '(funapp 2556 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2557 34))
                                   (display "\n")
                                   (cons x8447 x8445)))))
                              (begin
                                (write '(funapp 2558 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2558 36))
                                   (display "\n")
                                   'posn)
                                 x8444)))))
                           (begin
                             (write '(funapp 2559 28))
                             (display "\n")
                             (cons
                              x8443
                              (begin
                                (write '(funapp 2559 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2560 25))
                          (display "\n")
                          (cons x8448 x8442)))))
                     (begin
                       (write '(funapp 2561 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2561 27)) (display "\n") 'world)
                        x8441))))
                   (x8439 (input)))
                  (begin
                    (write '(funapp 2563 19))
                    (display "\n")
                    (x8453 x8440 x8439))))
                (g8281
                 (letrec*
                  ((x8475
                    (letrec*
                     ((xj7454
                       (letrec*
                        ((x8476
                          (begin
                            (write '(funapp 2568 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2568 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2568 61))
                             (display "\n")
                             'module)
                           x8476))))
                      (xk7455
                       (letrec*
                        ((x8477
                          (begin
                            (write '(funapp 2570 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2570 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2570 54))
                             (display "\n")
                             'importer)
                           x8477)))))
                     (letrec*
                      ((g8478
                        (begin
                          (write '(funapp 2573 25))
                          (display "\n")
                          ((lambda (j7457 k7458 f7459)
                             (letrec*
                              ((g8479
                                (lambda (g7456)
                                  (letrec*
                                   ((g8480
                                     (letrec*
                                      ((x8481
                                        (letrec*
                                         ((x8482
                                           (begin
                                             (write '(funapp 2582 48))
                                             (display "\n")
                                             (WORLD/C j7457 k7458 g7456))))
                                         (begin
                                           (write '(funapp 2583 40))
                                           (display "\n")
                                           (f7459 x8482)))))
                                      (begin
                                        (write '(funapp 2584 37))
                                        (display "\n")
                                        (boolean?/c j7457 k7458 x8481)))))
                                   g8480))))
                              g8479))
                           xj7454
                           xk7455
                           game-over?))))
                      g8478)))
                   (x8462
                    (letrec*
                     ((x8463
                       (letrec*
                        ((x8470
                          (letrec*
                           ((x8471
                             (letrec*
                              ((x8474 (input))
                               (x8472
                                (letrec*
                                 ((x8473 (input)))
                                 (begin
                                   (write '(funapp 2601 60))
                                   (display "\n")
                                   (cons
                                    x8473
                                    (begin
                                      (write '(funapp 2601 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2602 31))
                                (display "\n")
                                (cons x8474 x8472)))))
                           (begin
                             (write '(funapp 2603 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2603 33))
                                (display "\n")
                                'snake)
                              x8471))))
                         (x8464
                          (letrec*
                           ((x8465
                             (letrec*
                              ((x8466
                                (letrec*
                                 ((x8469 (input))
                                  (x8467
                                   (letrec*
                                    ((x8468 (input)))
                                    (begin
                                      (write '(funapp 2614 37))
                                      (display "\n")
                                      (cons
                                       x8468
                                       (begin
                                         (write '(funapp 2614 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2615 34))
                                   (display "\n")
                                   (cons x8469 x8467)))))
                              (begin
                                (write '(funapp 2616 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2616 36))
                                   (display "\n")
                                   'posn)
                                 x8466)))))
                           (begin
                             (write '(funapp 2617 28))
                             (display "\n")
                             (cons
                              x8465
                              (begin
                                (write '(funapp 2617 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2618 25))
                          (display "\n")
                          (cons x8470 x8464)))))
                     (begin
                       (write '(funapp 2619 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2619 27)) (display "\n") 'world)
                        x8463)))))
                  (begin
                    (write '(funapp 2620 19))
                    (display "\n")
                    (x8475 x8462))))
                (g8282
                 (letrec*
                  ((x8496
                    (letrec*
                     ((xj7460
                       (letrec*
                        ((x8497
                          (begin
                            (write '(funapp 2625 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2625 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2625 61))
                             (display "\n")
                             'module)
                           x8497))))
                      (xk7461
                       (letrec*
                        ((x8498
                          (begin
                            (write '(funapp 2627 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2627 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2627 54))
                             (display "\n")
                             'importer)
                           x8498)))))
                     (letrec*
                      ((g8499
                        (begin
                          (write '(funapp 2630 25))
                          (display "\n")
                          ((lambda (j7463 k7464 f7465)
                             (letrec*
                              ((g8500
                                (lambda (g7462)
                                  (letrec*
                                   ((g8501
                                     (letrec*
                                      ((x8502
                                        (letrec*
                                         ((x8503
                                           (begin
                                             (write '(funapp 2639 48))
                                             (display "\n")
                                             (WORLD/C j7463 k7464 g7462))))
                                         (begin
                                           (write '(funapp 2640 40))
                                           (display "\n")
                                           (f7465 x8503)))))
                                      (begin
                                        (write '(funapp 2641 37))
                                        (display "\n")
                                        (image/c j7463 k7464 x8502)))))
                                   g8501))))
                              g8500))
                           xj7460
                           xk7461
                           world->scene))))
                      g8499)))
                   (x8483
                    (letrec*
                     ((x8484
                       (letrec*
                        ((x8491
                          (letrec*
                           ((x8492
                             (letrec*
                              ((x8495 (input))
                               (x8493
                                (letrec*
                                 ((x8494 (input)))
                                 (begin
                                   (write '(funapp 2658 60))
                                   (display "\n")
                                   (cons
                                    x8494
                                    (begin
                                      (write '(funapp 2658 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2659 31))
                                (display "\n")
                                (cons x8495 x8493)))))
                           (begin
                             (write '(funapp 2660 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2660 33))
                                (display "\n")
                                'snake)
                              x8492))))
                         (x8485
                          (letrec*
                           ((x8486
                             (letrec*
                              ((x8487
                                (letrec*
                                 ((x8490 (input))
                                  (x8488
                                   (letrec*
                                    ((x8489 (input)))
                                    (begin
                                      (write '(funapp 2671 37))
                                      (display "\n")
                                      (cons
                                       x8489
                                       (begin
                                         (write '(funapp 2671 48))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2672 34))
                                   (display "\n")
                                   (cons x8490 x8488)))))
                              (begin
                                (write '(funapp 2673 31))
                                (display "\n")
                                (cons
                                 (begin
                                   (write '(funapp 2673 36))
                                   (display "\n")
                                   'posn)
                                 x8487)))))
                           (begin
                             (write '(funapp 2674 28))
                             (display "\n")
                             (cons
                              x8486
                              (begin
                                (write '(funapp 2674 39))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2675 25))
                          (display "\n")
                          (cons x8491 x8485)))))
                     (begin
                       (write '(funapp 2676 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2676 27)) (display "\n") 'world)
                        x8484)))))
                  (begin
                    (write '(funapp 2677 19))
                    (display "\n")
                    (x8496 x8483))))
                (g8283
                 (letrec*
                  ((x8510
                    (letrec*
                     ((xj7466
                       (letrec*
                        ((x8511
                          (begin
                            (write '(funapp 2682 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2682 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2682 61))
                             (display "\n")
                             'module)
                           x8511))))
                      (xk7467
                       (letrec*
                        ((x8512
                          (begin
                            (write '(funapp 2684 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2684 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2684 54))
                             (display "\n")
                             'importer)
                           x8512)))))
                     (letrec*
                      ((g8513
                        (begin
                          (write '(funapp 2687 25))
                          (display "\n")
                          ((lambda (j7470 k7471 f7472)
                             (letrec*
                              ((g8514
                                (lambda (g7468 g7469)
                                  (letrec*
                                   ((g8515
                                     (letrec*
                                      ((x8516
                                        (letrec*
                                         ((x8518
                                           (begin
                                             (write '(funapp 2696 48))
                                             (display "\n")
                                             (POSN/C j7470 k7471 g7468)))
                                          (x8517
                                           (begin
                                             (write '(funapp 2697 48))
                                             (display "\n")
                                             (image/c j7470 k7471 g7469))))
                                         (begin
                                           (write '(funapp 2698 40))
                                           (display "\n")
                                           (f7472 x8518 x8517)))))
                                      (begin
                                        (write '(funapp 2699 37))
                                        (display "\n")
                                        (image/c j7470 k7471 x8516)))))
                                   g8515))))
                              g8514))
                           xj7466
                           xk7467
                           food+scene))))
                      g8513)))
                   (x8505
                    (letrec*
                     ((x8506
                       (letrec*
                        ((x8509 (input))
                         (x8507
                          (letrec*
                           ((x8508 (input)))
                           (begin
                             (write '(funapp 2711 60))
                             (display "\n")
                             (cons
                              x8508
                              (begin
                                (write '(funapp 2711 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2712 25))
                          (display "\n")
                          (cons x8509 x8507)))))
                     (begin
                       (write '(funapp 2713 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2713 27)) (display "\n") 'posn)
                        x8506))))
                   (x8504
                    (begin
                      (write '(funapp 2714 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2714 32)) (display "\n") 'image)
                       (begin (write '(funapp 2714 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2715 19))
                    (display "\n")
                    (x8510 x8505 x8504))))
                (g8284
                 (letrec*
                  ((x8523
                    (letrec*
                     ((xj7473
                       (letrec*
                        ((x8524
                          (begin
                            (write '(funapp 2720 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2720 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2720 61))
                             (display "\n")
                             'module)
                           x8524))))
                      (xk7474
                       (letrec*
                        ((x8525
                          (begin
                            (write '(funapp 2722 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2722 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2722 54))
                             (display "\n")
                             'importer)
                           x8525)))))
                     (letrec*
                      ((g8526
                        (begin
                          (write '(funapp 2725 25))
                          (display "\n")
                          ((lambda (j7479 k7480 f7481)
                             (letrec*
                              ((g8527
                                (lambda (g7475 g7476 g7477 g7478)
                                  (letrec*
                                   ((g8528
                                     (letrec*
                                      ((x8529
                                        (letrec*
                                         ((x8533
                                           (begin
                                             (write '(funapp 2734 48))
                                             (display "\n")
                                             (image/c j7479 k7480 g7475)))
                                          (x8532
                                           (begin
                                             (write '(funapp 2735 48))
                                             (display "\n")
                                             (real?/c j7479 k7480 g7476)))
                                          (x8531
                                           (begin
                                             (write '(funapp 2736 48))
                                             (display "\n")
                                             (real?/c j7479 k7480 g7477)))
                                          (x8530
                                           (begin
                                             (write '(funapp 2737 48))
                                             (display "\n")
                                             (image/c j7479 k7480 g7478))))
                                         (begin
                                           (write '(funapp 2738 40))
                                           (display "\n")
                                           (f7481 x8533 x8532 x8531 x8530)))))
                                      (begin
                                        (write '(funapp 2739 37))
                                        (display "\n")
                                        (image/c j7479 k7480 x8529)))))
                                   g8528))))
                              g8527))
                           xj7473
                           xk7474
                           place-image-on-grid))))
                      g8526)))
                   (x8522
                    (begin
                      (write '(funapp 2746 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2746 32)) (display "\n") 'image)
                       (begin (write '(funapp 2746 39)) (display "\n") '()))))
                   (x8521 (input))
                   (x8520 (input))
                   (x8519
                    (begin
                      (write '(funapp 2749 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2749 32)) (display "\n") 'image)
                       (begin (write '(funapp 2749 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2750 19))
                    (display "\n")
                    (x8523 x8522 x8521 x8520 x8519))))
                (g8285
                 (letrec*
                  ((x8540
                    (letrec*
                     ((xj7482
                       (letrec*
                        ((x8541
                          (begin
                            (write '(funapp 2755 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2755 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2755 61))
                             (display "\n")
                             'module)
                           x8541))))
                      (xk7483
                       (letrec*
                        ((x8542
                          (begin
                            (write '(funapp 2757 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2757 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2757 54))
                             (display "\n")
                             'importer)
                           x8542)))))
                     (letrec*
                      ((g8543
                        (begin
                          (write '(funapp 2760 25))
                          (display "\n")
                          ((lambda (j7486 k7487 f7488)
                             (letrec*
                              ((g8544
                                (lambda (g7484 g7485)
                                  (letrec*
                                   ((g8545
                                     (letrec*
                                      ((x8546
                                        (letrec*
                                         ((x8548
                                           (begin
                                             (write '(funapp 2769 48))
                                             (display "\n")
                                             (SNAKE/C j7486 k7487 g7484)))
                                          (x8547
                                           (begin
                                             (write '(funapp 2770 48))
                                             (display "\n")
                                             (image/c j7486 k7487 g7485))))
                                         (begin
                                           (write '(funapp 2771 40))
                                           (display "\n")
                                           (f7488 x8548 x8547)))))
                                      (begin
                                        (write '(funapp 2772 37))
                                        (display "\n")
                                        (image/c j7486 k7487 x8546)))))
                                   g8545))))
                              g8544))
                           xj7482
                           xk7483
                           snake+scene))))
                      g8543)))
                   (x8535
                    (letrec*
                     ((x8536
                       (letrec*
                        ((x8539 (input))
                         (x8537
                          (letrec*
                           ((x8538 (input)))
                           (begin
                             (write '(funapp 2784 60))
                             (display "\n")
                             (cons
                              x8538
                              (begin
                                (write '(funapp 2784 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2785 25))
                          (display "\n")
                          (cons x8539 x8537)))))
                     (begin
                       (write '(funapp 2786 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2786 27)) (display "\n") 'snake)
                        x8536))))
                   (x8534
                    (begin
                      (write '(funapp 2787 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2787 32)) (display "\n") 'image)
                       (begin (write '(funapp 2787 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2788 19))
                    (display "\n")
                    (x8540 x8535 x8534))))
                (g8286
                 (letrec*
                  ((x8551
                    (letrec*
                     ((xj7489
                       (letrec*
                        ((x8552
                          (begin
                            (write '(funapp 2793 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2793 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2793 61))
                             (display "\n")
                             'module)
                           x8552))))
                      (xk7490
                       (letrec*
                        ((x8553
                          (begin
                            (write '(funapp 2795 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2795 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2795 54))
                             (display "\n")
                             'importer)
                           x8553)))))
                     (letrec*
                      ((g8554
                        (begin
                          (write '(funapp 2798 25))
                          (display "\n")
                          ((lambda (j7493 k7494 f7495)
                             (letrec*
                              ((g8555
                                (lambda (g7491 g7492)
                                  (letrec*
                                   ((g8556
                                     (letrec*
                                      ((x8557
                                        (letrec*
                                         ((x8559
                                           (letrec*
                                            ((x8560
                                              (begin
                                                (write '(funapp 2809 51))
                                                (display "\n")
                                                (listof POSN/C))))
                                            (begin
                                              (write '(funapp 2810 43))
                                              (display "\n")
                                              (x8560 j7493 k7494 g7491))))
                                          (x8558
                                           (begin
                                             (write '(funapp 2811 48))
                                             (display "\n")
                                             (image/c j7493 k7494 g7492))))
                                         (begin
                                           (write '(funapp 2812 40))
                                           (display "\n")
                                           (f7495 x8559 x8558)))))
                                      (begin
                                        (write '(funapp 2813 37))
                                        (display "\n")
                                        (image/c j7493 k7494 x8557)))))
                                   g8556))))
                              g8555))
                           xj7489
                           xk7490
                           segments+scene))))
                      g8554)))
                   (x8550 (input))
                   (x8549
                    (begin
                      (write '(funapp 2821 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2821 32)) (display "\n") 'image)
                       (begin (write '(funapp 2821 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2822 19))
                    (display "\n")
                    (x8551 x8550 x8549))))
                (g8287
                 (letrec*
                  ((x8567
                    (letrec*
                     ((xj7496
                       (letrec*
                        ((x8568
                          (begin
                            (write '(funapp 2827 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2827 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2827 61))
                             (display "\n")
                             'module)
                           x8568))))
                      (xk7497
                       (letrec*
                        ((x8569
                          (begin
                            (write '(funapp 2829 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2829 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2829 54))
                             (display "\n")
                             'importer)
                           x8569)))))
                     (letrec*
                      ((g8570
                        (begin
                          (write '(funapp 2832 25))
                          (display "\n")
                          ((lambda (j7500 k7501 f7502)
                             (letrec*
                              ((g8571
                                (lambda (g7498 g7499)
                                  (letrec*
                                   ((g8572
                                     (letrec*
                                      ((x8573
                                        (letrec*
                                         ((x8575
                                           (begin
                                             (write '(funapp 2841 48))
                                             (display "\n")
                                             (POSN/C j7500 k7501 g7498)))
                                          (x8574
                                           (begin
                                             (write '(funapp 2842 48))
                                             (display "\n")
                                             (image/c j7500 k7501 g7499))))
                                         (begin
                                           (write '(funapp 2843 40))
                                           (display "\n")
                                           (f7502 x8575 x8574)))))
                                      (begin
                                        (write '(funapp 2844 37))
                                        (display "\n")
                                        (image/c j7500 k7501 x8573)))))
                                   g8572))))
                              g8571))
                           xj7496
                           xk7497
                           segment+scene))))
                      g8570)))
                   (x8562
                    (letrec*
                     ((x8563
                       (letrec*
                        ((x8566 (input))
                         (x8564
                          (letrec*
                           ((x8565 (input)))
                           (begin
                             (write '(funapp 2856 60))
                             (display "\n")
                             (cons
                              x8565
                              (begin
                                (write '(funapp 2856 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2857 25))
                          (display "\n")
                          (cons x8566 x8564)))))
                     (begin
                       (write '(funapp 2858 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2858 27)) (display "\n") 'posn)
                        x8563))))
                   (x8561
                    (begin
                      (write '(funapp 2859 27))
                      (display "\n")
                      (cons
                       (begin (write '(funapp 2859 32)) (display "\n") 'image)
                       (begin (write '(funapp 2859 39)) (display "\n") '())))))
                  (begin
                    (write '(funapp 2860 19))
                    (display "\n")
                    (x8567 x8562 x8561)))))
               g8287))))
           g7532))))
       g7530)))
    g7529)))
