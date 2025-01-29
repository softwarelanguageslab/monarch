(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7338 #t)) g7338)))
      (meta (lambda (v) (letrec* ((g7339 v)) g7339)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7340
            (letrec*
             ((g7341
               (letrec*
                ((x-e7342 lst))
                (letrec*
                 ((v1742 x-e7342))
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
                     ((x-cnd7343
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7343
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
             g7341)))
          g7340)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7344 (lambda (v) (letrec* ((g7345 v)) g7345)))) g7344)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7346
            (letrec*
             ((x7347 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7347)))))
          g7346))))
     (letrec*
      ((g7348
        (letrec*
         ((g7349
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
             ((g7350 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7351
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7352
                       (letrec*
                        ((x-cnd7353
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7353
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7352)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7355
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7354)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7357
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7356)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7360 #t)) g7360))
                             g7269))))
                        (if x-cnd7359
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7358)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7363 #t)) g7363))
                             g7272))))
                        (if x-cnd7362
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7361)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7364
                       (letrec*
                        ((x-cnd7365
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7365
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7364)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7366
                       (letrec*
                        ((x-cnd7367
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7367
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7366)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7368
                       (letrec*
                        ((x-cnd7369
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7369
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7368)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7370
                       (lambda (k j v)
                         (letrec*
                          ((g7371
                            (letrec*
                             ((x-cnd7372
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7372
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7371))))
                     g7370)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7373
                       (lambda (k j v)
                         (letrec*
                          ((g7374
                            (letrec*
                             ((x-cnd7375
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7375
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7379
                                  (letrec*
                                   ((x7380
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7380))))
                                 (x7376
                                  (letrec*
                                   ((x7378
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7377
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7378 k j x7377)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7379 x7376)))))))
                          g7374))))
                     g7373)))
                 (any? (lambda (v) (letrec* ((g7381 #t)) g7381)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7382
                       (letrec*
                        ((x7383
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7383)))))
                     g7382)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7384
                       (letrec*
                        ((x-cnd7385
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7386
                                  (letrec*
                                   ((x7387
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7387)))))
                                g7386))
                             g7284))))
                        (if x-cnd7385
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7384)))
                 (meta (lambda (v) (letrec* ((g7388 v)) g7388)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7390
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7391
                               (letrec*
                                ((x7392
                                  (letrec*
                                   ((x7394
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7393
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7394 x7393)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7392)))))
                             g7391))))
                        g7390))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7389
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7389)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7396
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7397
                               (letrec*
                                ((x7398
                                  (letrec*
                                   ((x7400
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7399
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7400 x7399)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7398)))))
                             g7397))))
                        g7396))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7395
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7395)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7402
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7403
                               (letrec*
                                ((x7404
                                  (letrec*
                                   ((x7406
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7405
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7406 x7405)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7404)))))
                             g7403))))
                        g7402))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7401
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7401)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7408
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7409
                               (letrec*
                                ((x7410
                                  (letrec*
                                   ((x7412
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7411
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7412 x7411)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7410)))))
                             g7409))))
                        g7408))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7407
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7407)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7414
                          (lambda (g7305)
                            (letrec*
                             ((g7415
                               (letrec*
                                ((x7416
                                  (letrec*
                                   ((x7417
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7417)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7416)))))
                             g7415))))
                        g7414))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7413
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7413)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7419
                          (lambda (g7309)
                            (letrec*
                             ((g7420
                               (letrec*
                                ((x7421
                                  (letrec*
                                   ((x7422
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7422)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7421)))))
                             g7420))))
                        g7419))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7418
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7418)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7424
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7425
                               (letrec*
                                ((x7426
                                  (letrec*
                                   ((x7428
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7427
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7428 x7427)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7426)))))
                             g7425))))
                        g7424))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7423
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7423)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7430
                          (lambda (g7318)
                            (letrec*
                             ((g7431
                               (letrec*
                                ((x7432
                                  (letrec*
                                   ((x7433
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7433)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7432)))))
                             g7431))))
                        g7430))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7429
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7429)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7435
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7436
                               (letrec*
                                ((x7437
                                  (letrec*
                                   ((x7439
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7438
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7439 x7438)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7437)))))
                             g7436))))
                        g7435))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7434
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7434)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7440
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7440)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7441
                       (letrec*
                        ((x7442
                          (letrec*
                           ((x7443
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7443)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7442)))))
                     g7441)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7444
                       (letrec*
                        ((x7447
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7447))))
                      (g7445
                       (letrec*
                        ((x7448
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7448))))
                      (g7446
                       (letrec*
                        ((x-cnd7449
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7449
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7452
                             (letrec*
                              ((x7453
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7453))))
                            (x7450
                             (letrec*
                              ((x7451
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7451)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7452 x7450)))))))
                     g7446)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7454
                       (letrec*
                        ((x7455
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7455)))))
                     g7454)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7456
                       (letrec*
                        ((x7457
                          (letrec*
                           ((x7458
                             (letrec*
                              ((x7459
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7459)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7458)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7457)))))
                     g7456)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7460
                       (letrec*
                        ((x7461
                          (letrec*
                           ((x7462
                             (letrec*
                              ((x7463
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7463)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7462)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7461)))))
                     g7460)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7464
                       (letrec*
                        ((x7467
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7467))))
                      (g7465
                       (letrec*
                        ((x7468
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7468))))
                      (g7466
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
                         ((g7469
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7470 res))
                         g7470))))
                     g7466)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7471
                       (letrec*
                        ((x7472
                          (letrec*
                           ((x7473
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7473)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7472)))))
                     g7471)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7474
                       (letrec*
                        ((x7475
                          (letrec*
                           ((x7476
                             (letrec*
                              ((x7477
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7477)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7476)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7475)))))
                     g7474)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7478
                       (letrec*
                        ((x7480
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7480))))
                      (g7479
                       (letrec*
                        ((x-cnd7481
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7481
                          #f
                          (letrec*
                           ((x-cnd7482
                             (letrec*
                              ((x7483
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7483 k)))))
                           (if x-cnd7482
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7484
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7484)))))))))
                     g7479)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7485
                       (letrec*
                        ((x7486
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7486)))))
                     g7485)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7487
                       (letrec*
                        ((x7489
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7489))))
                      (g7488
                       (letrec*
                        ((x-cnd7490
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7490
                          ""
                          (letrec*
                           ((x7493
                             (letrec*
                              ((x7494
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7494))))
                            (x7491
                             (letrec*
                              ((x7492
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7492)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7493 x7491)))))))
                     g7488)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7495
                       (letrec*
                        ((x7498
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7498))))
                      (g7496
                       (letrec*
                        ((x7499
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7499))))
                      (g7497
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7500
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7500))))
                     g7497)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7501
                       (letrec*
                        ((x7502
                          (letrec*
                           ((x7503
                             (letrec*
                              ((x7504
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7504)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7503)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7502)))))
                     g7501)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7505
                       (letrec*
                        ((x7508
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7508))))
                      (g7506
                       (letrec*
                        ((x7509
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7509))))
                      (g7507
                       (letrec*
                        ((x-cnd7510
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7510
                          x
                          (letrec*
                           ((x7512
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7511
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7512 x7511)))))))
                     g7507)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7513
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7513)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7514
                       (letrec*
                        ((x-cnd7515
                          (letrec*
                           ((x7516 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7516)))))
                        (if x-cnd7515
                          (letrec*
                           ((x7517 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7517)))
                          #f))))
                     g7514)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7518
                       (letrec*
                        ((x7520
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7520))))
                      (g7519
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7521
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7522 (if val7243 val7243 #f)))
                               g7522)))))
                         g7521))))
                     g7519)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7523
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7524
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7524 9)))))
                        (letrec*
                         ((g7525
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7526
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7526 10)))))
                              (letrec*
                               ((g7527
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7528
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7528 32))))))
                               g7527)))))
                         g7525))))
                     g7523)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7529
                       (letrec*
                        ((x7530
                          (letrec*
                           ((x7531
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7531)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7530)))))
                     g7529)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((x7534
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7534))))
                      (g7533
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7533)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7535 #f)) g7535)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7536
                       (letrec*
                        ((x7537
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7537)))))
                     g7536)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7538
                       (letrec*
                        ((x7540
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7540))))
                      (g7539
                       (letrec*
                        ((x-cnd7541
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7541
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7539)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7542
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7543
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7545
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7544
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7545 x7544)))))
                              (letrec*
                               ((g7546
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7549
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7548
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7547
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7549 x7548 x7547)))))
                                    (letrec*
                                     ((g7550
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7558
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7557
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7554
                                               (letrec*
                                                ((x7556
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7555
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7556 x7555))))
                                              (x7551
                                               (letrec*
                                                ((x7553
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7552
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7553 x7552)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7558
                                                    x7557
                                                    x7554
                                                    x7551)))))
                                          (letrec*
                                           ((g7559
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7575
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7574
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7560
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7561
                                                      (letrec*
                                                       ((x7572
                                                         (letrec*
                                                          ((x7573
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
                                                            (= x7573 n))))
                                                        (x7562
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7563
                                                                 (letrec*
                                                                  ((x7570
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7564
                                                                    (letrec*
                                                                     ((x7567
                                                                       (letrec*
                                                                        ((x7569
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
                                                                         (x7568
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
                                                                           x7569
                                                                           x7568))))
                                                                      (x7565
                                                                       (letrec*
                                                                        ((x7566
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
                                                                           x7566)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7567
                                                                            x7565)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7570
                                                                        x7564)))))
                                                               g7563))))
                                                          (letrec*
                                                           ((g7571
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7571))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7572 x7562)))))
                                                    g7561))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7575 x7574 x7560))))))
                                           g7559)))))
                                     g7550)))))
                               g7546)))))
                         g7543))))
                     g7542)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7579)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7578)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7577)))))
                     g7576)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7583)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7582)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7581)))))
                     g7580)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7584
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7584)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7585
                       (letrec*
                        ((x7587
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7587))))
                      (g7586
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7588
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7589 (if val7251 val7251 #f)))
                               g7589)))))
                         g7588))))
                     g7586)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7590
                       (letrec*
                        ((x7593
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7593))))
                      (g7591
                       (letrec*
                        ((x7594
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7594))))
                      (g7592
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
                         ((g7595
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7596 res))
                         g7596))))
                     g7592)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7597
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7597)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7598
                       (letrec*
                        ((x7601
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7601))))
                      (g7599
                       (letrec*
                        ((x7602
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7602))))
                      (g7600
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7603
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7603))))
                     g7600)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7604
                       (letrec*
                        ((x7605
                          (letrec*
                           ((x7606
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7606)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7605)))))
                     g7604)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7608
                          (letrec*
                           ((x7609
                             (letrec*
                              ((x7610
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7610)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7609)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7608)))))
                     g7607)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7611
                       (letrec*
                        ((x7612
                          (letrec*
                           ((x7613
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7613)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7612)))))
                     g7611)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7614
                       (letrec*
                        ((x7615
                          (letrec*
                           ((x7616
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7616)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7615)))))
                     g7614)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7617
                       (letrec*
                        ((x7620
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7620))))
                      (g7618
                       (letrec*
                        ((x7621
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7621))))
                      (g7619
                       (letrec*
                        ((x7622
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7622)))))
                     g7619)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x7624
                          (letrec*
                           ((x7625
                             (letrec*
                              ((x7626
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7626)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7625)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7624)))))
                     g7623)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7627
                       (letrec*
                        ((x7629
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7629))))
                      (g7628
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7628)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7630
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7630)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7631
                       (letrec*
                        ((x7632
                          (letrec*
                           ((x7633
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7633)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7632)))))
                     g7631)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7634
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7634)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7635
                       (letrec*
                        ((x7637
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7637))))
                      (g7636
                       (letrec*
                        ((x-cnd7638
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7638
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7641
                             (letrec*
                              ((x7642
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7642))))
                            (x7639
                             (letrec*
                              ((x7640
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7640)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7641 x7639)))))))
                     g7636)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7643
                       (letrec*
                        ((x7644
                          (letrec*
                           ((x7645
                             (letrec*
                              ((x7646
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7646)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7645)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7644)))))
                     g7643)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7650)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7649)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7648)))))
                     g7647)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7651
                       (letrec*
                        ((x7653
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7653))))
                      (g7652
                       (letrec*
                        ((x7654
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7654)))))
                     g7652)))
                 (caadar
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
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7658)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7657)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7656)))))
                     g7655)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7659
                       (letrec*
                        ((x7662
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7662))))
                      (g7660
                       (letrec*
                        ((x7663
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7663))))
                      (g7661
                       (if cnd
                         (letrec*
                          ((g7664
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7664)
                         (if cnd
                           (letrec*
                            ((g7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7666)))))
                            g7665)
                           (if cnd
                             (letrec*
                              ((g7667
                                (letrec*
                                 ((x7669
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7668
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7669 x7668)))))
                              g7667)
                             (if cnd
                               (letrec*
                                ((g7670
                                  (letrec*
                                   ((x7673
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7672
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7671
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7673 x7672 x7671)))))
                                g7670)
                               (if cnd
                                 (letrec*
                                  ((g7674
                                    (letrec*
                                     ((x7678
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7678 x7677 x7676 x7675)))))
                                  g7674)
                                 (if cnd
                                   (letrec*
                                    ((g7679
                                      (letrec*
                                       ((x7685
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7684
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7683
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7682
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7680
                                         (letrec*
                                          ((x7681
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7681)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7685
                                          x7684
                                          x7683
                                          x7682
                                          x7680)))))
                                    g7679)
                                   (if cnd
                                     (letrec*
                                      ((g7686
                                        (letrec*
                                         ((x7694
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7693
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7692
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7691
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7689
                                           (letrec*
                                            ((x7690
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7690))))
                                          (x7687
                                           (letrec*
                                            ((x7688
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7688)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7694
                                            x7693
                                            x7692
                                            x7691
                                            x7689
                                            x7687)))))
                                      g7686)
                                     (if cnd
                                       (letrec*
                                        ((g7695
                                          (letrec*
                                           ((x7705
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7703
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7700
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7701))))
                                            (x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7699))))
                                            (x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7697)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7705
                                              x7704
                                              x7703
                                              x7702
                                              x7700
                                              x7698
                                              x7696)))))
                                        g7695)
                                       (letrec*
                                        ((g7706
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7706)))))))))))
                     g7661)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7707
                       (letrec*
                        ((x7709
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7709))))
                      (g7708
                       (letrec*
                        ((x-cnd7710
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7710
                          #f
                          (letrec*
                           ((x-cnd7711
                             (letrec*
                              ((x7712
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7712 e)))))
                           (if x-cnd7711
                             l
                             (letrec*
                              ((x7713
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7713)))))))))
                     g7708)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7714
                       (letrec*
                        ((x7715
                          (letrec*
                           ((x7716
                             (letrec*
                              ((x7717
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7717)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7716)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7715)))))
                     g7714)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7719
                          (letrec*
                           ((x7720
                             (letrec*
                              ((x7721
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7721)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7720)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7719)))))
                     g7718)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7722
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7722)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7723
                       (letrec*
                        ((x7725
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7725))))
                      (g7724
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7724)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7726
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7727
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7727))))
                     g7726)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((x7729
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7729)))))
                     g7728)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7730
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7733
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7731
                             (letrec*
                              ((x7732
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7732)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7733 x7731)))))
                        (letrec*
                         ((g7734
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7734))))
                     g7730)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7735
                       (letrec*
                        ((x7736
                          (letrec*
                           ((x7737
                             (letrec*
                              ((x7738
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7738)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7737)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7736)))))
                     g7735)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7739
                       (letrec*
                        ((x-cnd7740
                          (letrec*
                           ((x7741 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7741 c)))))
                        (if x-cnd7740
                          (letrec*
                           ((x7742 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7742)))
                          #f))))
                     g7739)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7743
                       (letrec*
                        ((x7745
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7745))))
                      (g7744
                       (letrec*
                        ((x-cnd7746
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7746
                          #f
                          (letrec*
                           ((x-cnd7747
                             (letrec*
                              ((x7748
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7748 k)))))
                           (if x-cnd7747
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7749
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7749)))))))))
                     g7744)))
                 (not (lambda (x) (letrec* ((g7750 (if x #f #t))) g7750)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7751
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7751)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7752
                       (letrec*
                        ((x7754
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7754))))
                      (g7753
                       (letrec*
                        ((x-cnd7755
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7755
                          #f
                          (letrec*
                           ((x-cnd7756
                             (letrec*
                              ((x7757
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7757 e)))))
                           (if x-cnd7756
                             l
                             (letrec*
                              ((x7758
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7758)))))))))
                     g7753)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7759
                       (letrec*
                        ((x7760
                          (letrec*
                           ((x7761
                             (letrec*
                              ((x7762
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7762)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7761)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7760)))))
                     g7759)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7763
                       (letrec*
                        ((x7765
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7765))))
                      (g7764
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7766
                               (letrec*
                                ((x-cnd7767
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7767
                                  0
                                  (letrec*
                                   ((x7768
                                     (letrec*
                                      ((x7769
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7769)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7768)))))))
                             g7766))))
                        (letrec*
                         ((g7770
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7770))))
                     g7764)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7771
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7774))))
                      (g7772
                       (letrec*
                        ((x7775
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7775))))
                      (g7773
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7776
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7776))))
                     g7773)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7777
                       (letrec*
                        ((x7778
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7778)))))
                     g7777)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7779
                       (letrec*
                        ((x7780
                          (letrec*
                           ((x7781
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7781)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7780)))))
                     g7779)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7782
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7784))))
                      (g7783
                       (letrec*
                        ((x-cnd7785
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7785
                          #f
                          (letrec*
                           ((x-cnd7786
                             (letrec*
                              ((x7787
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7787 k)))))
                           (if x-cnd7786
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7788
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7788)))))))))
                     g7783)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7789
                       (letrec*
                        ((x7790
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7790)))))
                     g7789)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((x7794
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7794))))
                      (g7792
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7795))))
                      (g7793
                       (letrec*
                        ((x7796
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7796)))))
                     g7793)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7797
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7798
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7798))))
                     g7797)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7799
                       (letrec*
                        ((x7802
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7802))))
                      (g7800
                       (letrec*
                        ((x7803
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7803))))
                      (g7801
                       (letrec*
                        ((x-cnd7804
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7804
                          #t
                          (letrec*
                           ((x-cnd7805
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7805
                             (letrec*
                              ((g7806
                                (letrec*
                                 ((x7808
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7808))))
                               (g7807
                                (letrec*
                                 ((x7809
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7809)))))
                              g7807)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7801)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7810
                       (letrec*
                        ((x7812
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7812))))
                      (g7811
                       (letrec*
                        ((x-cnd7813
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7813
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7811)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7814
                       (letrec*
                        ((x7817
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7817))))
                      (g7815
                       (letrec*
                        ((x7818
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7818))))
                      (g7816
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7819
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7819))))
                     g7816)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7820
                       (letrec*
                        ((x7821
                          (letrec*
                           ((x7822
                             (letrec*
                              ((x7823
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7823)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7822)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7821)))))
                     g7820)))
                 (newline (lambda () (letrec* ((g7824 #f)) g7824)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7825
                       (letrec*
                        ((x7827
                          (letrec*
                           ((x7828
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7828))))
                         (x7826
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7827 x7826)))))
                     g7825)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7829
                       (letrec*
                        ((x7831
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7831))))
                      (g7830
                       (letrec*
                        ((x7832
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7832)))))
                     g7830)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7833
                       (letrec*
                        ((x7837
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7837))))
                      (g7834
                       (letrec*
                        ((x7838
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7838))))
                      (g7835
                       (letrec*
                        ((x7839
                          (letrec*
                           ((x7840
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7840)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7839))))
                      (g7836
                       (letrec*
                        ((x-cnd7841
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7841
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7843
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7842
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7843 x7842)))))))
                     g7836)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7844
                       (letrec*
                        ((x-cnd7845
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7845
                          a
                          (letrec*
                           ((x7846
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7846)))))))
                     g7844)))
                 (STATE/C
                  (lambda (g7330 g7331 g7332)
                    (letrec*
                     ((g7847
                       (letrec*
                        ((x-cnd7848
                          (begin
                            (write '(funapp 1355 27))
                            (display "\n")
                            ((lambda (v7329)
                               (letrec*
                                ((g7849
                                  (letrec*
                                   ((x-cnd7850
                                     (begin
                                       (write '(funapp 1359 46))
                                       (display "\n")
                                       (eq?
                                        (begin
                                          (write '(funapp 1359 50))
                                          (display "\n")
                                          'init)
                                        v7329))))
                                   (if x-cnd7850
                                     #t
                                     (letrec*
                                      ((x-cnd7851
                                        (begin
                                          (write '(funapp 1363 49))
                                          (display "\n")
                                          (eq?
                                           (begin
                                             (write '(funapp 1363 53))
                                             (display "\n")
                                             'opened)
                                           v7329))))
                                      (if x-cnd7851
                                        #t
                                        (letrec*
                                         ((x-cnd7852
                                           (begin
                                             (write '(funapp 1367 52))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1367 56))
                                                (display "\n")
                                                'closed)
                                              v7329))))
                                         (if x-cnd7852
                                           #t
                                           (begin
                                             (write '(funapp 1370 42))
                                             (display "\n")
                                             (eq?
                                              (begin
                                                (write '(funapp 1370 46))
                                                (display "\n")
                                                'ignore)
                                              v7329))))))))))
                                g7849))
                             g7332))))
                        (if x-cnd7848
                          g7332
                          (begin
                            (write '(blame g7330 1375 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7330)))))))
                     g7847)))
                 (loop
                  (lambda ()
                    (letrec*
                     ((g7853
                       (begin
                         (write '(funapp 1386 52))
                         (display "\n")
                         (loop))))
                     g7853)))
                 (readit
                  (lambda (st)
                    (letrec*
                     ((g7854
                       (letrec*
                        ((x-cnd7855
                          (begin
                            (write '(funapp 1392 37))
                            (display "\n")
                            (equal?
                             (begin
                               (write '(funapp 1392 44))
                               (display "\n")
                               'opened)
                             st))))
                        (if x-cnd7855
                          (begin
                            (write '(funapp 1393 38))
                            (display "\n")
                            'opened)
                          (begin
                            (write '(funapp 1393 46))
                            (display "\n")
                            'ignore)))))
                     g7854)))
                 (read_
                  (lambda (x st)
                    (letrec*
                     ((g7856
                       (if x
                         (begin
                           (write '(funapp 1397 44))
                           (display "\n")
                           (readit st))
                         st)))
                     g7856)))
                 (closeit
                  (lambda (st)
                    (letrec*
                     ((g7857
                       (if cnd
                         (letrec*
                          ((g7858
                            (begin
                              (write '(funapp 1403 42))
                              (display "\n")
                              'closed)))
                          g7858)
                         (if cnd
                           (letrec*
                            ((g7859
                              (begin
                                (write '(funapp 1405 44))
                                (display "\n")
                                'ignore)))
                            g7859)
                           (letrec*
                            ((g7860
                              (begin
                                (write '(funapp 1406 45))
                                (display "\n")
                                (loop)))
                             (g7861 0))
                            g7861)))))
                     g7857)))
                 (close_
                  (lambda (x st)
                    (letrec*
                     ((g7862
                       (if x
                         (begin
                           (write '(funapp 1410 44))
                           (display "\n")
                           (closeit st))
                         st)))
                     g7862)))
                 (f
                  (lambda (x y st)
                    (letrec*
                     ((g7863
                       (letrec*
                        ((x7865
                          (begin
                            (write '(funapp 1415 41))
                            (display "\n")
                            (close_ x st))))
                        (begin
                          (write '(funapp 1415 57))
                          (display "\n")
                          (close_ y x7865))))
                      (g7864
                       (letrec*
                        ((x7866
                          (letrec*
                           ((x7867
                             (begin
                               (write '(funapp 1419 44))
                               (display "\n")
                               (read_ x st))))
                           (begin
                             (write '(funapp 1419 59))
                             (display "\n")
                             (read_ y x7867)))))
                        (begin
                          (write '(funapp 1420 25))
                          (display "\n")
                          (f x y x7866)))))
                     g7864)))
                 (next
                  (lambda (st)
                    (letrec*
                     ((g7868
                       (letrec*
                        ((x-cnd7869
                          (begin
                            (write '(funapp 1427 37))
                            (display "\n")
                            (equal?
                             (begin
                               (write '(funapp 1427 44))
                               (display "\n")
                               'init)
                             st))))
                        (if x-cnd7869
                          (begin
                            (write '(funapp 1428 38))
                            (display "\n")
                            'opened)
                          (begin
                            (write '(funapp 1428 46))
                            (display "\n")
                            'ignore)))))
                     g7868)))
                 (g
                  (lambda (b3 x st)
                    (letrec*
                     ((g7870
                       (letrec*
                        ((x-cnd7871
                          (begin
                            (write '(funapp 1435 37))
                            (display "\n")
                            (> b3 0))))
                        (if x-cnd7871
                          (letrec*
                           ((x7872
                             (begin
                               (write '(funapp 1437 44))
                               (display "\n")
                               (next st))))
                           (begin
                             (write '(funapp 1437 56))
                             (display "\n")
                             (f x #t x7872)))
                          (begin
                            (write '(funapp 1438 27))
                            (display "\n")
                            (f x #f st))))))
                     g7870)))
                 (main
                  (lambda (b2 b3)
                    (letrec*
                     ((g7873
                       (letrec*
                        ((x-cnd7875
                          (begin
                            (write '(funapp 1445 37))
                            (display "\n")
                            (> b2 0))))
                        (if x-cnd7875
                          (begin
                            (write '(funapp 1446 39))
                            (display "\n")
                            (g
                             b3
                             #t
                             (begin
                               (write '(funapp 1446 47))
                               (display "\n")
                               'opened)))
                          (begin
                            (write '(funapp 1446 57))
                            (display "\n")
                            (g
                             b3
                             #f
                             (begin
                               (write '(funapp 1446 65))
                               (display "\n")
                               'init))))))
                      (g7874
                       (begin (write '(funapp 1447 29)) (display "\n") 'unit)))
                     g7874))))
                (letrec*
                 ((g7876
                   (letrec*
                    ((x7879
                      (begin
                        (write '(funapp 1453 23))
                        (display "\n")
                        ((lambda (j7335 k7336 f7337)
                           (letrec*
                            ((g7880
                              (lambda (g7333 g7334)
                                (letrec*
                                 ((g7881
                                   (letrec*
                                    ((x7882
                                      (letrec*
                                       ((x7884
                                         (begin
                                           (write '(funapp 1462 46))
                                           (display "\n")
                                           (integer?/c j7335 k7336 g7333)))
                                        (x7883
                                         (begin
                                           (write '(funapp 1463 46))
                                           (display "\n")
                                           (integer?/c j7335 k7336 g7334))))
                                       (begin
                                         (write '(funapp 1464 38))
                                         (display "\n")
                                         (f7337 x7884 x7883)))))
                                    (begin
                                      (write '(funapp 1465 35))
                                      (display "\n")
                                      (any/c j7335 k7336 x7882)))))
                                 g7881))))
                            g7880))
                         (begin
                           (write '(funapp 1468 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1469 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7878 (input))
                     (x7877 (input)))
                    (begin
                      (write '(funapp 1473 21))
                      (display "\n")
                      (x7879 x7878 x7877)))))
                 g7876))))
             g7351))))
         g7349)))
      g7348))))
