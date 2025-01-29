(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7330 #t)) g7330)))
      (meta (lambda (v) (letrec* ((g7331 v)) g7331)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7332
            (letrec*
             ((g7333
               (letrec*
                ((x-e7334 lst))
                (letrec*
                 ((v1742 x-e7334))
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
                     ((x-cnd7335
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7335
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
             g7333)))
          g7332)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7336 (lambda (v) (letrec* ((g7337 v)) g7337)))) g7336)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7338
            (letrec*
             ((x7339 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7339)))))
          g7338))))
     (letrec*
      ((g7340
        (letrec*
         ((g7341
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
             ((g7342 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7343
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7344
                       (letrec*
                        ((x-cnd7345
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7345
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7344)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7346
                       (letrec*
                        ((x-cnd7347
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7347
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7346)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7348
                       (letrec*
                        ((x-cnd7349
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7349
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7348)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7350
                       (letrec*
                        ((x-cnd7351
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7352 #t)) g7352))
                             g7269))))
                        (if x-cnd7351
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7350)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7353
                       (letrec*
                        ((x-cnd7354
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7355 #t)) g7355))
                             g7272))))
                        (if x-cnd7354
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7353)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7357
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7356)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7359
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7358)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7361
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7360)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7362
                       (lambda (k j v)
                         (letrec*
                          ((g7363
                            (letrec*
                             ((x-cnd7364
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7364
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7363))))
                     g7362)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7365
                       (lambda (k j v)
                         (letrec*
                          ((g7366
                            (letrec*
                             ((x-cnd7367
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7367
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7371
                                  (letrec*
                                   ((x7372
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7372))))
                                 (x7368
                                  (letrec*
                                   ((x7370
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7369
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7370 k j x7369)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7371 x7368)))))))
                          g7366))))
                     g7365)))
                 (any? (lambda (v) (letrec* ((g7373 #t)) g7373)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7374
                       (letrec*
                        ((x7375
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7375)))))
                     g7374)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7376
                       (letrec*
                        ((x-cnd7377
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7378
                                  (letrec*
                                   ((x7379
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7379)))))
                                g7378))
                             g7284))))
                        (if x-cnd7377
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7376)))
                 (meta (lambda (v) (letrec* ((g7380 v)) g7380)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7382
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7383
                               (letrec*
                                ((x7384
                                  (letrec*
                                   ((x7386
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7385
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7386 x7385)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7384)))))
                             g7383))))
                        g7382))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7381
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7381)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7388
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7389
                               (letrec*
                                ((x7390
                                  (letrec*
                                   ((x7392
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7391
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7392 x7391)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7390)))))
                             g7389))))
                        g7388))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7387
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7387)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7394
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7395
                               (letrec*
                                ((x7396
                                  (letrec*
                                   ((x7398
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7397
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7398 x7397)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7396)))))
                             g7395))))
                        g7394))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7393
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7393)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7400
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7401
                               (letrec*
                                ((x7402
                                  (letrec*
                                   ((x7404
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7403
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7404 x7403)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7402)))))
                             g7401))))
                        g7400))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7399
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7399)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7406
                          (lambda (g7305)
                            (letrec*
                             ((g7407
                               (letrec*
                                ((x7408
                                  (letrec*
                                   ((x7409
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7409)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7408)))))
                             g7407))))
                        g7406))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7405
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7405)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7411
                          (lambda (g7309)
                            (letrec*
                             ((g7412
                               (letrec*
                                ((x7413
                                  (letrec*
                                   ((x7414
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7414)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7413)))))
                             g7412))))
                        g7411))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7410
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7410)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7416
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7417
                               (letrec*
                                ((x7418
                                  (letrec*
                                   ((x7420
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7419
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7420 x7419)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7418)))))
                             g7417))))
                        g7416))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7415
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7415)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7422
                          (lambda (g7318)
                            (letrec*
                             ((g7423
                               (letrec*
                                ((x7424
                                  (letrec*
                                   ((x7425
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7425)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7424)))))
                             g7423))))
                        g7422))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7421
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7421)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7427
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7428
                               (letrec*
                                ((x7429
                                  (letrec*
                                   ((x7431
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7430
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7431 x7430)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7429)))))
                             g7428))))
                        g7427))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7426
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7426)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7432
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7432)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7433
                       (letrec*
                        ((x7434
                          (letrec*
                           ((x7435
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7435)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7434)))))
                     g7433)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7436
                       (letrec*
                        ((x7439
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7439))))
                      (g7437
                       (letrec*
                        ((x7440
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7440))))
                      (g7438
                       (letrec*
                        ((x-cnd7441
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7441
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7444
                             (letrec*
                              ((x7445
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7445))))
                            (x7442
                             (letrec*
                              ((x7443
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7443)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7444 x7442)))))))
                     g7438)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7446
                       (letrec*
                        ((x7447
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7447)))))
                     g7446)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7448
                       (letrec*
                        ((x7449
                          (letrec*
                           ((x7450
                             (letrec*
                              ((x7451
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7451)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7450)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7449)))))
                     g7448)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7452
                       (letrec*
                        ((x7453
                          (letrec*
                           ((x7454
                             (letrec*
                              ((x7455
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7455)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7454)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7453)))))
                     g7452)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7456
                       (letrec*
                        ((x7459
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7459))))
                      (g7457
                       (letrec*
                        ((x7460
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7460))))
                      (g7458
                       (letrec*
                        ((output-port
                          (begin
                            (write '(funapp 416 39))
                            (display "\n")
                            (open-output-file filename)))
                         (res
                          (begin
                            (write '(funapp 417 31))
                            (display "\n")
                            (proc output-port))))
                        (letrec*
                         ((g7461
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7462 res))
                         g7462))))
                     g7458)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7463
                       (letrec*
                        ((x7464
                          (letrec*
                           ((x7465
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7465)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7464)))))
                     g7463)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7466
                       (letrec*
                        ((x7467
                          (letrec*
                           ((x7468
                             (letrec*
                              ((x7469
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7469)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7468)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7467)))))
                     g7466)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7470
                       (letrec*
                        ((x7472
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7472))))
                      (g7471
                       (letrec*
                        ((x-cnd7473
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7473
                          #f
                          (letrec*
                           ((x-cnd7474
                             (letrec*
                              ((x7475
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7475 k)))))
                           (if x-cnd7474
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7476
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7476)))))))))
                     g7471)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x7478
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7478)))))
                     g7477)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7479
                       (letrec*
                        ((x7481
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7481))))
                      (g7480
                       (letrec*
                        ((x-cnd7482
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7482
                          ""
                          (letrec*
                           ((x7485
                             (letrec*
                              ((x7486
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7486))))
                            (x7483
                             (letrec*
                              ((x7484
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7484)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7485 x7483)))))))
                     g7480)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7487
                       (letrec*
                        ((x7490
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7490))))
                      (g7488
                       (letrec*
                        ((x7491
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7491))))
                      (g7489
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7492
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7492))))
                     g7489)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7493
                       (letrec*
                        ((x7494
                          (letrec*
                           ((x7495
                             (letrec*
                              ((x7496
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7496)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7495)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7494)))))
                     g7493)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7497
                       (letrec*
                        ((x7500
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7500))))
                      (g7498
                       (letrec*
                        ((x7501
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7501))))
                      (g7499
                       (letrec*
                        ((x-cnd7502
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7502
                          x
                          (letrec*
                           ((x7504
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7503
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7504 x7503)))))))
                     g7499)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7505
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7505)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7506
                       (letrec*
                        ((x-cnd7507
                          (letrec*
                           ((x7508 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7508)))))
                        (if x-cnd7507
                          (letrec*
                           ((x7509 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7509)))
                          #f))))
                     g7506)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7510
                       (letrec*
                        ((x7512
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7512))))
                      (g7511
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7513
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7514 (if val7243 val7243 #f)))
                               g7514)))))
                         g7513))))
                     g7511)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7515
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7516
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7516 9)))))
                        (letrec*
                         ((g7517
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7518
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7518 10)))))
                              (letrec*
                               ((g7519
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7520
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7520 32))))))
                               g7519)))))
                         g7517))))
                     g7515)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7521
                       (letrec*
                        ((x7522
                          (letrec*
                           ((x7523
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7523)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7522)))))
                     g7521)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7524
                       (letrec*
                        ((x7526
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7526))))
                      (g7525
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7525)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7527 #f)) g7527)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7528
                       (letrec*
                        ((x7529
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7529)))))
                     g7528)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7530
                       (letrec*
                        ((x7532
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7532))))
                      (g7531
                       (letrec*
                        ((x-cnd7533
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7533
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7531)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7534
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7535
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7537
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7536
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7537 x7536)))))
                              (letrec*
                               ((g7538
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7541
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7540
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7539
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7541 x7540 x7539)))))
                                    (letrec*
                                     ((g7542
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7550
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7549
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7546
                                               (letrec*
                                                ((x7548
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7547
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7548 x7547))))
                                              (x7543
                                               (letrec*
                                                ((x7545
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7544
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7545 x7544)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7550
                                                    x7549
                                                    x7546
                                                    x7543)))))
                                          (letrec*
                                           ((g7551
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7567
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7566
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7552
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7553
                                                      (letrec*
                                                       ((x7564
                                                         (letrec*
                                                          ((x7565
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 665
                                                                 61))
                                                              (display "\n")
                                                              (vector-length
                                                               b))))
                                                          (begin
                                                            (write
                                                             '(funapp 666 59))
                                                            (display "\n")
                                                            (= x7565 n))))
                                                        (x7554
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7555
                                                                 (letrec*
                                                                  ((x7562
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7556
                                                                    (letrec*
                                                                     ((x7559
                                                                       (letrec*
                                                                        ((x7561
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               681
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             a
                                                                             i)))
                                                                         (x7560
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               685
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             b
                                                                             i))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             688
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (equal?
                                                                           x7561
                                                                           x7560))))
                                                                      (x7557
                                                                       (letrec*
                                                                        ((x7558
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               694
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (+
                                                                             i
                                                                             1))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             697
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (loop
                                                                           x7558)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7559
                                                                            x7557)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7562
                                                                        x7556)))))
                                                               g7555))))
                                                          (letrec*
                                                           ((g7563
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7563))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7564 x7554)))))
                                                    g7553))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7567 x7566 x7552))))))
                                           g7551)))))
                                     g7542)))))
                               g7538)))))
                         g7535))))
                     g7534)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7568
                       (letrec*
                        ((x7569
                          (letrec*
                           ((x7570
                             (letrec*
                              ((x7571
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7571)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7570)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7569)))))
                     g7568)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7572
                       (letrec*
                        ((x7573
                          (letrec*
                           ((x7574
                             (letrec*
                              ((x7575
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7575)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7574)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7573)))))
                     g7572)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7576
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7576)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7577
                       (letrec*
                        ((x7579
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7579))))
                      (g7578
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7580
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7581 (if val7251 val7251 #f)))
                               g7581)))))
                         g7580))))
                     g7578)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7582
                       (letrec*
                        ((x7585
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7585))))
                      (g7583
                       (letrec*
                        ((x7586
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7586))))
                      (g7584
                       (letrec*
                        ((input-port
                          (begin
                            (write '(funapp 765 38))
                            (display "\n")
                            (open-input-file filename)))
                         (res
                          (begin
                            (write '(funapp 766 31))
                            (display "\n")
                            (proc input-port))))
                        (letrec*
                         ((g7587
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7588 res))
                         g7588))))
                     g7584)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7589
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7589)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7590
                       (letrec*
                        ((x7593
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7593))))
                      (g7591
                       (letrec*
                        ((x7594
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7594))))
                      (g7592
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7595
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7595))))
                     g7592)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7596
                       (letrec*
                        ((x7597
                          (letrec*
                           ((x7598
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7598)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7597)))))
                     g7596)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7599
                       (letrec*
                        ((x7600
                          (letrec*
                           ((x7601
                             (letrec*
                              ((x7602
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7602)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7601)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7600)))))
                     g7599)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7603
                       (letrec*
                        ((x7604
                          (letrec*
                           ((x7605
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7605)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7604)))))
                     g7603)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7607
                          (letrec*
                           ((x7608
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7608)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7607)))))
                     g7606)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x7612
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7612))))
                      (g7610
                       (letrec*
                        ((x7613
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7613))))
                      (g7611
                       (letrec*
                        ((x7614
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7614)))))
                     g7611)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
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
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7618)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7617)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7616)))))
                     g7615)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x7621
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7621))))
                      (g7620
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7620)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7622
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7622)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x7624
                          (letrec*
                           ((x7625
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7625)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7624)))))
                     g7623)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7626
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7626)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7627
                       (letrec*
                        ((x7629
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7629))))
                      (g7628
                       (letrec*
                        ((x-cnd7630
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7630
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7633
                             (letrec*
                              ((x7634
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7634))))
                            (x7631
                             (letrec*
                              ((x7632
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7632)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7633 x7631)))))))
                     g7628)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7638)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7637)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7636)))))
                     g7635)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7642)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7641)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7640)))))
                     g7639)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7643
                       (letrec*
                        ((x7645
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7645))))
                      (g7644
                       (letrec*
                        ((x7646
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7646)))))
                     g7644)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7647
                       (letrec*
                        ((x7648
                          (letrec*
                           ((x7649
                             (letrec*
                              ((x7650
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7650)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7649)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7648)))))
                     g7647)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7651
                       (letrec*
                        ((x7654
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7654))))
                      (g7652
                       (letrec*
                        ((x7655
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7655))))
                      (g7653
                       (if cnd
                         (letrec*
                          ((g7656
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7656)
                         (if cnd
                           (letrec*
                            ((g7657
                              (letrec*
                               ((x7658
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7658)))))
                            g7657)
                           (if cnd
                             (letrec*
                              ((g7659
                                (letrec*
                                 ((x7661
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7660
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7661 x7660)))))
                              g7659)
                             (if cnd
                               (letrec*
                                ((g7662
                                  (letrec*
                                   ((x7665
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7664
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7663
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7665 x7664 x7663)))))
                                g7662)
                               (if cnd
                                 (letrec*
                                  ((g7666
                                    (letrec*
                                     ((x7670
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7669
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7668
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7667
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7670 x7669 x7668 x7667)))))
                                  g7666)
                                 (if cnd
                                   (letrec*
                                    ((g7671
                                      (letrec*
                                       ((x7677
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7676
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7675
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7674
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7672
                                         (letrec*
                                          ((x7673
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7673)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7677
                                          x7676
                                          x7675
                                          x7674
                                          x7672)))))
                                    g7671)
                                   (if cnd
                                     (letrec*
                                      ((g7678
                                        (letrec*
                                         ((x7686
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7685
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7684
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7683
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7681
                                           (letrec*
                                            ((x7682
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7682))))
                                          (x7679
                                           (letrec*
                                            ((x7680
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7680)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7686
                                            x7685
                                            x7684
                                            x7683
                                            x7681
                                            x7679)))))
                                      g7678)
                                     (if cnd
                                       (letrec*
                                        ((g7687
                                          (letrec*
                                           ((x7697
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7693))))
                                            (x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7691))))
                                            (x7688
                                             (letrec*
                                              ((x7689
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7689)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7697
                                              x7696
                                              x7695
                                              x7694
                                              x7692
                                              x7690
                                              x7688)))))
                                        g7687)
                                       (letrec*
                                        ((g7698
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7698)))))))))))
                     g7653)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7699
                       (letrec*
                        ((x7701
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7701))))
                      (g7700
                       (letrec*
                        ((x-cnd7702
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7702
                          #f
                          (letrec*
                           ((x-cnd7703
                             (letrec*
                              ((x7704
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7704 e)))))
                           (if x-cnd7703
                             l
                             (letrec*
                              ((x7705
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7705)))))))))
                     g7700)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7706
                       (letrec*
                        ((x7707
                          (letrec*
                           ((x7708
                             (letrec*
                              ((x7709
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7709)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7708)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7707)))))
                     g7706)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7710
                       (letrec*
                        ((x7711
                          (letrec*
                           ((x7712
                             (letrec*
                              ((x7713
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7713)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7712)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7711)))))
                     g7710)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7714
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7714)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7715
                       (letrec*
                        ((x7717
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7717))))
                      (g7716
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7716)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7719
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7719))))
                     g7718)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7720
                       (letrec*
                        ((x7721
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7721)))))
                     g7720)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7725
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7723
                             (letrec*
                              ((x7724
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7724)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7725 x7723)))))
                        (letrec*
                         ((g7726
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7726))))
                     g7722)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7727
                       (letrec*
                        ((x7728
                          (letrec*
                           ((x7729
                             (letrec*
                              ((x7730
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7730)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7729)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7728)))))
                     g7727)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7731
                       (letrec*
                        ((x-cnd7732
                          (letrec*
                           ((x7733 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7733 c)))))
                        (if x-cnd7732
                          (letrec*
                           ((x7734 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7734)))
                          #f))))
                     g7731)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7735
                       (letrec*
                        ((x7737
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7737))))
                      (g7736
                       (letrec*
                        ((x-cnd7738
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7738
                          #f
                          (letrec*
                           ((x-cnd7739
                             (letrec*
                              ((x7740
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7740 k)))))
                           (if x-cnd7739
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7741
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7741)))))))))
                     g7736)))
                 (not (lambda (x) (letrec* ((g7742 (if x #f #t))) g7742)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7743
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7743)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7744
                       (letrec*
                        ((x7746
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7746))))
                      (g7745
                       (letrec*
                        ((x-cnd7747
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7747
                          #f
                          (letrec*
                           ((x-cnd7748
                             (letrec*
                              ((x7749
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7749 e)))))
                           (if x-cnd7748
                             l
                             (letrec*
                              ((x7750
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7750)))))))))
                     g7745)))
                 (cadaar
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
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7754)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7753)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7752)))))
                     g7751)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7755
                       (letrec*
                        ((x7757
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7757))))
                      (g7756
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7758
                               (letrec*
                                ((x-cnd7759
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7759
                                  0
                                  (letrec*
                                   ((x7760
                                     (letrec*
                                      ((x7761
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7761)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7760)))))))
                             g7758))))
                        (letrec*
                         ((g7762
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7762))))
                     g7756)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7763
                       (letrec*
                        ((x7766
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7766))))
                      (g7764
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7767))))
                      (g7765
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7768
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7768))))
                     g7765)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x7770
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7770)))))
                     g7769)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7771
                       (letrec*
                        ((x7772
                          (letrec*
                           ((x7773
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7773)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7772)))))
                     g7771)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7774
                       (letrec*
                        ((x7776
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7776))))
                      (g7775
                       (letrec*
                        ((x-cnd7777
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7777
                          #f
                          (letrec*
                           ((x-cnd7778
                             (letrec*
                              ((x7779
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7779 k)))))
                           (if x-cnd7778
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7780
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7780)))))))))
                     g7775)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7781
                       (letrec*
                        ((x7782
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7782)))))
                     g7781)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7783
                       (letrec*
                        ((x7786
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7786))))
                      (g7784
                       (letrec*
                        ((x7787
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7787))))
                      (g7785
                       (letrec*
                        ((x7788
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7788)))))
                     g7785)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7789
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7790
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7790))))
                     g7789)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((x7794
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7794))))
                      (g7792
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7795))))
                      (g7793
                       (letrec*
                        ((x-cnd7796
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7796
                          #t
                          (letrec*
                           ((x-cnd7797
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7797
                             (letrec*
                              ((g7798
                                (letrec*
                                 ((x7800
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7800))))
                               (g7799
                                (letrec*
                                 ((x7801
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7801)))))
                              g7799)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7793)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7802
                       (letrec*
                        ((x7804
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7804))))
                      (g7803
                       (letrec*
                        ((x-cnd7805
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7805
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7803)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7806
                       (letrec*
                        ((x7809
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7809))))
                      (g7807
                       (letrec*
                        ((x7810
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7810))))
                      (g7808
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7811
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7811))))
                     g7808)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7812
                       (letrec*
                        ((x7813
                          (letrec*
                           ((x7814
                             (letrec*
                              ((x7815
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7815)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7814)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7813)))))
                     g7812)))
                 (newline (lambda () (letrec* ((g7816 #f)) g7816)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7817
                       (letrec*
                        ((x7819
                          (letrec*
                           ((x7820
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7820))))
                         (x7818
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7819 x7818)))))
                     g7817)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7821
                       (letrec*
                        ((x7823
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7823))))
                      (g7822
                       (letrec*
                        ((x7824
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7824)))))
                     g7822)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7825
                       (letrec*
                        ((x7829
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7829))))
                      (g7826
                       (letrec*
                        ((x7830
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7830))))
                      (g7827
                       (letrec*
                        ((x7831
                          (letrec*
                           ((x7832
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7832)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7831))))
                      (g7828
                       (letrec*
                        ((x-cnd7833
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7833
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7835
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7834
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7835 x7834)))))))
                     g7828)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7836
                       (letrec*
                        ((x-cnd7837
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7837
                          a
                          (letrec*
                           ((x7838
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7838)))))))
                     g7836)))
                 (member
                  (lambda (x l)
                    (letrec*
                     ((g7839
                       (letrec*
                        ((x-cnd7840
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (empty? l))))
                        (if x-cnd7840
                          empty
                          (letrec*
                           ((x-cnd7841
                             (letrec*
                              ((x7842
                                (begin
                                  (write '(funapp 1359 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1359 57))
                                (display "\n")
                                (equal? x x7842)))))
                           (if x-cnd7841
                             l
                             (letrec*
                              ((x7843
                                (begin
                                  (write '(funapp 1362 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1362 57))
                                (display "\n")
                                (member x x7843)))))))))
                     g7839))))
                (letrec*
                 ((g7844
                   (begin
                     (write '(funapp 1366 20))
                     (display "\n")
                     ((lambda (j7327 k7328 f7329)
                        (letrec*
                         ((g7845
                           (lambda ()
                             (letrec*
                              ((g7846
                                (letrec*
                                 ((x7848
                                   (letrec*
                                    ((x7850
                                      (begin
                                        (write '(funapp 1375 43))
                                        (display "\n")
                                        (listof any/c)))
                                     (x7849
                                      (begin
                                        (write '(funapp 1376 43))
                                        (display "\n")
                                        (listof any/c))))
                                    (begin
                                      (write '(funapp 1377 35))
                                      (display "\n")
                                      (any/c x7850 x7849))))
                                  (x7847
                                   (begin
                                     (write '(funapp 1378 40))
                                     (display "\n")
                                     (f7329))))
                                 (begin
                                   (write '(funapp 1379 32))
                                   (display "\n")
                                   (x7848 j7327 k7328 x7847)))))
                              g7846))))
                         g7845))
                      (begin (write '(funapp 1382 20)) (display "\n") 'module)
                      (begin
                        (write '(funapp 1383 20))
                        (display "\n")
                        'importer)
                      member))))
                 g7844))))
             g7343))))
         g7341)))
      g7340))))
