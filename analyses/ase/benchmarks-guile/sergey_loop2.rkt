(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7349 #t)) g7349)))
    (meta (lambda (v) (letrec* ((g7350 v)) g7350)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7351
          (letrec*
           ((g7352
             (letrec*
              ((x-e7353 lst))
              (letrec*
               ((v1742 x-e7353))
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
                   ((x-cnd7354
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7354
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
           g7352)))
        g7351)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7355 (lambda (v) (letrec* ((g7356 v)) g7356)))) g7355)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7357
          (letrec*
           ((x7358 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7358)))))
        g7357))))
   (letrec*
    ((g7359
      (letrec*
       ((g7360
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
           ((g7361 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7362
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7363
                     (lambda (k j lst)
                       (letrec*
                        ((g7364
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7365
                                  (begin
                                    (write '(funapp 67 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7365))
                             lst))))
                        g7364))))
                   g7363)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7367
                        g7261
                        (begin
                          (write '(blame g7259 77 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7366)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7369
                        g7264
                        (begin
                          (write '(blame g7262 85 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7368)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7371
                        g7267
                        (begin
                          (write '(blame g7265 93 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7370)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7374 #t)) g7374)) g7270))))
                      (if x-cnd7373
                        g7270
                        (begin
                          (write '(blame g7268 102 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7372)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7377 #t)) g7377)) g7273))))
                      (if x-cnd7376
                        g7273
                        (begin
                          (write '(blame g7271 111 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7375)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7379
                        g7276
                        (begin
                          (write '(blame g7274 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7378)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7381
                        g7279
                        (begin
                          (write '(blame g7277 128 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7380)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7383
                        g7282
                        (begin
                          (write '(blame g7280 136 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7382)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7385
                        g7285
                        (begin
                          (write '(blame g7283 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7384)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7386
                     (lambda (k j v)
                       (letrec*
                        ((g7387
                          (letrec*
                           ((x-cnd7388
                             (begin
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7388
                             (begin
                               (write '(funapp 155 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7387))))
                   g7386)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7389
                     (lambda (k j v)
                       (letrec*
                        ((g7390
                          (letrec*
                           ((x-cnd7391
                             (begin
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7391
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7396))))
                               (x7392
                                (letrec*
                                 ((x7394
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7393
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7394 k j x7393)))))
                              (begin
                                (write '(funapp 178 31))
                                (display "\n")
                                (orig-cons x7395 x7392)))))))
                        g7390))))
                   g7389)))
               (any? (lambda (v) (letrec* ((g7397 #t)) g7397)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7398
                     (letrec*
                      ((x7399
                        (begin
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
                        (display "\n")
                        (not x7399)))))
                   g7398)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7400
                     (letrec*
                      ((x-cnd7401
                        (begin
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7402
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7403)))))
                              g7402))
                           g7288))))
                      (if x-cnd7401
                        g7288
                        (begin
                          (write '(blame g7286 200 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7400)))
               (meta (lambda (v) (letrec* ((g7404 v)) g7404)))
               (+
                (letrec*
                 ((xj7289
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7405
                    (begin
                      (write '(funapp 208 21))
                      (display "\n")
                      ((lambda (j7293 k7294 f7295)
                         (letrec*
                          ((g7407
                            (lambda (g7291 g7292)
                              (letrec*
                               ((g7408
                                 (letrec*
                                  ((x7409
                                    (letrec*
                                     ((x7411
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7410
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7295 x7411 x7410)))))
                                  (begin
                                    (write '(funapp 220 33))
                                    (display "\n")
                                    (number?/c j7293 k7294 x7409)))))
                               g7408))))
                          g7407))
                       xj7289
                       xk7290
                       (lambda (a b)
                         (letrec*
                          ((g7406
                            (begin
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7406))))))
                  g7405)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7412
                    (begin
                      (write '(funapp 232 21))
                      (display "\n")
                      ((lambda (j7300 k7301 f7302)
                         (letrec*
                          ((g7414
                            (lambda (g7298 g7299)
                              (letrec*
                               ((g7415
                                 (letrec*
                                  ((x7416
                                    (letrec*
                                     ((x7418
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7417
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7302 x7418 x7417)))))
                                  (begin
                                    (write '(funapp 244 33))
                                    (display "\n")
                                    (number?/c j7300 k7301 x7416)))))
                               g7415))))
                          g7414))
                       xj7296
                       xk7297
                       (lambda (a b)
                         (letrec*
                          ((g7413
                            (begin
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7413))))))
                  g7412)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7419
                    (begin
                      (write '(funapp 256 21))
                      (display "\n")
                      ((lambda (j7307 k7308 f7309)
                         (letrec*
                          ((g7421
                            (lambda (g7305 g7306)
                              (letrec*
                               ((g7422
                                 (letrec*
                                  ((x7423
                                    (letrec*
                                     ((x7425
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7424
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7309 x7425 x7424)))))
                                  (begin
                                    (write '(funapp 268 33))
                                    (display "\n")
                                    (number?/c j7307 k7308 x7423)))))
                               g7422))))
                          g7421))
                       xj7303
                       xk7304
                       (lambda (a b)
                         (letrec*
                          ((g7420
                            (begin
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7420))))))
                  g7419)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 280 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7428
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7429
                                 (letrec*
                                  ((x7430
                                    (letrec*
                                     ((x7432
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7431
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7316 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 292 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7430)))))
                               g7429))))
                          g7428))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7427
                            (begin
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7427))))))
                  g7426)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 304 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7435
                            (lambda (g7319)
                              (letrec*
                               ((g7436
                                 (letrec*
                                  ((x7437
                                    (letrec*
                                     ((x7438
                                       (begin
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7322 x7438)))))
                                  (begin
                                    (write '(funapp 315 33))
                                    (display "\n")
                                    (any/c j7320 k7321 x7437)))))
                               g7436))))
                          g7435))
                       xj7317
                       xk7318
                       (lambda (p)
                         (letrec*
                          ((g7434
                            (begin
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7434))))))
                  g7433)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7439
                    (begin
                      (write '(funapp 327 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7441
                            (lambda (g7325)
                              (letrec*
                               ((g7442
                                 (letrec*
                                  ((x7443
                                    (letrec*
                                     ((x7444
                                       (begin
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7328 x7444)))))
                                  (begin
                                    (write '(funapp 338 33))
                                    (display "\n")
                                    (any/c j7326 k7327 x7443)))))
                               g7442))))
                          g7441))
                       xj7323
                       xk7324
                       (lambda (p)
                         (letrec*
                          ((g7440
                            (begin
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7440))))))
                  g7439)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7445
                    (begin
                      (write '(funapp 350 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7447
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7448
                                 (letrec*
                                  ((x7449
                                    (letrec*
                                     ((x7451
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7450
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7335 x7451 x7450)))))
                                  (begin
                                    (write '(funapp 362 33))
                                    (display "\n")
                                    (pair?/c j7333 k7334 x7449)))))
                               g7448))))
                          g7447))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7446
                            (begin
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7446))))))
                  g7445)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7452
                    (begin
                      (write '(funapp 375 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7454
                            (lambda (g7338)
                              (letrec*
                               ((g7455
                                 (letrec*
                                  ((x7456
                                    (letrec*
                                     ((x7457
                                       (begin
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7341 x7457)))))
                                  (begin
                                    (write '(funapp 386 33))
                                    (display "\n")
                                    (integer?/c j7339 k7340 x7456)))))
                               g7455))))
                          g7454))
                       xj7336
                       xk7337
                       (lambda (v i)
                         (letrec*
                          ((g7453
                            (begin
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7453))))))
                  g7452)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7458
                    (begin
                      (write '(funapp 399 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7460
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7461
                                 (letrec*
                                  ((x7462
                                    (letrec*
                                     ((x7464
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7463
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7348 x7464 x7463)))))
                                  (begin
                                    (write '(funapp 411 33))
                                    (display "\n")
                                    (any/c j7346 k7347 x7462)))))
                               g7461))))
                          g7460))
                       xj7342
                       xk7343
                       (lambda (vec i v)
                         (letrec*
                          ((g7459
                            (begin
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7459))))))
                  g7458)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7465
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7465)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (letrec*
                         ((x7468
                           (begin
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7468)))))
                      (begin
                        (write '(funapp 430 23))
                        (display "\n")
                        (cdr x7467)))))
                   g7466)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7472))))
                    (g7470
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7473))))
                    (g7471
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7474
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7477
                           (letrec*
                            ((x7478
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7478))))
                          (x7475
                           (letrec*
                            ((x7476
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7476)))))
                         (begin
                           (write '(funapp 446 26))
                           (display "\n")
                           (cons x7477 x7475)))))))
                   g7471)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
                        (display "\n")
                        (cdr x7480)))))
                   g7479)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (letrec*
                         ((x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7484)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7483)))))
                      (begin
                        (write '(funapp 462 23))
                        (display "\n")
                        (car x7482)))))
                   g7481)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (letrec*
                         ((x7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7488)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7487)))))
                      (begin
                        (write '(funapp 473 23))
                        (display "\n")
                        (cdr x7486)))))
                   g7485)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7492))))
                    (g7490
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7493))))
                    (g7491
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 484 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 485 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7494
                         (begin
                           (write '(funapp 487 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7495 res))
                       g7495))))
                   g7491)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (letrec*
                         ((x7498
                           (begin
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7498)))))
                      (begin
                        (write '(funapp 496 23))
                        (display "\n")
                        (car x7497)))))
                   g7496)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7500
                        (letrec*
                         ((x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7502)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7501)))))
                      (begin
                        (write '(funapp 507 23))
                        (display "\n")
                        (cdr x7500)))))
                   g7499)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7505))))
                    (g7504
                     (letrec*
                      ((x-cnd7506
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7506
                        #f
                        (letrec*
                         ((x-cnd7507
                           (letrec*
                            ((x7508
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7508 k)))))
                         (if x-cnd7507
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
                              (display "\n")
                              (assq k x7509)))))))))
                   g7504)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
                        (display "\n")
                        (= 0 x7511)))))
                   g7510)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7514))))
                    (g7513
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7515
                        ""
                        (letrec*
                         ((x7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7519))))
                          (x7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7517)))))
                         (begin
                           (write '(funapp 544 26))
                           (display "\n")
                           (string-append x7518 x7516)))))))
                   g7513)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7523))))
                    (g7521
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7524))))
                    (g7522
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7525
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7525))))
                   g7522)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x7527
                        (letrec*
                         ((x7528
                           (letrec*
                            ((x7529
                              (begin
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7529)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7528)))))
                      (begin
                        (write '(funapp 567 23))
                        (display "\n")
                        (cdr x7527)))))
                   g7526)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7533))))
                    (g7531
                     (letrec*
                      ((x7534
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7534))))
                    (g7532
                     (letrec*
                      ((x-cnd7535
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7535
                        x
                        (letrec*
                         ((x7537
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7536
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7537 x7536)))))))
                   g7532)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7538
                     (begin (write '(funapp 583 49)) (display "\n") '())))
                   g7538)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x-cnd7540
                        (letrec*
                         ((x7541 #\a))
                         (begin
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7541)))))
                      (if x-cnd7540
                        (letrec*
                         ((x7542 #\z))
                         (begin
                           (write '(funapp 592 48))
                           (display "\n")
                           (char-ci<=? c x7542)))
                        #f))))
                   g7539)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7545))))
                    (g7544
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7546
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7547 (if val7243 val7243 #f)))
                             g7547)))))
                       g7546))))
                   g7544)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7549
                           (begin
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
                           (display "\n")
                           (= x7549 9)))))
                      (letrec*
                       ((g7550
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7551
                                 (begin
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7551 10)))))
                            (letrec*
                             ((g7552
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7553
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
                                    (display "\n")
                                    (= x7553 32))))))
                             g7552)))))
                       g7550))))
                   g7548)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x7555
                        (letrec*
                         ((x7556
                           (begin
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7556)))))
                      (begin
                        (write '(funapp 645 23))
                        (display "\n")
                        (cdr x7555)))))
                   g7554)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7557
                     (letrec*
                      ((x7559
                        (begin
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7559))))
                    (g7558
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7558)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7560 #f)) g7560)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x7562
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
                        (display "\n")
                        (cdr x7562)))))
                   g7561)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7563
                     (letrec*
                      ((x7565
                        (begin
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7565))))
                    (g7564
                     (letrec*
                      ((x-cnd7566
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7566
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7564)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7568
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7569
                                 (begin
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7569
                                 (begin
                                   (write '(funapp 685 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7570
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7571
                                       (begin
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7571
                                       (letrec*
                                        ((x-cnd7572
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7572
                                          (begin
                                            (write '(funapp 697 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7573
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7574
                                             (begin
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7574
                                             (letrec*
                                              ((x-cnd7575
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7575
                                                (letrec*
                                                 ((x-cnd7576
                                                   (letrec*
                                                    ((x7578
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7577
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7578 x7577)))))
                                                 (if x-cnd7576
                                                   (letrec*
                                                    ((x7580
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7579
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
                                                      (display "\n")
                                                      (equal? x7580 x7579)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7581
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7582
                                                (begin
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7582
                                                (letrec*
                                                 ((x-cnd7583
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7583
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7584
                                                       (letrec*
                                                        ((x-cnd7585
                                                          (letrec*
                                                           ((x7586
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  743
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 745 60))
                                                             (display "\n")
                                                             (= x7586 n)))))
                                                        (if x-cnd7585
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7587
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          754
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7588
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7589
                                                                           (letrec*
                                                                            ((x7591
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   763
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7590
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   767
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 770
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7591
                                                                               x7590)))))
                                                                         (if x-cnd7589
                                                                           (letrec*
                                                                            ((x7592
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   776
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 779
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7592)))
                                                                           #f)))))
                                                                    g7588))))
                                                                g7587))))
                                                           (letrec*
                                                            ((g7593
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   785
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7593))
                                                          #f))))
                                                     g7584))
                                                   #f))
                                                #f)))))
                                         g7581)))))
                                   g7573)))))
                             g7570)))))
                       g7568))))
                   g7567)))
               (cdaaar
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7597)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7596)))))
                      (begin
                        (write '(funapp 805 23))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7601)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7599)))))
                   g7598)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7602
                     (begin
                       (write '(funapp 818 53))
                       (display "\n")
                       (eq? x y))))
                   g7602)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7605))))
                    (g7604
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7606
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7607 (if val7252 val7252 #f)))
                             g7607)))))
                       g7606))))
                   g7604)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 846 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 847 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7613
                         (begin
                           (write '(funapp 849 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7614 res))
                       g7614))))
                   g7610)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7615
                     (begin
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7615)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7621
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7621))))
                   g7618)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (begin
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x7628)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 882 23))
                        (display "\n")
                        (cdr x7626)))))
                   g7625)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (begin
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x7631)))))
                      (begin
                        (write '(funapp 891 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (begin
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
                        (display "\n")
                        (not x7640)))))
                   g7637)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 918 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g7646)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7648
                     (begin
                       (write '(funapp 926 53))
                       (display "\n")
                       (memq e l))))
                   g7648)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7652
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g7652)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x7660))))
                          (x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x7658)))))
                         (begin
                           (write '(funapp 948 26))
                           (display "\n")
                           (append x7659 x7657)))))))
                   g7654)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x7664)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x7663)))))
                      (begin
                        (write '(funapp 959 23))
                        (display "\n")
                        (car x7662)))))
                   g7661)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x7668)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 970 23))
                        (display "\n")
                        (cdr x7666)))))
                   g7665)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x7671))))
                    (g7670
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
                        (display "\n")
                        (= 1 x7672)))))
                   g7670)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7674
                        (letrec*
                         ((x7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x7676)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x7675)))))
                      (begin
                        (write '(funapp 987 23))
                        (display "\n")
                        (car x7674)))))
                   g7673)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x7680))))
                    (g7678
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x7681))))
                    (g7679
                     (letrec*
                      ((x-cnd7682
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7682
                        (letrec*
                         ((g7683
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g7683)
                        (letrec*
                         ((x-cnd7684
                           (letrec*
                            ((x7685
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x7685)))))
                         (if x-cnd7684
                           (letrec*
                            ((g7686
                              (letrec*
                               ((x7687
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x7687)))))
                            g7686)
                           (letrec*
                            ((x-cnd7688
                              (letrec*
                               ((x7689
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x7689)))))
                            (if x-cnd7688
                              (letrec*
                               ((g7690
                                 (letrec*
                                  ((x7692
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x7691
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x7692 x7691)))))
                               g7690)
                              (letrec*
                               ((x-cnd7693
                                 (letrec*
                                  ((x7694
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x7694)))))
                               (if x-cnd7693
                                 (letrec*
                                  ((g7695
                                    (letrec*
                                     ((x7698
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x7697
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7696
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x7698 x7697 x7696)))))
                                  g7695)
                                 (letrec*
                                  ((x-cnd7699
                                    (letrec*
                                     ((x7700
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x7700)))))
                                  (if x-cnd7699
                                    (letrec*
                                     ((g7701
                                       (letrec*
                                        ((x7705
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x7704
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7703
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7702
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
                                          (display "\n")
                                          (proc x7705 x7704 x7703 x7702)))))
                                     g7701)
                                    (letrec*
                                     ((x-cnd7706
                                       (letrec*
                                        ((x7707
                                          (letrec*
                                           ((x7708
                                             (begin
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x7708)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x7707)))))
                                     (if x-cnd7706
                                       (letrec*
                                        ((g7709
                                          (letrec*
                                           ((x7715
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x7714
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7713
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7712
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7710
                                             (letrec*
                                              ((x7711
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x7711)))))
                                           (begin
                                             (write '(funapp 1067 44))
                                             (display "\n")
                                             (proc
                                              x7715
                                              x7714
                                              x7713
                                              x7712
                                              x7710)))))
                                        g7709)
                                       (letrec*
                                        ((x-cnd7716
                                          (letrec*
                                           ((x7717
                                             (letrec*
                                              ((x7718
                                                (begin
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x7718)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x7717)))))
                                        (if x-cnd7716
                                          (letrec*
                                           ((g7719
                                             (letrec*
                                              ((x7727
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7726
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7725
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7724
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7722
                                                (letrec*
                                                 ((x7723
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x7723))))
                                               (x7720
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x7721)))))
                                              (begin
                                                (write '(funapp 1098 47))
                                                (display "\n")
                                                (proc
                                                 x7727
                                                 x7726
                                                 x7725
                                                 x7724
                                                 x7722
                                                 x7720)))))
                                           g7719)
                                          (letrec*
                                           ((x-cnd7728
                                             (letrec*
                                              ((x7729
                                                (letrec*
                                                 ((x7730
                                                   (begin
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x7730)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x7729)))))
                                           (if x-cnd7728
                                             (letrec*
                                              ((g7731
                                                (letrec*
                                                 ((x7741
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7740
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7739
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7738
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7736
                                                   (letrec*
                                                    ((x7737
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x7737))))
                                                  (x7734
                                                   (letrec*
                                                    ((x7735
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x7735))))
                                                  (x7732
                                                   (letrec*
                                                    ((x7733
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x7733)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
                                                   (display "\n")
                                                   (proc
                                                    x7741
                                                    x7740
                                                    x7739
                                                    x7738
                                                    x7736
                                                    x7734
                                                    x7732)))))
                                              g7731)
                                             (letrec*
                                              ((g7742
                                                (begin
                                                  (write '(funapp 1145 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7742)))))))))))))))))))
                   g7679)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (letrec*
                      ((x-cnd7746
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7746
                        #f
                        (letrec*
                         ((x-cnd7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x7748 e)))))
                         (if x-cnd7747
                           l
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (member e x7749)))))))))
                   g7744)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x7753)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1173 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (cadddr
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x7757)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7758
                     (begin
                       (write '(funapp 1186 53))
                       (display "\n")
                       (random 42))))
                   g7758)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g7760)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7763
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7763))))
                   g7762)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7767
                           (begin
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x7768)))
                           #f))))
                      (letrec*
                       ((g7769
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
                             (display "\n")
                             (null? l)))))
                       g7769))))
                   g7766)))
               (cddaar
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
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1233 23))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x-cnd7775
                        (letrec*
                         ((x7776 #\0))
                         (begin
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x7776 c)))))
                      (if x-cnd7775
                        (letrec*
                         ((x7777 #\9))
                         (begin
                           (write '(funapp 1242 48))
                           (display "\n")
                           (char<=? c x7777)))
                        #f))))
                   g7774)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7781
                        #f
                        (letrec*
                         ((x-cnd7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x7783 k)))))
                         (if x-cnd7782
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x7784)))))))))
                   g7779)))
               (not (lambda (x) (letrec* ((g7785 (if x #f #t))) g7785)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7786
                     (begin
                       (write '(funapp 1264 50))
                       (display "\n")
                       (append l1 l2))))
                   g7786)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        #f
                        (letrec*
                         ((x-cnd7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x7792 e)))))
                         (if x-cnd7791
                           l
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
                              (display "\n")
                              (memq e x7793)))))))))
                   g7788)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x7796)))))
                      (begin
                        (write '(funapp 1290 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7801
                             (letrec*
                              ((x-cnd7802
                                (begin
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7802
                                0
                                (letrec*
                                 ((x7803
                                   (letrec*
                                    ((x7804
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x7804)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x7803)))))))
                           g7801))))
                      (letrec*
                       ((g7805
                         (begin
                           (write '(funapp 1311 40))
                           (display "\n")
                           (rec l))))
                       g7805))))
                   g7799)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7811
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7811))))
                   g7808)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
                        (display "\n")
                        (not x7813)))))
                   g7812)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7815
                        (letrec*
                         ((x7816
                           (begin
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x7816)))))
                      (begin
                        (write '(funapp 1336 23))
                        (display "\n")
                        (cdr x7815)))))
                   g7814)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x7819))))
                    (g7818
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7820
                        #f
                        (letrec*
                         ((x-cnd7821
                           (letrec*
                            ((x7822
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x7822 k)))))
                         (if x-cnd7821
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7823
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
                              (display "\n")
                              (assoc k x7823)))))))))
                   g7818)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
                        (display "\n")
                        (car x7825)))))
                   g7824)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
                        (display "\n")
                        (not x7831)))))
                   g7828)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7833
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7833))))
                   g7832)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x-cnd7839
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7839
                        #t
                        (letrec*
                         ((x-cnd7840
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7840
                           (letrec*
                            ((g7841
                              (letrec*
                               ((x7843
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x7843))))
                             (g7842
                              (letrec*
                               ((x7844
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x7844)))))
                            g7842)
                           (begin
                             (write '(funapp 1394 27))
                             (display "\n")
                             '())))))))
                   g7836)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7848
                        (begin
                          (write '(funapp 1401 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7846)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7852))))
                    (g7850
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x7853))))
                    (g7851
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7854
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7854))))
                   g7851)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7856
                        (letrec*
                         ((x7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x7858)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x7857)))))
                      (begin
                        (write '(funapp 1424 23))
                        (display "\n")
                        (car x7856)))))
                   g7855)))
               (newline (lambda () (letrec* ((g7859 #f)) g7859)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x7863))))
                       (x7861
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        (/ x7862 x7861)))))
                   g7860)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
                        (display "\n")
                        (not x7867)))))
                   g7865)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x7872))))
                    (g7869
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x7873))))
                    (g7870
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x7875)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x7874))))
                    (g7871
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7876
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7878
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x7877
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
                           (display "\n")
                           (list-ref x7878 x7877)))))))
                   g7871)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x-cnd7880
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7880
                        a
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
                           (display "\n")
                           (gcd b x7881)))))))
                   g7879))))
              (letrec*
               ((g7882
                 (letrec*
                  ((lp1 2000))
                  (letrec*
                   ((g7883
                     (letrec*
                      ((a
                        (letrec*
                         ((x7884
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1482 37))
                                (display "\n")
                                (i x)))
                             (x7885
                              (letrec*
                               ((a
                                 (begin
                                   (write '(funapp 1485 36))
                                   (display "\n")
                                   (= 0 i))))
                               (letrec*
                                ((g7886
                                  (if a
                                    x
                                    (letrec*
                                     ((lp2 1000))
                                     (letrec*
                                      ((g7887
                                        (letrec*
                                         ((b
                                           (letrec*
                                            ((x7888
                                              (letrec*
                                               ((x7894
                                                 (begin
                                                   (write '(funapp 1499 56))
                                                   (display "\n")
                                                   (j f y)))
                                                (x7889
                                                 (letrec*
                                                  ((b
                                                    (begin
                                                      (write '(funapp 1502 55))
                                                      (display "\n")
                                                      (= 0 j))))
                                                  (letrec*
                                                   ((g7890
                                                     (if b
                                                       (letrec*
                                                        ((x7891
                                                          (begin
                                                            (write
                                                             '(funapp 1507 65))
                                                            (display "\n")
                                                            (- i 1))))
                                                        (begin
                                                          (write
                                                           '(funapp 1508 57))
                                                          (display "\n")
                                                          (lp1 x7891 y)))
                                                       (letrec*
                                                        (($tmp$3
                                                          (begin
                                                            (write
                                                             '(funapp 1510 66))
                                                            (display "\n")
                                                            (f y))))
                                                        (letrec*
                                                         ((g7892
                                                           (letrec*
                                                            ((x7893
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1514
                                                                   69))
                                                                (display "\n")
                                                                (- j 1))))
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1515
                                                                 61))
                                                              (display "\n")
                                                              (lp2
                                                               x7893
                                                               f
                                                               $tmp$3)))))
                                                         g7892)))))
                                                   g7890))))
                                               (begin
                                                 (write '(funapp 1521 48))
                                                 (display "\n")
                                                 (λ x7894 x7889)))))
                                            (set! lp2 x7888))))
                                         (letrec*
                                          ((g7895
                                            (letrec*
                                             ((x7896
                                               (letrec*
                                                ((x7898
                                                  (begin
                                                    (write '(funapp 1528 57))
                                                    (display "\n")
                                                    (n)))
                                                 (x7897
                                                  (begin
                                                    (write '(funapp 1528 69))
                                                    (display "\n")
                                                    (+ n i))))
                                                (begin
                                                  (write '(funapp 1529 49))
                                                  (display "\n")
                                                  (λ x7898 x7897)))))
                                             (begin
                                               (write '(funapp 1530 46))
                                               (display "\n")
                                               (lp2 10 x7896 x)))))
                                          g7895))))
                                      g7887)))))
                                g7886))))
                            (begin
                              (write '(funapp 1534 29))
                              (display "\n")
                              (λ x7899 x7885)))))
                         (set! lp1 x7884))))
                      (letrec*
                       ((g7900
                         (begin
                           (write '(funapp 1536 40))
                           (display "\n")
                           (lp1 10 0))))
                       g7900))))
                   g7883))))
               g7882))))
           g7362))))
       g7360)))
    g7359)))
