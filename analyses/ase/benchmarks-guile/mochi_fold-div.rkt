(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7336 #t)) g7336)))
      (meta (lambda (v) (letrec* ((g7337 v)) g7337)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7338
            (letrec*
             ((g7339
               (letrec*
                ((x-e7340 lst))
                (letrec*
                 ((v1742 x-e7340))
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
                     ((x-cnd7341
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7341
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
             g7339)))
          g7338)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7342 (lambda (v) (letrec* ((g7343 v)) g7343)))) g7342)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7344
            (letrec*
             ((x7345 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7345)))))
          g7344))))
     (letrec*
      ((g7346
        (letrec*
         ((g7347
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
             ((g7348 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7349
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7350
                       (letrec*
                        ((x-cnd7351
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7351
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7350)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7352
                       (letrec*
                        ((x-cnd7353
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7353
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7352)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7355
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7354)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7358 #t)) g7358))
                             g7269))))
                        (if x-cnd7357
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7356)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7359
                       (letrec*
                        ((x-cnd7360
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7361 #t)) g7361))
                             g7272))))
                        (if x-cnd7360
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7359)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7362
                       (letrec*
                        ((x-cnd7363
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7363
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7362)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7364
                       (letrec*
                        ((x-cnd7365
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7365
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7364)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7366
                       (letrec*
                        ((x-cnd7367
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7367
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7366)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7368
                       (lambda (k j v)
                         (letrec*
                          ((g7369
                            (letrec*
                             ((x-cnd7370
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7370
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7369))))
                     g7368)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7371
                       (lambda (k j v)
                         (letrec*
                          ((g7372
                            (letrec*
                             ((x-cnd7373
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7373
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7377
                                  (letrec*
                                   ((x7378
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7378))))
                                 (x7374
                                  (letrec*
                                   ((x7376
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7375
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7376 k j x7375)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7377 x7374)))))))
                          g7372))))
                     g7371)))
                 (any? (lambda (v) (letrec* ((g7379 #t)) g7379)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7380
                       (letrec*
                        ((x7381
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7381)))))
                     g7380)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7382
                       (letrec*
                        ((x-cnd7383
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7384
                                  (letrec*
                                   ((x7385
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7385)))))
                                g7384))
                             g7284))))
                        (if x-cnd7383
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7382)))
                 (meta (lambda (v) (letrec* ((g7386 v)) g7386)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7388
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7389
                               (letrec*
                                ((x7390
                                  (letrec*
                                   ((x7392
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7391
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7392 x7391)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7390)))))
                             g7389))))
                        g7388))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7387
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7387)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7394
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7395
                               (letrec*
                                ((x7396
                                  (letrec*
                                   ((x7398
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7397
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7398 x7397)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7396)))))
                             g7395))))
                        g7394))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7393
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7393)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7400
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7401
                               (letrec*
                                ((x7402
                                  (letrec*
                                   ((x7404
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7403
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7404 x7403)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7402)))))
                             g7401))))
                        g7400))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7399
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7399)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7406
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7407
                               (letrec*
                                ((x7408
                                  (letrec*
                                   ((x7410
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7409
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7410 x7409)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7408)))))
                             g7407))))
                        g7406))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7405
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7405)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7412
                          (lambda (g7305)
                            (letrec*
                             ((g7413
                               (letrec*
                                ((x7414
                                  (letrec*
                                   ((x7415
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7415)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7414)))))
                             g7413))))
                        g7412))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7411
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7411)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7417
                          (lambda (g7309)
                            (letrec*
                             ((g7418
                               (letrec*
                                ((x7419
                                  (letrec*
                                   ((x7420
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7420)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7419)))))
                             g7418))))
                        g7417))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7416
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7416)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7422
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7423
                               (letrec*
                                ((x7424
                                  (letrec*
                                   ((x7426
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7425
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7426 x7425)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7424)))))
                             g7423))))
                        g7422))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7421
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7421)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7428
                          (lambda (g7318)
                            (letrec*
                             ((g7429
                               (letrec*
                                ((x7430
                                  (letrec*
                                   ((x7431
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7431)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7430)))))
                             g7429))))
                        g7428))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7427
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7427)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7433
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7434
                               (letrec*
                                ((x7435
                                  (letrec*
                                   ((x7437
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7436
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7437 x7436)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7435)))))
                             g7434))))
                        g7433))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7432
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7432)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7438
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7438)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7439
                       (letrec*
                        ((x7440
                          (letrec*
                           ((x7441
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7441)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7440)))))
                     g7439)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7442
                       (letrec*
                        ((x7445
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7445))))
                      (g7443
                       (letrec*
                        ((x7446
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7446))))
                      (g7444
                       (letrec*
                        ((x-cnd7447
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7447
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7450
                             (letrec*
                              ((x7451
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7451))))
                            (x7448
                             (letrec*
                              ((x7449
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7449)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7450 x7448)))))))
                     g7444)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7452
                       (letrec*
                        ((x7453
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7453)))))
                     g7452)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7454
                       (letrec*
                        ((x7455
                          (letrec*
                           ((x7456
                             (letrec*
                              ((x7457
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7457)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7456)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7455)))))
                     g7454)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7458
                       (letrec*
                        ((x7459
                          (letrec*
                           ((x7460
                             (letrec*
                              ((x7461
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7461)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7460)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7459)))))
                     g7458)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7462
                       (letrec*
                        ((x7465
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7465))))
                      (g7463
                       (letrec*
                        ((x7466
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7466))))
                      (g7464
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
                         ((g7467
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7468 res))
                         g7468))))
                     g7464)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7469
                       (letrec*
                        ((x7470
                          (letrec*
                           ((x7471
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7471)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7470)))))
                     g7469)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7472
                       (letrec*
                        ((x7473
                          (letrec*
                           ((x7474
                             (letrec*
                              ((x7475
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7475)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7474)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7473)))))
                     g7472)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7476
                       (letrec*
                        ((x7478
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7478))))
                      (g7477
                       (letrec*
                        ((x-cnd7479
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7479
                          #f
                          (letrec*
                           ((x-cnd7480
                             (letrec*
                              ((x7481
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7481 k)))))
                           (if x-cnd7480
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7482
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7482)))))))))
                     g7477)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7483
                       (letrec*
                        ((x7484
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7484)))))
                     g7483)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7485
                       (letrec*
                        ((x7487
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7487))))
                      (g7486
                       (letrec*
                        ((x-cnd7488
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7488
                          ""
                          (letrec*
                           ((x7491
                             (letrec*
                              ((x7492
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7492))))
                            (x7489
                             (letrec*
                              ((x7490
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7490)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7491 x7489)))))))
                     g7486)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7493
                       (letrec*
                        ((x7496
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7496))))
                      (g7494
                       (letrec*
                        ((x7497
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7497))))
                      (g7495
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7498
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7498))))
                     g7495)))
                 (cdddar
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
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7502)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7501)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7500)))))
                     g7499)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7503
                       (letrec*
                        ((x7506
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7506))))
                      (g7504
                       (letrec*
                        ((x7507
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7507))))
                      (g7505
                       (letrec*
                        ((x-cnd7508
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7508
                          x
                          (letrec*
                           ((x7510
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7509
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7510 x7509)))))))
                     g7505)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7511
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7511)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7512
                       (letrec*
                        ((x-cnd7513
                          (letrec*
                           ((x7514 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7514)))))
                        (if x-cnd7513
                          (letrec*
                           ((x7515 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7515)))
                          #f))))
                     g7512)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7516
                       (letrec*
                        ((x7518
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7518))))
                      (g7517
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7519
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7520 (if val7243 val7243 #f)))
                               g7520)))))
                         g7519))))
                     g7517)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7521
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7522
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7522 9)))))
                        (letrec*
                         ((g7523
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7524
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7524 10)))))
                              (letrec*
                               ((g7525
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7526
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7526 32))))))
                               g7525)))))
                         g7523))))
                     g7521)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7527
                       (letrec*
                        ((x7528
                          (letrec*
                           ((x7529
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7529)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7528)))))
                     g7527)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7530
                       (letrec*
                        ((x7532
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7532))))
                      (g7531
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7531)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7533 #f)) g7533)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7534
                       (letrec*
                        ((x7535
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7535)))))
                     g7534)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7536
                       (letrec*
                        ((x7538
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7538))))
                      (g7537
                       (letrec*
                        ((x-cnd7539
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7539
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7537)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7540
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7541
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7543
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7542
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7543 x7542)))))
                              (letrec*
                               ((g7544
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7547
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7546
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7545
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7547 x7546 x7545)))))
                                    (letrec*
                                     ((g7548
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7556
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7555
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7552
                                               (letrec*
                                                ((x7554
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7553
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7554 x7553))))
                                              (x7549
                                               (letrec*
                                                ((x7551
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7550
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7551 x7550)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7556
                                                    x7555
                                                    x7552
                                                    x7549)))))
                                          (letrec*
                                           ((g7557
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7573
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7572
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7558
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7559
                                                      (letrec*
                                                       ((x7570
                                                         (letrec*
                                                          ((x7571
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
                                                            (= x7571 n))))
                                                        (x7560
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7561
                                                                 (letrec*
                                                                  ((x7568
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7562
                                                                    (letrec*
                                                                     ((x7565
                                                                       (letrec*
                                                                        ((x7567
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
                                                                         (x7566
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
                                                                           x7567
                                                                           x7566))))
                                                                      (x7563
                                                                       (letrec*
                                                                        ((x7564
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
                                                                           x7564)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7565
                                                                            x7563)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7568
                                                                        x7562)))))
                                                               g7561))))
                                                          (letrec*
                                                           ((g7569
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7569))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7570 x7560)))))
                                                    g7559))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7573 x7572 x7558))))))
                                           g7557)))))
                                     g7548)))))
                               g7544)))))
                         g7541))))
                     g7540)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7577)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7576)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7575)))))
                     g7574)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7578
                       (letrec*
                        ((x7579
                          (letrec*
                           ((x7580
                             (letrec*
                              ((x7581
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7581)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7580)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7579)))))
                     g7578)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7582
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7582)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7583
                       (letrec*
                        ((x7585
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7585))))
                      (g7584
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7586
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7587 (if val7251 val7251 #f)))
                               g7587)))))
                         g7586))))
                     g7584)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7588
                       (letrec*
                        ((x7591
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7591))))
                      (g7589
                       (letrec*
                        ((x7592
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7592))))
                      (g7590
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
                         ((g7593
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7594 res))
                         g7594))))
                     g7590)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7595
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7595)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7596
                       (letrec*
                        ((x7599
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7599))))
                      (g7597
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7600))))
                      (g7598
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7601
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7601))))
                     g7598)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7602
                       (letrec*
                        ((x7603
                          (letrec*
                           ((x7604
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7604)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7603)))))
                     g7602)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7605
                       (letrec*
                        ((x7606
                          (letrec*
                           ((x7607
                             (letrec*
                              ((x7608
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7608)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7607)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7606)))))
                     g7605)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x7610
                          (letrec*
                           ((x7611
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7611)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7610)))))
                     g7609)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7612
                       (letrec*
                        ((x7613
                          (letrec*
                           ((x7614
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7614)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7613)))))
                     g7612)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7615
                       (letrec*
                        ((x7618
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7618))))
                      (g7616
                       (letrec*
                        ((x7619
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7619))))
                      (g7617
                       (letrec*
                        ((x7620
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7620)))))
                     g7617)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
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
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7624)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7623)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7622)))))
                     g7621)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7625
                       (letrec*
                        ((x7627
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7627))))
                      (g7626
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7626)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7628
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7628)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7629
                       (letrec*
                        ((x7630
                          (letrec*
                           ((x7631
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7631)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7630)))))
                     g7629)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7632
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7632)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7633
                       (letrec*
                        ((x7635
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7635))))
                      (g7634
                       (letrec*
                        ((x-cnd7636
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7636
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7639
                             (letrec*
                              ((x7640
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7640))))
                            (x7637
                             (letrec*
                              ((x7638
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7638)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7639 x7637)))))))
                     g7634)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7644)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7643)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7642)))))
                     g7641)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7645
                       (letrec*
                        ((x7646
                          (letrec*
                           ((x7647
                             (letrec*
                              ((x7648
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7648)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7647)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7646)))))
                     g7645)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7649
                       (letrec*
                        ((x7651
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7651))))
                      (g7650
                       (letrec*
                        ((x7652
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7652)))))
                     g7650)))
                 (caadar
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
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7656)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7655)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7654)))))
                     g7653)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7657
                       (letrec*
                        ((x7660
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7660))))
                      (g7658
                       (letrec*
                        ((x7661
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7661))))
                      (g7659
                       (if cnd
                         (letrec*
                          ((g7662
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7662)
                         (if cnd
                           (letrec*
                            ((g7663
                              (letrec*
                               ((x7664
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7664)))))
                            g7663)
                           (if cnd
                             (letrec*
                              ((g7665
                                (letrec*
                                 ((x7667
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7666
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7667 x7666)))))
                              g7665)
                             (if cnd
                               (letrec*
                                ((g7668
                                  (letrec*
                                   ((x7671
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7670
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7669
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7671 x7670 x7669)))))
                                g7668)
                               (if cnd
                                 (letrec*
                                  ((g7672
                                    (letrec*
                                     ((x7676
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7676 x7675 x7674 x7673)))))
                                  g7672)
                                 (if cnd
                                   (letrec*
                                    ((g7677
                                      (letrec*
                                       ((x7683
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7682
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7681
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7680
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7678
                                         (letrec*
                                          ((x7679
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7679)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7683
                                          x7682
                                          x7681
                                          x7680
                                          x7678)))))
                                    g7677)
                                   (if cnd
                                     (letrec*
                                      ((g7684
                                        (letrec*
                                         ((x7692
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7691
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7690
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7689
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7687
                                           (letrec*
                                            ((x7688
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7688))))
                                          (x7685
                                           (letrec*
                                            ((x7686
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7686)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7692
                                            x7691
                                            x7690
                                            x7689
                                            x7687
                                            x7685)))))
                                      g7684)
                                     (if cnd
                                       (letrec*
                                        ((g7693
                                          (letrec*
                                           ((x7703
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7699))))
                                            (x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7697))))
                                            (x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7695)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7703
                                              x7702
                                              x7701
                                              x7700
                                              x7698
                                              x7696
                                              x7694)))))
                                        g7693)
                                       (letrec*
                                        ((g7704
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7704)))))))))))
                     g7659)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7705
                       (letrec*
                        ((x7707
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7707))))
                      (g7706
                       (letrec*
                        ((x-cnd7708
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7708
                          #f
                          (letrec*
                           ((x-cnd7709
                             (letrec*
                              ((x7710
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7710 e)))))
                           (if x-cnd7709
                             l
                             (letrec*
                              ((x7711
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7711)))))))))
                     g7706)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7712
                       (letrec*
                        ((x7713
                          (letrec*
                           ((x7714
                             (letrec*
                              ((x7715
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7715)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7714)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7713)))))
                     g7712)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7716
                       (letrec*
                        ((x7717
                          (letrec*
                           ((x7718
                             (letrec*
                              ((x7719
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7719)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7718)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7717)))))
                     g7716)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7720
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7720)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7721
                       (letrec*
                        ((x7723
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7723))))
                      (g7722
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7722)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7724
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7725
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7725))))
                     g7724)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7726
                       (letrec*
                        ((x7727
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7727)))))
                     g7726)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7731
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7729
                             (letrec*
                              ((x7730
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7730)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7731 x7729)))))
                        (letrec*
                         ((g7732
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7732))))
                     g7728)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((x7734
                          (letrec*
                           ((x7735
                             (letrec*
                              ((x7736
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7736)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7735)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7734)))))
                     g7733)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((x-cnd7738
                          (letrec*
                           ((x7739 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7739 c)))))
                        (if x-cnd7738
                          (letrec*
                           ((x7740 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7740)))
                          #f))))
                     g7737)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7741
                       (letrec*
                        ((x7743
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7743))))
                      (g7742
                       (letrec*
                        ((x-cnd7744
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7744
                          #f
                          (letrec*
                           ((x-cnd7745
                             (letrec*
                              ((x7746
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7746 k)))))
                           (if x-cnd7745
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7747)))))))))
                     g7742)))
                 (not (lambda (x) (letrec* ((g7748 (if x #f #t))) g7748)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7749
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7749)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7750
                       (letrec*
                        ((x7752
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7752))))
                      (g7751
                       (letrec*
                        ((x-cnd7753
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7753
                          #f
                          (letrec*
                           ((x-cnd7754
                             (letrec*
                              ((x7755
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7755 e)))))
                           (if x-cnd7754
                             l
                             (letrec*
                              ((x7756
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7756)))))))))
                     g7751)))
                 (cadaar
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
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7760)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7759)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7758)))))
                     g7757)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7761
                       (letrec*
                        ((x7763
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7763))))
                      (g7762
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7764
                               (letrec*
                                ((x-cnd7765
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7765
                                  0
                                  (letrec*
                                   ((x7766
                                     (letrec*
                                      ((x7767
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7767)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7766)))))))
                             g7764))))
                        (letrec*
                         ((g7768
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7768))))
                     g7762)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x7772
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7772))))
                      (g7770
                       (letrec*
                        ((x7773
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7773))))
                      (g7771
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7774
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7774))))
                     g7771)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7775
                       (letrec*
                        ((x7776
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7776)))))
                     g7775)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7777
                       (letrec*
                        ((x7778
                          (letrec*
                           ((x7779
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7779)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7778)))))
                     g7777)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7780
                       (letrec*
                        ((x7782
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7782))))
                      (g7781
                       (letrec*
                        ((x-cnd7783
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7783
                          #f
                          (letrec*
                           ((x-cnd7784
                             (letrec*
                              ((x7785
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7785 k)))))
                           (if x-cnd7784
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7786
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7786)))))))))
                     g7781)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7787
                       (letrec*
                        ((x7788
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7788)))))
                     g7787)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7789
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7792))))
                      (g7790
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7793))))
                      (g7791
                       (letrec*
                        ((x7794
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7794)))))
                     g7791)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7795
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7796
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7796))))
                     g7795)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7797
                       (letrec*
                        ((x7800
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7800))))
                      (g7798
                       (letrec*
                        ((x7801
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7801))))
                      (g7799
                       (letrec*
                        ((x-cnd7802
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7802
                          #t
                          (letrec*
                           ((x-cnd7803
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7803
                             (letrec*
                              ((g7804
                                (letrec*
                                 ((x7806
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7806))))
                               (g7805
                                (letrec*
                                 ((x7807
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7807)))))
                              g7805)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7799)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7808
                       (letrec*
                        ((x7810
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7810))))
                      (g7809
                       (letrec*
                        ((x-cnd7811
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7811
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7809)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7812
                       (letrec*
                        ((x7815
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7815))))
                      (g7813
                       (letrec*
                        ((x7816
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7816))))
                      (g7814
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7817
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7817))))
                     g7814)))
                 (caddar
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
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7821)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7820)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7819)))))
                     g7818)))
                 (newline (lambda () (letrec* ((g7822 #f)) g7822)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7823
                       (letrec*
                        ((x7825
                          (letrec*
                           ((x7826
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7826))))
                         (x7824
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7825 x7824)))))
                     g7823)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7827
                       (letrec*
                        ((x7829
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7829))))
                      (g7828
                       (letrec*
                        ((x7830
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7830)))))
                     g7828)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7831
                       (letrec*
                        ((x7835
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7835))))
                      (g7832
                       (letrec*
                        ((x7836
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7836))))
                      (g7833
                       (letrec*
                        ((x7837
                          (letrec*
                           ((x7838
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7838)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7837))))
                      (g7834
                       (letrec*
                        ((x-cnd7839
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7839
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7841
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7840
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7841 x7840)))))))
                     g7834)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7842
                       (letrec*
                        ((x-cnd7843
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7843
                          a
                          (letrec*
                           ((x7844
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7844)))))))
                     g7842)))
                 (foldl
                  (lambda (f z l)
                    (letrec*
                     ((g7845
                       (letrec*
                        ((x-cnd7846
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (empty? l))))
                        (if x-cnd7846
                          z
                          (letrec*
                           ((x7848
                             (letrec*
                              ((x7849
                                (begin
                                  (write '(funapp 1358 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1358 63))
                                (display "\n")
                                (f z x7849))))
                            (x7847
                             (begin
                               (write '(funapp 1359 36))
                               (display "\n")
                               (cdr l))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (foldl f x7848 x7847)))))))
                     g7845)))
                 (randpos
                  (lambda (rand)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((n
                          (begin
                            (write '(funapp 1367 29))
                            (display "\n")
                            (rand))))
                        (letrec*
                         ((g7851
                           (letrec*
                            ((x-cnd7852
                              (begin
                                (write '(funapp 1371 41))
                                (display "\n")
                                (> n 0))))
                            (if x-cnd7852
                              n
                              (begin
                                (write '(funapp 1372 45))
                                (display "\n")
                                (randpos rand))))))
                         g7851))))
                     g7850)))
                 (mk-list
                  (lambda (rand n)
                    (letrec*
                     ((g7853
                       (letrec*
                        ((x-cnd7854
                          (begin
                            (write '(funapp 1380 37))
                            (display "\n")
                            (<= n 0))))
                        (if x-cnd7854
                          empty
                          (letrec*
                           ((x7857
                             (begin
                               (write '(funapp 1384 36))
                               (display "\n")
                               (randpos rand)))
                            (x7855
                             (letrec*
                              ((x7856
                                (begin
                                  (write '(funapp 1386 47))
                                  (display "\n")
                                  (- n 1))))
                              (begin
                                (write '(funapp 1386 57))
                                (display "\n")
                                (mk-list rand x7856)))))
                           (begin
                             (write '(funapp 1387 28))
                             (display "\n")
                             (cons x7857 x7855)))))))
                     g7853)))
                 (main
                  (lambda (rand n m)
                    (letrec*
                     ((g7858
                       (letrec*
                        ((x7859
                          (begin
                            (write '(funapp 1393 41))
                            (display "\n")
                            (mk-list rand n))))
                        (begin
                          (write '(funapp 1393 60))
                          (display "\n")
                          (foldl / m x7859)))))
                     g7858))))
                (letrec*
                 ((g7860
                   (letrec*
                    ((x7864
                      (begin
                        (write '(funapp 1399 23))
                        (display "\n")
                        ((lambda (j7330 k7331 f7332)
                           (letrec*
                            ((g7865
                              (lambda (g7327 g7328 g7329)
                                (letrec*
                                 ((g7866
                                   (letrec*
                                    ((x7867
                                      (letrec*
                                       ((x7870
                                         (begin
                                           (write '(funapp 1409 40))
                                           (display "\n")
                                           ((lambda (j7333 k7334 f7335)
                                              (letrec*
                                               ((g7871
                                                 (lambda ()
                                                   (letrec*
                                                    ((g7872
                                                      (letrec*
                                                       ((x7873
                                                         (begin
                                                           (write
                                                            '(funapp 1416 60))
                                                           (display "\n")
                                                           (f7335))))
                                                       (begin
                                                         (write
                                                          '(funapp 1417 52))
                                                         (display "\n")
                                                         (integer?/c
                                                          j7333
                                                          k7334
                                                          x7873)))))
                                                    g7872))))
                                               g7871))
                                            j7330
                                            k7331
                                            g7327)))
                                        (x7869
                                         (begin
                                           (write '(funapp 1426 46))
                                           (display "\n")
                                           (integer?/c j7330 k7331 g7328)))
                                        (x7868
                                         (begin
                                           (write '(funapp 1427 46))
                                           (display "\n")
                                           (integer?/c j7330 k7331 g7329))))
                                       (begin
                                         (write '(funapp 1428 38))
                                         (display "\n")
                                         (f7332 x7870 x7869 x7868)))))
                                    (begin
                                      (write '(funapp 1429 35))
                                      (display "\n")
                                      (real?/c j7330 k7331 x7867)))))
                                 g7866))))
                            g7865))
                         (begin
                           (write '(funapp 1432 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1433 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7863 (input))
                     (x7862 (input))
                     (x7861 (input)))
                    (begin
                      (write '(funapp 1438 21))
                      (display "\n")
                      (x7864 x7863 x7862 x7861)))))
                 g7860))))
             g7349))))
         g7347)))
      g7346))))
