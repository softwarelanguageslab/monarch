(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7341 #t)) g7341)))
      (meta (lambda (v) (letrec* ((g7342 v)) g7342)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7343
            (letrec*
             ((g7344
               (letrec*
                ((x-e7345 lst))
                (letrec*
                 ((v1742 x-e7345))
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
                     ((x-cnd7346
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7346
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
             g7344)))
          g7343)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7347 (lambda (v) (letrec* ((g7348 v)) g7348)))) g7347)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7349
            (letrec*
             ((x7350 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7350)))))
          g7349))))
     (letrec*
      ((g7351
        (letrec*
         ((g7352
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
             ((g7353 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7354
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7355
                       (letrec*
                        ((x-cnd7356
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7356
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7355)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7357
                       (letrec*
                        ((x-cnd7358
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7358
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7357)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7359
                       (letrec*
                        ((x-cnd7360
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7360
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7359)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7363 #t)) g7363))
                             g7269))))
                        (if x-cnd7362
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7361)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7364
                       (letrec*
                        ((x-cnd7365
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7366 #t)) g7366))
                             g7272))))
                        (if x-cnd7365
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7364)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7367
                       (letrec*
                        ((x-cnd7368
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7368
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7367)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7369
                       (letrec*
                        ((x-cnd7370
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7370
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7369)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7371
                       (letrec*
                        ((x-cnd7372
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7372
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7371)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7373
                       (lambda (k j v)
                         (letrec*
                          ((g7374
                            (letrec*
                             ((x-cnd7375
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7375
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7374))))
                     g7373)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7376
                       (lambda (k j v)
                         (letrec*
                          ((g7377
                            (letrec*
                             ((x-cnd7378
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7378
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7382
                                  (letrec*
                                   ((x7383
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7383))))
                                 (x7379
                                  (letrec*
                                   ((x7381
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7380
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7381 k j x7380)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7382 x7379)))))))
                          g7377))))
                     g7376)))
                 (any? (lambda (v) (letrec* ((g7384 #t)) g7384)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7385
                       (letrec*
                        ((x7386
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7386)))))
                     g7385)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7387
                       (letrec*
                        ((x-cnd7388
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7389
                                  (letrec*
                                   ((x7390
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7390)))))
                                g7389))
                             g7284))))
                        (if x-cnd7388
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7387)))
                 (meta (lambda (v) (letrec* ((g7391 v)) g7391)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7393
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7394
                               (letrec*
                                ((x7395
                                  (letrec*
                                   ((x7397
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7396
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7397 x7396)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7395)))))
                             g7394))))
                        g7393))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7392
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7392)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7399
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7400
                               (letrec*
                                ((x7401
                                  (letrec*
                                   ((x7403
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7402
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7403 x7402)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7401)))))
                             g7400))))
                        g7399))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7398
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7398)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7405
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7406
                               (letrec*
                                ((x7407
                                  (letrec*
                                   ((x7409
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7408
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7409 x7408)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7407)))))
                             g7406))))
                        g7405))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7404
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7404)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7411
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7412
                               (letrec*
                                ((x7413
                                  (letrec*
                                   ((x7415
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7414
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7415 x7414)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7413)))))
                             g7412))))
                        g7411))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7410
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7410)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7417
                          (lambda (g7305)
                            (letrec*
                             ((g7418
                               (letrec*
                                ((x7419
                                  (letrec*
                                   ((x7420
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7420)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7419)))))
                             g7418))))
                        g7417))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7416
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7416)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7422
                          (lambda (g7309)
                            (letrec*
                             ((g7423
                               (letrec*
                                ((x7424
                                  (letrec*
                                   ((x7425
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7425)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7424)))))
                             g7423))))
                        g7422))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7421
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7421)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7427
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7428
                               (letrec*
                                ((x7429
                                  (letrec*
                                   ((x7431
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7430
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7431 x7430)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7429)))))
                             g7428))))
                        g7427))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7426
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7426)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7433
                          (lambda (g7318)
                            (letrec*
                             ((g7434
                               (letrec*
                                ((x7435
                                  (letrec*
                                   ((x7436
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7436)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7435)))))
                             g7434))))
                        g7433))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7432
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7432)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7438
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7439
                               (letrec*
                                ((x7440
                                  (letrec*
                                   ((x7442
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7441
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7442 x7441)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7440)))))
                             g7439))))
                        g7438))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7437
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7437)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7443
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7443)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7444
                       (letrec*
                        ((x7445
                          (letrec*
                           ((x7446
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7446)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7445)))))
                     g7444)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7447
                       (letrec*
                        ((x7450
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7450))))
                      (g7448
                       (letrec*
                        ((x7451
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7451))))
                      (g7449
                       (letrec*
                        ((x-cnd7452
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7452
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7455
                             (letrec*
                              ((x7456
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7456))))
                            (x7453
                             (letrec*
                              ((x7454
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7454)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7455 x7453)))))))
                     g7449)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7457
                       (letrec*
                        ((x7458
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7458)))))
                     g7457)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7459
                       (letrec*
                        ((x7460
                          (letrec*
                           ((x7461
                             (letrec*
                              ((x7462
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7462)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7461)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7460)))))
                     g7459)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7463
                       (letrec*
                        ((x7464
                          (letrec*
                           ((x7465
                             (letrec*
                              ((x7466
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7466)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7465)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7464)))))
                     g7463)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7467
                       (letrec*
                        ((x7470
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7470))))
                      (g7468
                       (letrec*
                        ((x7471
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7471))))
                      (g7469
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
                         ((g7472
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7473 res))
                         g7473))))
                     g7469)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7474
                       (letrec*
                        ((x7475
                          (letrec*
                           ((x7476
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7476)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7475)))))
                     g7474)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x7478
                          (letrec*
                           ((x7479
                             (letrec*
                              ((x7480
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7480)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7479)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7478)))))
                     g7477)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7481
                       (letrec*
                        ((x7483
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7483))))
                      (g7482
                       (letrec*
                        ((x-cnd7484
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7484
                          #f
                          (letrec*
                           ((x-cnd7485
                             (letrec*
                              ((x7486
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7486 k)))))
                           (if x-cnd7485
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7487
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7487)))))))))
                     g7482)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7488
                       (letrec*
                        ((x7489
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7489)))))
                     g7488)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7490
                       (letrec*
                        ((x7492
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7492))))
                      (g7491
                       (letrec*
                        ((x-cnd7493
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7493
                          ""
                          (letrec*
                           ((x7496
                             (letrec*
                              ((x7497
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7497))))
                            (x7494
                             (letrec*
                              ((x7495
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7495)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7496 x7494)))))))
                     g7491)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7498
                       (letrec*
                        ((x7501
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7501))))
                      (g7499
                       (letrec*
                        ((x7502
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7502))))
                      (g7500
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7503
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7503))))
                     g7500)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7504
                       (letrec*
                        ((x7505
                          (letrec*
                           ((x7506
                             (letrec*
                              ((x7507
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7507)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7506)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7505)))))
                     g7504)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7508
                       (letrec*
                        ((x7511
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7511))))
                      (g7509
                       (letrec*
                        ((x7512
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7512))))
                      (g7510
                       (letrec*
                        ((x-cnd7513
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7513
                          x
                          (letrec*
                           ((x7515
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7514
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7515 x7514)))))))
                     g7510)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7516
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7516)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7517
                       (letrec*
                        ((x-cnd7518
                          (letrec*
                           ((x7519 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7519)))))
                        (if x-cnd7518
                          (letrec*
                           ((x7520 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7520)))
                          #f))))
                     g7517)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7521
                       (letrec*
                        ((x7523
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7523))))
                      (g7522
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7524
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7525 (if val7243 val7243 #f)))
                               g7525)))))
                         g7524))))
                     g7522)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7526
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7527
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7527 9)))))
                        (letrec*
                         ((g7528
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7529
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7529 10)))))
                              (letrec*
                               ((g7530
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7531
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7531 32))))))
                               g7530)))))
                         g7528))))
                     g7526)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((x7533
                          (letrec*
                           ((x7534
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7534)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7533)))))
                     g7532)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7535
                       (letrec*
                        ((x7537
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7537))))
                      (g7536
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7536)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7538 #f)) g7538)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7539
                       (letrec*
                        ((x7540
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7540)))))
                     g7539)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7541
                       (letrec*
                        ((x7543
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7543))))
                      (g7542
                       (letrec*
                        ((x-cnd7544
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7544
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7542)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7545
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7546
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7548
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7547
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7548 x7547)))))
                              (letrec*
                               ((g7549
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7552
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7551
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7550
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7552 x7551 x7550)))))
                                    (letrec*
                                     ((g7553
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7561
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7560
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7557
                                               (letrec*
                                                ((x7559
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7558
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7559 x7558))))
                                              (x7554
                                               (letrec*
                                                ((x7556
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7555
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7556 x7555)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7561
                                                    x7560
                                                    x7557
                                                    x7554)))))
                                          (letrec*
                                           ((g7562
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7578
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7577
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7563
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7564
                                                      (letrec*
                                                       ((x7575
                                                         (letrec*
                                                          ((x7576
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
                                                            (= x7576 n))))
                                                        (x7565
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7566
                                                                 (letrec*
                                                                  ((x7573
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7567
                                                                    (letrec*
                                                                     ((x7570
                                                                       (letrec*
                                                                        ((x7572
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
                                                                         (x7571
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
                                                                           x7572
                                                                           x7571))))
                                                                      (x7568
                                                                       (letrec*
                                                                        ((x7569
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
                                                                           x7569)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7570
                                                                            x7568)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7573
                                                                        x7567)))))
                                                               g7566))))
                                                          (letrec*
                                                           ((g7574
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7574))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7575 x7565)))))
                                                    g7564))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7578 x7577 x7563))))))
                                           g7562)))))
                                     g7553)))))
                               g7549)))))
                         g7546))))
                     g7545)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7579
                       (letrec*
                        ((x7580
                          (letrec*
                           ((x7581
                             (letrec*
                              ((x7582
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7582)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7581)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7580)))))
                     g7579)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7583
                       (letrec*
                        ((x7584
                          (letrec*
                           ((x7585
                             (letrec*
                              ((x7586
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7586)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7585)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7584)))))
                     g7583)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7587
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7587)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7588
                       (letrec*
                        ((x7590
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7590))))
                      (g7589
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7591
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7592 (if val7251 val7251 #f)))
                               g7592)))))
                         g7591))))
                     g7589)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7593
                       (letrec*
                        ((x7596
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7596))))
                      (g7594
                       (letrec*
                        ((x7597
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7597))))
                      (g7595
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
                         ((g7598
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7599 res))
                         g7599))))
                     g7595)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7600
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7600)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7601
                       (letrec*
                        ((x7604
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7604))))
                      (g7602
                       (letrec*
                        ((x7605
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7605))))
                      (g7603
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7606
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7606))))
                     g7603)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7608
                          (letrec*
                           ((x7609
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7609)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7608)))))
                     g7607)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x7611
                          (letrec*
                           ((x7612
                             (letrec*
                              ((x7613
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7613)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7612)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7611)))))
                     g7610)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7614
                       (letrec*
                        ((x7615
                          (letrec*
                           ((x7616
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7616)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7615)))))
                     g7614)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7617
                       (letrec*
                        ((x7618
                          (letrec*
                           ((x7619
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7619)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7618)))))
                     g7617)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7623
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7623))))
                      (g7621
                       (letrec*
                        ((x7624
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7624))))
                      (g7622
                       (letrec*
                        ((x7625
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7625)))))
                     g7622)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7626
                       (letrec*
                        ((x7627
                          (letrec*
                           ((x7628
                             (letrec*
                              ((x7629
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7629)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7628)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7627)))))
                     g7626)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7630
                       (letrec*
                        ((x7632
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7632))))
                      (g7631
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7631)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7633
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7633)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7634
                       (letrec*
                        ((x7635
                          (letrec*
                           ((x7636
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7636)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7635)))))
                     g7634)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7637
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7637)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7638
                       (letrec*
                        ((x7640
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7640))))
                      (g7639
                       (letrec*
                        ((x-cnd7641
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7641
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7644
                             (letrec*
                              ((x7645
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7645))))
                            (x7642
                             (letrec*
                              ((x7643
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7643)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7644 x7642)))))))
                     g7639)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7646
                       (letrec*
                        ((x7647
                          (letrec*
                           ((x7648
                             (letrec*
                              ((x7649
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7649)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7648)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7647)))))
                     g7646)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7650
                       (letrec*
                        ((x7651
                          (letrec*
                           ((x7652
                             (letrec*
                              ((x7653
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7653)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7652)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7651)))))
                     g7650)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7654
                       (letrec*
                        ((x7656
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7656))))
                      (g7655
                       (letrec*
                        ((x7657
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7657)))))
                     g7655)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7658
                       (letrec*
                        ((x7659
                          (letrec*
                           ((x7660
                             (letrec*
                              ((x7661
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7661)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7660)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7659)))))
                     g7658)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7662
                       (letrec*
                        ((x7665
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7665))))
                      (g7663
                       (letrec*
                        ((x7666
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7666))))
                      (g7664
                       (if cnd
                         (letrec*
                          ((g7667
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7667)
                         (if cnd
                           (letrec*
                            ((g7668
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7669)))))
                            g7668)
                           (if cnd
                             (letrec*
                              ((g7670
                                (letrec*
                                 ((x7672
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7671
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7672 x7671)))))
                              g7670)
                             (if cnd
                               (letrec*
                                ((g7673
                                  (letrec*
                                   ((x7676
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7675
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7674
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7676 x7675 x7674)))))
                                g7673)
                               (if cnd
                                 (letrec*
                                  ((g7677
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7680
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7681 x7680 x7679 x7678)))))
                                  g7677)
                                 (if cnd
                                   (letrec*
                                    ((g7682
                                      (letrec*
                                       ((x7688
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7687
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7686
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7685
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7683
                                         (letrec*
                                          ((x7684
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7684)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7688
                                          x7687
                                          x7686
                                          x7685
                                          x7683)))))
                                    g7682)
                                   (if cnd
                                     (letrec*
                                      ((g7689
                                        (letrec*
                                         ((x7697
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7696
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7695
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7694
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7692
                                           (letrec*
                                            ((x7693
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7693))))
                                          (x7690
                                           (letrec*
                                            ((x7691
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7691)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7697
                                            x7696
                                            x7695
                                            x7694
                                            x7692
                                            x7690)))))
                                      g7689)
                                     (if cnd
                                       (letrec*
                                        ((g7698
                                          (letrec*
                                           ((x7708
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7707
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7706
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7703
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7704))))
                                            (x7701
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7702))))
                                            (x7699
                                             (letrec*
                                              ((x7700
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7700)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7708
                                              x7707
                                              x7706
                                              x7705
                                              x7703
                                              x7701
                                              x7699)))))
                                        g7698)
                                       (letrec*
                                        ((g7709
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7709)))))))))))
                     g7664)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7710
                       (letrec*
                        ((x7712
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7712))))
                      (g7711
                       (letrec*
                        ((x-cnd7713
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7713
                          #f
                          (letrec*
                           ((x-cnd7714
                             (letrec*
                              ((x7715
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7715 e)))))
                           (if x-cnd7714
                             l
                             (letrec*
                              ((x7716
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7716)))))))))
                     g7711)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7717
                       (letrec*
                        ((x7718
                          (letrec*
                           ((x7719
                             (letrec*
                              ((x7720
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7720)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7719)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7718)))))
                     g7717)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7721
                       (letrec*
                        ((x7722
                          (letrec*
                           ((x7723
                             (letrec*
                              ((x7724
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7724)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7723)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7722)))))
                     g7721)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7725
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7725)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7726
                       (letrec*
                        ((x7728
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7728))))
                      (g7727
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7727)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7730
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7730))))
                     g7729)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7731
                       (letrec*
                        ((x7732
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7732)))))
                     g7731)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7736
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7734
                             (letrec*
                              ((x7735
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7735)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7736 x7734)))))
                        (letrec*
                         ((g7737
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7737))))
                     g7733)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7738
                       (letrec*
                        ((x7739
                          (letrec*
                           ((x7740
                             (letrec*
                              ((x7741
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7741)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7740)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7739)))))
                     g7738)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x-cnd7743
                          (letrec*
                           ((x7744 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7744 c)))))
                        (if x-cnd7743
                          (letrec*
                           ((x7745 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7745)))
                          #f))))
                     g7742)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7746
                       (letrec*
                        ((x7748
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7748))))
                      (g7747
                       (letrec*
                        ((x-cnd7749
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7749
                          #f
                          (letrec*
                           ((x-cnd7750
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7751 k)))))
                           (if x-cnd7750
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7752
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7752)))))))))
                     g7747)))
                 (not (lambda (x) (letrec* ((g7753 (if x #f #t))) g7753)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7754
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7754)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7755
                       (letrec*
                        ((x7757
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7757))))
                      (g7756
                       (letrec*
                        ((x-cnd7758
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7758
                          #f
                          (letrec*
                           ((x-cnd7759
                             (letrec*
                              ((x7760
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7760 e)))))
                           (if x-cnd7759
                             l
                             (letrec*
                              ((x7761
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7761)))))))))
                     g7756)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7762
                       (letrec*
                        ((x7763
                          (letrec*
                           ((x7764
                             (letrec*
                              ((x7765
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7765)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7764)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7763)))))
                     g7762)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7766
                       (letrec*
                        ((x7768
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7768))))
                      (g7767
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7769
                               (letrec*
                                ((x-cnd7770
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7770
                                  0
                                  (letrec*
                                   ((x7771
                                     (letrec*
                                      ((x7772
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7772)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7771)))))))
                             g7769))))
                        (letrec*
                         ((g7773
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7773))))
                     g7767)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7774
                       (letrec*
                        ((x7777
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7777))))
                      (g7775
                       (letrec*
                        ((x7778
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7778))))
                      (g7776
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7779
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7779))))
                     g7776)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7780
                       (letrec*
                        ((x7781
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7781)))))
                     g7780)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7782
                       (letrec*
                        ((x7783
                          (letrec*
                           ((x7784
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7784)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7783)))))
                     g7782)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7785
                       (letrec*
                        ((x7787
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7787))))
                      (g7786
                       (letrec*
                        ((x-cnd7788
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7788
                          #f
                          (letrec*
                           ((x-cnd7789
                             (letrec*
                              ((x7790
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7790 k)))))
                           (if x-cnd7789
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7791
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7791)))))))))
                     g7786)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7792
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7793)))))
                     g7792)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7794
                       (letrec*
                        ((x7797
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7797))))
                      (g7795
                       (letrec*
                        ((x7798
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7798))))
                      (g7796
                       (letrec*
                        ((x7799
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7799)))))
                     g7796)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7800
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7801
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7801))))
                     g7800)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7802
                       (letrec*
                        ((x7805
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7805))))
                      (g7803
                       (letrec*
                        ((x7806
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7806))))
                      (g7804
                       (letrec*
                        ((x-cnd7807
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7807
                          #t
                          (letrec*
                           ((x-cnd7808
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7808
                             (letrec*
                              ((g7809
                                (letrec*
                                 ((x7811
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7811))))
                               (g7810
                                (letrec*
                                 ((x7812
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7812)))))
                              g7810)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7804)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7813
                       (letrec*
                        ((x7815
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7815))))
                      (g7814
                       (letrec*
                        ((x-cnd7816
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7816
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7814)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7817
                       (letrec*
                        ((x7820
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7820))))
                      (g7818
                       (letrec*
                        ((x7821
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7821))))
                      (g7819
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7822
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7822))))
                     g7819)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7823
                       (letrec*
                        ((x7824
                          (letrec*
                           ((x7825
                             (letrec*
                              ((x7826
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7826)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7825)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7824)))))
                     g7823)))
                 (newline (lambda () (letrec* ((g7827 #f)) g7827)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7828
                       (letrec*
                        ((x7830
                          (letrec*
                           ((x7831
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7831))))
                         (x7829
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7830 x7829)))))
                     g7828)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7832
                       (letrec*
                        ((x7834
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7834))))
                      (g7833
                       (letrec*
                        ((x7835
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7835)))))
                     g7833)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7836
                       (letrec*
                        ((x7840
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7840))))
                      (g7837
                       (letrec*
                        ((x7841
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7841))))
                      (g7838
                       (letrec*
                        ((x7842
                          (letrec*
                           ((x7843
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7843)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7842))))
                      (g7839
                       (letrec*
                        ((x-cnd7844
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7844
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7846
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7845
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7846 x7845)))))))
                     g7839)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7847
                       (letrec*
                        ((x-cnd7848
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7848
                          a
                          (letrec*
                           ((x7849
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7849)))))))
                     g7847)))
                 (mappend
                  (lambda (xs ys)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((x-cnd7851
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (empty? xs))))
                        (if x-cnd7851
                          ys
                          (letrec*
                           ((x7854
                             (begin
                               (write '(funapp 1358 36))
                               (display "\n")
                               (car xs)))
                            (x7852
                             (letrec*
                              ((x7853
                                (begin
                                  (write '(funapp 1360 47))
                                  (display "\n")
                                  (cdr xs))))
                              (begin
                                (write '(funapp 1360 58))
                                (display "\n")
                                (mappend x7853 ys)))))
                           (begin
                             (write '(funapp 1361 28))
                             (display "\n")
                             (cons x7854 x7852)))))))
                     g7850)))
                 (map-append
                  (lambda (f xs)
                    (letrec*
                     ((g7855
                       (letrec*
                        ((x-cnd7856
                          (begin
                            (write '(funapp 1368 37))
                            (display "\n")
                            (empty? xs))))
                        (if x-cnd7856
                          empty
                          (letrec*
                           ((x7859
                             (letrec*
                              ((x7860
                                (begin
                                  (write '(funapp 1372 53))
                                  (display "\n")
                                  (car xs))))
                              (begin
                                (write '(funapp 1372 64))
                                (display "\n")
                                (f x7860))))
                            (x7857
                             (letrec*
                              ((x7858
                                (begin
                                  (write '(funapp 1375 39))
                                  (display "\n")
                                  (cdr xs))))
                              (begin
                                (write '(funapp 1376 31))
                                (display "\n")
                                (map-append f x7858)))))
                           (begin
                             (write '(funapp 1377 28))
                             (display "\n")
                             (mappend x7859 x7857)))))))
                     g7855))))
                (letrec*
                 ((g7861
                   (letrec*
                    ((x7865
                      (begin
                        (write '(funapp 1383 23))
                        (display "\n")
                        ((lambda (j7329 k7330 f7331)
                           (letrec*
                            ((g7866
                              (lambda (g7327 g7328)
                                (letrec*
                                 ((g7867
                                   (letrec*
                                    ((x7877
                                      (begin
                                        (write '(funapp 1390 43))
                                        (display "\n")
                                        (listof any/c)))
                                     (x7868
                                      (letrec*
                                       ((x7871
                                         (begin
                                           (write '(funapp 1394 40))
                                           (display "\n")
                                           ((lambda (j7333 k7334 f7335)
                                              (letrec*
                                               ((g7872
                                                 (lambda (g7332)
                                                   (letrec*
                                                    ((g7873
                                                      (letrec*
                                                       ((x7876
                                                         (begin
                                                           (write
                                                            '(funapp 1401 60))
                                                           (display "\n")
                                                           (listof any/c)))
                                                        (x7874
                                                         (letrec*
                                                          ((x7875
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1405
                                                                 57))
                                                              (display "\n")
                                                              (any/c
                                                               j7333
                                                               k7334
                                                               g7332))))
                                                          (begin
                                                            (write
                                                             '(funapp 1409 55))
                                                            (display "\n")
                                                            (f7335 x7875)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1410 52))
                                                         (display "\n")
                                                         (x7876
                                                          j7333
                                                          k7334
                                                          x7874)))))
                                                    g7873))))
                                               g7872))
                                            j7329
                                            k7330
                                            g7327)))
                                        (x7869
                                         (letrec*
                                          ((x7870
                                            (begin
                                              (write '(funapp 1418 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1419 41))
                                            (display "\n")
                                            (x7870 j7329 k7330 g7328)))))
                                       (begin
                                         (write '(funapp 1420 38))
                                         (display "\n")
                                         (f7331 x7871 x7869)))))
                                    (begin
                                      (write '(funapp 1421 35))
                                      (display "\n")
                                      (x7877 j7329 k7330 x7868)))))
                                 g7867))))
                            g7866))
                         (begin
                           (write '(funapp 1424 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1425 23))
                           (display "\n")
                           'importer)
                         map-append)))
                     (x7864 (input))
                     (x7863 (input)))
                    (begin
                      (write '(funapp 1429 21))
                      (display "\n")
                      (x7865 x7864 x7863))))
                  (g7862
                   (letrec*
                    ((x7880
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        ((lambda (j7338 k7339 f7340)
                           (letrec*
                            ((g7881
                              (lambda (g7336 g7337)
                                (letrec*
                                 ((g7882
                                   (letrec*
                                    ((x7888
                                      (begin
                                        (write '(funapp 1440 43))
                                        (display "\n")
                                        (listof any/c)))
                                     (x7883
                                      (letrec*
                                       ((x7886
                                         (letrec*
                                          ((x7887
                                            (begin
                                              (write '(funapp 1445 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1446 41))
                                            (display "\n")
                                            (x7887 j7338 k7339 g7336))))
                                        (x7884
                                         (letrec*
                                          ((x7885
                                            (begin
                                              (write '(funapp 1449 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1450 41))
                                            (display "\n")
                                            (x7885 j7338 k7339 g7337)))))
                                       (begin
                                         (write '(funapp 1451 38))
                                         (display "\n")
                                         (f7340 x7886 x7884)))))
                                    (begin
                                      (write '(funapp 1452 35))
                                      (display "\n")
                                      (x7888 j7338 k7339 x7883)))))
                                 g7882))))
                            g7881))
                         (begin
                           (write '(funapp 1455 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1456 23))
                           (display "\n")
                           'importer)
                         mappend)))
                     (x7879 (input))
                     (x7878 (input)))
                    (begin
                      (write '(funapp 1460 21))
                      (display "\n")
                      (x7880 x7879 x7878)))))
                 g7862))))
             g7354))))
         g7352)))
      g7351))))
