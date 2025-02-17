(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7354
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7354
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
           ((x7358 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7358)))))
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
           ((g7361 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7362
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7363
                     (lambda (k j lst)
                       (letrec*
                        ((g7364
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7365
                                  (begin
                                    (write '(funapp 66 47))
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
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7367
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
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
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7369
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
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
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7371
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
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
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7374 #t)) g7374)) g7270))))
                      (if x-cnd7373
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
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
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7377 #t)) g7377)) g7273))))
                      (if x-cnd7376
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
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
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7379
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
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
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7381
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7383
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
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
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7385
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
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
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7388
                             (begin
                               (write '(funapp 154 42))
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
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7391
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7396))))
                               (x7392
                                (letrec*
                                 ((x7394
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7393
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7394 k j x7393)))))
                              (begin
                                (write '(funapp 177 31))
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
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
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
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7402
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7403)))))
                              g7402))
                           g7288))))
                      (if x-cnd7401
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
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
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7290
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7405
                    (begin
                      (write '(funapp 207 21))
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
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7291)))
                                      (x7410
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7293 k7294 g7292))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7295 x7411 x7410)))))
                                  (begin
                                    (write '(funapp 219 33))
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
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7406))))))
                  g7405)))
               (-
                (letrec*
                 ((xj7296
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7297
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7412
                    (begin
                      (write '(funapp 231 21))
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
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7298)))
                                      (x7417
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7300 k7301 g7299))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7302 x7418 x7417)))))
                                  (begin
                                    (write '(funapp 243 33))
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
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7413))))))
                  g7412)))
               (*
                (letrec*
                 ((xj7303
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7304
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7419
                    (begin
                      (write '(funapp 255 21))
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
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7305)))
                                      (x7424
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7307 k7308 g7306))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7309 x7425 x7424)))))
                                  (begin
                                    (write '(funapp 267 33))
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
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7420))))))
                  g7419)))
               (/
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7426
                    (begin
                      (write '(funapp 279 21))
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
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7431
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7316 x7432 x7431)))))
                                  (begin
                                    (write '(funapp 291 33))
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
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7427))))))
                  g7426)))
               (car
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7433
                    (begin
                      (write '(funapp 303 21))
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
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7322 x7438)))))
                                  (begin
                                    (write '(funapp 314 33))
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
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7434))))))
                  g7433)))
               (cdr
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7439
                    (begin
                      (write '(funapp 326 21))
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
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7328 x7444)))))
                                  (begin
                                    (write '(funapp 337 33))
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
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7440))))))
                  g7439)))
               (cons
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7445
                    (begin
                      (write '(funapp 349 21))
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
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7331)))
                                      (x7450
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7335 x7451 x7450)))))
                                  (begin
                                    (write '(funapp 361 33))
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
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7446))))))
                  g7445)))
               (vector-ref
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7452
                    (begin
                      (write '(funapp 374 21))
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
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7341 x7457)))))
                                  (begin
                                    (write '(funapp 385 33))
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
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7453))))))
                  g7452)))
               (vector-set!
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7458
                    (begin
                      (write '(funapp 398 21))
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
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7346 k7347 g7344)))
                                      (x7463
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7348 x7464 x7463)))))
                                  (begin
                                    (write '(funapp 410 33))
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
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7459))))))
                  g7458)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7465
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
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
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7468)))))
                      (begin
                        (write '(funapp 429 23))
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
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7472))))
                    (g7470
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7473))))
                    (g7471
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7474
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7477
                           (letrec*
                            ((x7478
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7478))))
                          (x7475
                           (letrec*
                            ((x7476
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7476)))))
                         (begin
                           (write '(funapp 445 26))
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
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
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
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7484)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7483)))))
                      (begin
                        (write '(funapp 461 23))
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
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7488)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7487)))))
                      (begin
                        (write '(funapp 472 23))
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
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7492))))
                    (g7490
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7493))))
                    (g7491
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
                       ((g7494
                         (begin
                           (write '(funapp 486 32))
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
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7498)))))
                      (begin
                        (write '(funapp 495 23))
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
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7502)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7501)))))
                      (begin
                        (write '(funapp 506 23))
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
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7505))))
                    (g7504
                     (letrec*
                      ((x-cnd7506
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7506
                        #f
                        (letrec*
                         ((x-cnd7507
                           (letrec*
                            ((x7508
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7508 k)))))
                         (if x-cnd7507
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
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
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
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
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7514))))
                    (g7513
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7515
                        ""
                        (letrec*
                         ((x7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7519))))
                          (x7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7517)))))
                         (begin
                           (write '(funapp 543 26))
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
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7523))))
                    (g7521
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7524))))
                    (g7522
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7525
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
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
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7529)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7528)))))
                      (begin
                        (write '(funapp 566 23))
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
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7533))))
                    (g7531
                     (letrec*
                      ((x7534
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7534))))
                    (g7532
                     (letrec*
                      ((x-cnd7535
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7535
                        x
                        (letrec*
                         ((x7537
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7536
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7537 x7536)))))))
                   g7532)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7538
                     (begin (write '(funapp 582 49)) (display "\n") '())))
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
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7541)))))
                      (if x-cnd7540
                        (letrec*
                         ((x7542 #\z))
                         (begin
                           (write '(funapp 591 48))
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
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7545))))
                    (g7544
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7546
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
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
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
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
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7551 10)))))
                            (letrec*
                             ((g7552
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7553
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
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
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7556)))))
                      (begin
                        (write '(funapp 644 23))
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
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7559))))
                    (g7558
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7558)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7560 #f)) g7560)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7561
                     (letrec*
                      ((x7562
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
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
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7565))))
                    (g7564
                     (letrec*
                      ((x-cnd7566
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7566
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7564)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
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
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7569
                                 (begin
                                   (write '(funapp 684 46))
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
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7571
                                       (letrec*
                                        ((x-cnd7572
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7572
                                          (begin
                                            (write '(funapp 696 55))
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
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7574
                                             (letrec*
                                              ((x-cnd7575
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7575
                                                (letrec*
                                                 ((x-cnd7576
                                                   (letrec*
                                                    ((x7578
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7577
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7578 x7577)))))
                                                 (if x-cnd7576
                                                   (letrec*
                                                    ((x7580
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7579
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
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
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7582
                                                (letrec*
                                                 ((x-cnd7583
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7583
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
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
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
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
                                                                          753
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
                                                                                   762
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
                                                                               x7591
                                                                               x7590)))))
                                                                         (if x-cnd7589
                                                                           (letrec*
                                                                            ((x7592
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
                                                                               x7592)))
                                                                           #f)))))
                                                                    g7588))))
                                                                g7587))))
                                                           (letrec*
                                                            ((g7593
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
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
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7597)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7596)))))
                      (begin
                        (write '(funapp 804 23))
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
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7601)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7599)))))
                   g7598)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7602
                     (begin
                       (write '(funapp 817 53))
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
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7605))))
                    (g7604
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7606
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
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
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7612))))
                    (g7610
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
                       ((g7613
                         (begin
                           (write '(funapp 848 32))
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
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7615)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7621
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
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
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 870 23))
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
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x7628)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 881 23))
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
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x7631)))))
                      (begin
                        (write '(funapp 890 23))
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
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 898 23))
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
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
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
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 917 23))
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
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g7646)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7648
                     (begin
                       (write '(funapp 925 53))
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
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7652
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g7652)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x7660))))
                          (x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x7658)))))
                         (begin
                           (write '(funapp 947 26))
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x7664)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x7663)))))
                      (begin
                        (write '(funapp 958 23))
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
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x7668)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 969 23))
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
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x7671))))
                    (g7670
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
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
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x7676)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x7675)))))
                      (begin
                        (write '(funapp 986 23))
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
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x7680))))
                    (g7678
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x7681))))
                    (g7679
                     (letrec*
                      ((x-cnd7682
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7682
                        (letrec*
                         ((g7683
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g7683)
                        (letrec*
                         ((x-cnd7684
                           (letrec*
                            ((x7685
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x7685)))))
                         (if x-cnd7684
                           (letrec*
                            ((g7686
                              (letrec*
                               ((x7687
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x7687)))))
                            g7686)
                           (letrec*
                            ((x-cnd7688
                              (letrec*
                               ((x7689
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x7689)))))
                            (if x-cnd7688
                              (letrec*
                               ((g7690
                                 (letrec*
                                  ((x7692
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x7691
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x7692 x7691)))))
                               g7690)
                              (letrec*
                               ((x-cnd7693
                                 (letrec*
                                  ((x7694
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x7694)))))
                               (if x-cnd7693
                                 (letrec*
                                  ((g7695
                                    (letrec*
                                     ((x7698
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x7697
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7696
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x7698 x7697 x7696)))))
                                  g7695)
                                 (letrec*
                                  ((x-cnd7699
                                    (letrec*
                                     ((x7700
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x7700)))))
                                  (if x-cnd7699
                                    (letrec*
                                     ((g7701
                                       (letrec*
                                        ((x7705
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x7704
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7703
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7702
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
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
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x7708)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x7707)))))
                                     (if x-cnd7706
                                       (letrec*
                                        ((g7709
                                          (letrec*
                                           ((x7715
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x7714
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7713
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7712
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7710
                                             (letrec*
                                              ((x7711
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x7711)))))
                                           (begin
                                             (write '(funapp 1066 44))
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
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x7718)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x7717)))))
                                        (if x-cnd7716
                                          (letrec*
                                           ((g7719
                                             (letrec*
                                              ((x7727
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7726
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7725
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7724
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7722
                                                (letrec*
                                                 ((x7723
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x7723))))
                                               (x7720
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x7721)))))
                                              (begin
                                                (write '(funapp 1097 47))
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
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x7730)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x7729)))))
                                           (if x-cnd7728
                                             (letrec*
                                              ((g7731
                                                (letrec*
                                                 ((x7741
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7740
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7739
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7738
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7736
                                                   (letrec*
                                                    ((x7737
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x7737))))
                                                  (x7734
                                                   (letrec*
                                                    ((x7735
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x7735))))
                                                  (x7732
                                                   (letrec*
                                                    ((x7733
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x7733)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
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
                                                  (write '(funapp 1144 49))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (letrec*
                      ((x-cnd7746
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7746
                        #f
                        (letrec*
                         ((x-cnd7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x7748 e)))))
                         (if x-cnd7747
                           l
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7753)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1172 23))
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
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x7757)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7758
                     (begin
                       (write '(funapp 1185 53))
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
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g7760)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7763
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
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
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x7768)))
                           #f))))
                      (letrec*
                       ((g7769
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1232 23))
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
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x7776 c)))))
                      (if x-cnd7775
                        (letrec*
                         ((x7777 #\9))
                         (begin
                           (write '(funapp 1241 48))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7781
                        #f
                        (letrec*
                         ((x-cnd7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x7783 k)))))
                         (if x-cnd7782
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x7784)))))))))
                   g7779)))
               (not (lambda (x) (letrec* ((g7785 (if x #f #t))) g7785)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7786
                     (begin
                       (write '(funapp 1263 50))
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
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        #f
                        (letrec*
                         ((x-cnd7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x7792 e)))))
                         (if x-cnd7791
                           l
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
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
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x7796)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
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
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7802
                                0
                                (letrec*
                                 ((x7803
                                   (letrec*
                                    ((x7804
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x7804)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x7803)))))))
                           g7801))))
                      (letrec*
                       ((g7805
                         (begin
                           (write '(funapp 1310 40))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7811
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
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
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x7816)))))
                      (begin
                        (write '(funapp 1335 23))
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
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x7819))))
                    (g7818
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7820
                        #f
                        (letrec*
                         ((x-cnd7821
                           (letrec*
                            ((x7822
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x7822 k)))))
                         (if x-cnd7821
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7823
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
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
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
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
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
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
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7833
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
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
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x-cnd7839
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7839
                        #t
                        (letrec*
                         ((x-cnd7840
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7840
                           (letrec*
                            ((g7841
                              (letrec*
                               ((x7843
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x7843))))
                             (g7842
                              (letrec*
                               ((x7844
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x7844)))))
                            g7842)
                           (begin
                             (write '(funapp 1393 27))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7848
                        (begin
                          (write '(funapp 1400 67))
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
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x7852))))
                    (g7850
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x7853))))
                    (g7851
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7854
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x7858)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x7857)))))
                      (begin
                        (write '(funapp 1423 23))
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
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x7863))))
                       (x7861
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
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
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
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
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x7872))))
                    (g7869
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x7873))))
                    (g7870
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x7875)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x7874))))
                    (g7871
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7876
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7878
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x7877
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
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
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7880
                        a
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x7881)))))))
                   g7879)))
               (id
                (letrec*
                 ((x7882 (begin (write '(funapp 1470 37)) (display "\n") (x))))
                 (begin (write '(funapp 1470 43)) (display "\n") (λ x7882 x))))
               (blur
                (letrec*
                 ((x7883 (begin (write '(funapp 1471 39)) (display "\n") (y))))
                 (begin (write '(funapp 1471 45)) (display "\n") (λ x7883 y))))
               (lp
                (letrec*
                 ((x7895 (begin (write '(funapp 1474 26)) (display "\n") (a)))
                  (x7884
                   (letrec*
                    ((x7894
                      (begin (write '(funapp 1477 29)) (display "\n") (n)))
                     (x7885
                      (letrec*
                       ((x-cnd7886
                         (begin
                           (write '(funapp 1480 36))
                           (display "\n")
                           (zero? n))))
                       (if x-cnd7886
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (id a))
                         (letrec*
                          ((r
                            (letrec*
                             ((x7887
                               (begin
                                 (write '(funapp 1484 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1484 60))
                               (display "\n")
                               (x7887 #t))))
                           (s
                            (letrec*
                             ((x7888
                               (begin
                                 (write '(funapp 1485 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1485 60))
                               (display "\n")
                               (x7888 #f)))))
                          (letrec*
                           ((g7889
                             (letrec*
                              ((x7890
                                (letrec*
                                 ((x7892
                                   (letrec*
                                    ((x7893
                                      (begin
                                        (write '(funapp 1492 53))
                                        (display "\n")
                                        (blur lp))))
                                    (begin
                                      (write '(funapp 1492 65))
                                      (display "\n")
                                      (x7893 s))))
                                  (x7891
                                   (begin
                                     (write '(funapp 1493 42))
                                     (display "\n")
                                     (sub1 n))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (x7892 x7891)))))
                              (begin
                                (write '(funapp 1495 31))
                                (display "\n")
                                (not x7890)))))
                           g7889))))))
                    (begin
                      (write '(funapp 1497 21))
                      (display "\n")
                      (λ x7894 x7885)))))
                 (begin
                   (write '(funapp 1498 18))
                   (display "\n")
                   (λ x7895 x7884)))))
              (letrec*
               ((g7896
                 (letrec*
                  ((x7897
                    (begin (write '(funapp 1500 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1500 51)) (display "\n") (x7897 2)))))
               g7896))))
           g7362))))
       g7360)))
    g7359)))
