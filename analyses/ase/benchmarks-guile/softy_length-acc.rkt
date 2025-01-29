(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7331 #t)) g7331)))
      (meta (lambda (v) (letrec* ((g7332 v)) g7332)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7333
            (letrec*
             ((g7334
               (letrec*
                ((x-e7335 lst))
                (letrec*
                 ((v1742 x-e7335))
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
                     ((x-cnd7336
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7336
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
             g7334)))
          g7333)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7337 (lambda (v) (letrec* ((g7338 v)) g7338)))) g7337)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7339
            (letrec*
             ((x7340 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7340)))))
          g7339))))
     (letrec*
      ((g7341
        (letrec*
         ((g7342
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
             ((g7343 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7344
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7345
                       (letrec*
                        ((x-cnd7346
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7346
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7345)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7347
                       (letrec*
                        ((x-cnd7348
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7348
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7347)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7349
                       (letrec*
                        ((x-cnd7350
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7350
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7349)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7351
                       (letrec*
                        ((x-cnd7352
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7353 #t)) g7353))
                             g7269))))
                        (if x-cnd7352
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7351)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7356 #t)) g7356))
                             g7272))))
                        (if x-cnd7355
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7354)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7357
                       (letrec*
                        ((x-cnd7358
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7358
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7357)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7359
                       (letrec*
                        ((x-cnd7360
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7360
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7359)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7362
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7361)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7363
                       (lambda (k j v)
                         (letrec*
                          ((g7364
                            (letrec*
                             ((x-cnd7365
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7365
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7364))))
                     g7363)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7366
                       (lambda (k j v)
                         (letrec*
                          ((g7367
                            (letrec*
                             ((x-cnd7368
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7368
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7372
                                  (letrec*
                                   ((x7373
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7373))))
                                 (x7369
                                  (letrec*
                                   ((x7371
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7370
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7371 k j x7370)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7372 x7369)))))))
                          g7367))))
                     g7366)))
                 (any? (lambda (v) (letrec* ((g7374 #t)) g7374)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7375
                       (letrec*
                        ((x7376
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7376)))))
                     g7375)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7377
                       (letrec*
                        ((x-cnd7378
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7379
                                  (letrec*
                                   ((x7380
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7380)))))
                                g7379))
                             g7284))))
                        (if x-cnd7378
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7377)))
                 (meta (lambda (v) (letrec* ((g7381 v)) g7381)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7383
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7384
                               (letrec*
                                ((x7385
                                  (letrec*
                                   ((x7387
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7386
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7387 x7386)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7385)))))
                             g7384))))
                        g7383))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7382
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7382)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7389
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7390
                               (letrec*
                                ((x7391
                                  (letrec*
                                   ((x7393
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7392
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7393 x7392)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7391)))))
                             g7390))))
                        g7389))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7388
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7388)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7395
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7396
                               (letrec*
                                ((x7397
                                  (letrec*
                                   ((x7399
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7398
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7399 x7398)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7397)))))
                             g7396))))
                        g7395))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7394
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7394)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7401
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7402
                               (letrec*
                                ((x7403
                                  (letrec*
                                   ((x7405
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7404
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7405 x7404)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7403)))))
                             g7402))))
                        g7401))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7400
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7400)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7407
                          (lambda (g7305)
                            (letrec*
                             ((g7408
                               (letrec*
                                ((x7409
                                  (letrec*
                                   ((x7410
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7410)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7409)))))
                             g7408))))
                        g7407))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7406
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7406)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7412
                          (lambda (g7309)
                            (letrec*
                             ((g7413
                               (letrec*
                                ((x7414
                                  (letrec*
                                   ((x7415
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7415)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7414)))))
                             g7413))))
                        g7412))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7411
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7411)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7417
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7418
                               (letrec*
                                ((x7419
                                  (letrec*
                                   ((x7421
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7420
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7421 x7420)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7419)))))
                             g7418))))
                        g7417))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7416
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7416)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7423
                          (lambda (g7318)
                            (letrec*
                             ((g7424
                               (letrec*
                                ((x7425
                                  (letrec*
                                   ((x7426
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7426)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7425)))))
                             g7424))))
                        g7423))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7422
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7422)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7428
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7429
                               (letrec*
                                ((x7430
                                  (letrec*
                                   ((x7432
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7431
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7432 x7431)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7430)))))
                             g7429))))
                        g7428))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7427
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7427)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7433
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7433)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7434
                       (letrec*
                        ((x7435
                          (letrec*
                           ((x7436
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7436)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7435)))))
                     g7434)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7437
                       (letrec*
                        ((x7440
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7440))))
                      (g7438
                       (letrec*
                        ((x7441
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7441))))
                      (g7439
                       (letrec*
                        ((x-cnd7442
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7442
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7445
                             (letrec*
                              ((x7446
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7446))))
                            (x7443
                             (letrec*
                              ((x7444
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7444)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7445 x7443)))))))
                     g7439)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7447
                       (letrec*
                        ((x7448
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7448)))))
                     g7447)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7449
                       (letrec*
                        ((x7450
                          (letrec*
                           ((x7451
                             (letrec*
                              ((x7452
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7452)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7451)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7450)))))
                     g7449)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7453
                       (letrec*
                        ((x7454
                          (letrec*
                           ((x7455
                             (letrec*
                              ((x7456
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7456)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7455)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7454)))))
                     g7453)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7457
                       (letrec*
                        ((x7460
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7460))))
                      (g7458
                       (letrec*
                        ((x7461
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7461))))
                      (g7459
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
                         ((g7462
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7463 res))
                         g7463))))
                     g7459)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7464
                       (letrec*
                        ((x7465
                          (letrec*
                           ((x7466
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7466)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7465)))))
                     g7464)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7467
                       (letrec*
                        ((x7468
                          (letrec*
                           ((x7469
                             (letrec*
                              ((x7470
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7470)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7469)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7468)))))
                     g7467)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7471
                       (letrec*
                        ((x7473
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7473))))
                      (g7472
                       (letrec*
                        ((x-cnd7474
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7474
                          #f
                          (letrec*
                           ((x-cnd7475
                             (letrec*
                              ((x7476
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7476 k)))))
                           (if x-cnd7475
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7477
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7477)))))))))
                     g7472)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7478
                       (letrec*
                        ((x7479
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7479)))))
                     g7478)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x7482
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7482))))
                      (g7481
                       (letrec*
                        ((x-cnd7483
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7483
                          ""
                          (letrec*
                           ((x7486
                             (letrec*
                              ((x7487
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7487))))
                            (x7484
                             (letrec*
                              ((x7485
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7485)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7486 x7484)))))))
                     g7481)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7488
                       (letrec*
                        ((x7491
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7491))))
                      (g7489
                       (letrec*
                        ((x7492
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7492))))
                      (g7490
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7493
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7493))))
                     g7490)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7494
                       (letrec*
                        ((x7495
                          (letrec*
                           ((x7496
                             (letrec*
                              ((x7497
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7497)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7496)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7495)))))
                     g7494)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7498
                       (letrec*
                        ((x7501
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7501))))
                      (g7499
                       (letrec*
                        ((x7502
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7502))))
                      (g7500
                       (letrec*
                        ((x-cnd7503
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7503
                          x
                          (letrec*
                           ((x7505
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7504
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7505 x7504)))))))
                     g7500)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7506
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7506)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7507
                       (letrec*
                        ((x-cnd7508
                          (letrec*
                           ((x7509 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7509)))))
                        (if x-cnd7508
                          (letrec*
                           ((x7510 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7510)))
                          #f))))
                     g7507)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7511
                       (letrec*
                        ((x7513
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7513))))
                      (g7512
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7514
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7515 (if val7243 val7243 #f)))
                               g7515)))))
                         g7514))))
                     g7512)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7516
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7517
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7517 9)))))
                        (letrec*
                         ((g7518
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7519
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7519 10)))))
                              (letrec*
                               ((g7520
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7521
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7521 32))))))
                               g7520)))))
                         g7518))))
                     g7516)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7522
                       (letrec*
                        ((x7523
                          (letrec*
                           ((x7524
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7524)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7523)))))
                     g7522)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7525
                       (letrec*
                        ((x7527
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7527))))
                      (g7526
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7526)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7528 #f)) g7528)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7529
                       (letrec*
                        ((x7530
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7530)))))
                     g7529)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7531
                       (letrec*
                        ((x7533
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7533))))
                      (g7532
                       (letrec*
                        ((x-cnd7534
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7534
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7532)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7535
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7536
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7538
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7537
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7538 x7537)))))
                              (letrec*
                               ((g7539
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7542
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7541
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7540
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7542 x7541 x7540)))))
                                    (letrec*
                                     ((g7543
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7551
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7550
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7547
                                               (letrec*
                                                ((x7549
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7548
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7549 x7548))))
                                              (x7544
                                               (letrec*
                                                ((x7546
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7545
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7546 x7545)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7551
                                                    x7550
                                                    x7547
                                                    x7544)))))
                                          (letrec*
                                           ((g7552
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7568
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7567
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7553
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7554
                                                      (letrec*
                                                       ((x7565
                                                         (letrec*
                                                          ((x7566
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
                                                            (= x7566 n))))
                                                        (x7555
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7556
                                                                 (letrec*
                                                                  ((x7563
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7557
                                                                    (letrec*
                                                                     ((x7560
                                                                       (letrec*
                                                                        ((x7562
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
                                                                         (x7561
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
                                                                           x7562
                                                                           x7561))))
                                                                      (x7558
                                                                       (letrec*
                                                                        ((x7559
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
                                                                           x7559)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7560
                                                                            x7558)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7563
                                                                        x7557)))))
                                                               g7556))))
                                                          (letrec*
                                                           ((g7564
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7564))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7565 x7555)))))
                                                    g7554))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7568 x7567 x7553))))))
                                           g7552)))))
                                     g7543)))))
                               g7539)))))
                         g7536))))
                     g7535)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7569
                       (letrec*
                        ((x7570
                          (letrec*
                           ((x7571
                             (letrec*
                              ((x7572
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7572)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7571)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7570)))))
                     g7569)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7573
                       (letrec*
                        ((x7574
                          (letrec*
                           ((x7575
                             (letrec*
                              ((x7576
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7576)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7575)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7574)))))
                     g7573)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7577
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7577)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7578
                       (letrec*
                        ((x7580
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7580))))
                      (g7579
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7581
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7582 (if val7251 val7251 #f)))
                               g7582)))))
                         g7581))))
                     g7579)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7583
                       (letrec*
                        ((x7586
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7586))))
                      (g7584
                       (letrec*
                        ((x7587
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7587))))
                      (g7585
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
                         ((g7588
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7589 res))
                         g7589))))
                     g7585)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7590
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7590)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7591
                       (letrec*
                        ((x7594
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7594))))
                      (g7592
                       (letrec*
                        ((x7595
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7595))))
                      (g7593
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7596
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7596))))
                     g7593)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7597
                       (letrec*
                        ((x7598
                          (letrec*
                           ((x7599
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7599)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7598)))))
                     g7597)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7600
                       (letrec*
                        ((x7601
                          (letrec*
                           ((x7602
                             (letrec*
                              ((x7603
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7603)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7602)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7601)))))
                     g7600)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7604
                       (letrec*
                        ((x7605
                          (letrec*
                           ((x7606
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7606)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7605)))))
                     g7604)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7608
                          (letrec*
                           ((x7609
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7609)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7608)))))
                     g7607)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x7613
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7613))))
                      (g7611
                       (letrec*
                        ((x7614
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7614))))
                      (g7612
                       (letrec*
                        ((x7615
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7615)))))
                     g7612)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x7617
                          (letrec*
                           ((x7618
                             (letrec*
                              ((x7619
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7619)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7618)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7617)))))
                     g7616)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7622
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7622))))
                      (g7621
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7621)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7623
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7623)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7624
                       (letrec*
                        ((x7625
                          (letrec*
                           ((x7626
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7626)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7625)))))
                     g7624)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7627
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7627)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7628
                       (letrec*
                        ((x7630
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7630))))
                      (g7629
                       (letrec*
                        ((x-cnd7631
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7631
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7634
                             (letrec*
                              ((x7635
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7635))))
                            (x7632
                             (letrec*
                              ((x7633
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7633)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7634 x7632)))))))
                     g7629)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7636
                       (letrec*
                        ((x7637
                          (letrec*
                           ((x7638
                             (letrec*
                              ((x7639
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7639)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7638)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7637)))))
                     g7636)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7640
                       (letrec*
                        ((x7641
                          (letrec*
                           ((x7642
                             (letrec*
                              ((x7643
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7643)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7642)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7641)))))
                     g7640)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7644
                       (letrec*
                        ((x7646
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7646))))
                      (g7645
                       (letrec*
                        ((x7647
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7647)))))
                     g7645)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7648
                       (letrec*
                        ((x7649
                          (letrec*
                           ((x7650
                             (letrec*
                              ((x7651
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7651)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7650)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7649)))))
                     g7648)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7652
                       (letrec*
                        ((x7655
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7655))))
                      (g7653
                       (letrec*
                        ((x7656
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7656))))
                      (g7654
                       (if cnd
                         (letrec*
                          ((g7657
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7657)
                         (if cnd
                           (letrec*
                            ((g7658
                              (letrec*
                               ((x7659
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7659)))))
                            g7658)
                           (if cnd
                             (letrec*
                              ((g7660
                                (letrec*
                                 ((x7662
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7661
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7662 x7661)))))
                              g7660)
                             (if cnd
                               (letrec*
                                ((g7663
                                  (letrec*
                                   ((x7666
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7665
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7664
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7666 x7665 x7664)))))
                                g7663)
                               (if cnd
                                 (letrec*
                                  ((g7667
                                    (letrec*
                                     ((x7671
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7669
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7668
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7671 x7670 x7669 x7668)))))
                                  g7667)
                                 (if cnd
                                   (letrec*
                                    ((g7672
                                      (letrec*
                                       ((x7678
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7677
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7676
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7675
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7673
                                         (letrec*
                                          ((x7674
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7674)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7678
                                          x7677
                                          x7676
                                          x7675
                                          x7673)))))
                                    g7672)
                                   (if cnd
                                     (letrec*
                                      ((g7679
                                        (letrec*
                                         ((x7687
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7686
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7685
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7684
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7682
                                           (letrec*
                                            ((x7683
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7683))))
                                          (x7680
                                           (letrec*
                                            ((x7681
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7681)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7687
                                            x7686
                                            x7685
                                            x7684
                                            x7682
                                            x7680)))))
                                      g7679)
                                     (if cnd
                                       (letrec*
                                        ((g7688
                                          (letrec*
                                           ((x7698
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7694))))
                                            (x7691
                                             (letrec*
                                              ((x7692
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7692))))
                                            (x7689
                                             (letrec*
                                              ((x7690
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7690)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7698
                                              x7697
                                              x7696
                                              x7695
                                              x7693
                                              x7691
                                              x7689)))))
                                        g7688)
                                       (letrec*
                                        ((g7699
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7699)))))))))))
                     g7654)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7700
                       (letrec*
                        ((x7702
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7702))))
                      (g7701
                       (letrec*
                        ((x-cnd7703
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7703
                          #f
                          (letrec*
                           ((x-cnd7704
                             (letrec*
                              ((x7705
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7705 e)))))
                           (if x-cnd7704
                             l
                             (letrec*
                              ((x7706
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7706)))))))))
                     g7701)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7707
                       (letrec*
                        ((x7708
                          (letrec*
                           ((x7709
                             (letrec*
                              ((x7710
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7710)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7709)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7708)))))
                     g7707)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7711
                       (letrec*
                        ((x7712
                          (letrec*
                           ((x7713
                             (letrec*
                              ((x7714
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7714)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7713)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7712)))))
                     g7711)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7715
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7715)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7716
                       (letrec*
                        ((x7718
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7718))))
                      (g7717
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7717)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7719
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7720
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7720))))
                     g7719)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7721
                       (letrec*
                        ((x7722
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7722)))))
                     g7721)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7723
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7726
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7724
                             (letrec*
                              ((x7725
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7725)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7726 x7724)))))
                        (letrec*
                         ((g7727
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7727))))
                     g7723)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((x7729
                          (letrec*
                           ((x7730
                             (letrec*
                              ((x7731
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7731)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7730)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7729)))))
                     g7728)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((x-cnd7733
                          (letrec*
                           ((x7734 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7734 c)))))
                        (if x-cnd7733
                          (letrec*
                           ((x7735 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7735)))
                          #f))))
                     g7732)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7736
                       (letrec*
                        ((x7738
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7738))))
                      (g7737
                       (letrec*
                        ((x-cnd7739
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7739
                          #f
                          (letrec*
                           ((x-cnd7740
                             (letrec*
                              ((x7741
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7741 k)))))
                           (if x-cnd7740
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7742
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7742)))))))))
                     g7737)))
                 (not (lambda (x) (letrec* ((g7743 (if x #f #t))) g7743)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7744
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7744)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7745
                       (letrec*
                        ((x7747
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7747))))
                      (g7746
                       (letrec*
                        ((x-cnd7748
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7748
                          #f
                          (letrec*
                           ((x-cnd7749
                             (letrec*
                              ((x7750
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7750 e)))))
                           (if x-cnd7749
                             l
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7751)))))))))
                     g7746)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7752
                       (letrec*
                        ((x7753
                          (letrec*
                           ((x7754
                             (letrec*
                              ((x7755
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7755)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7754)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7753)))))
                     g7752)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7756
                       (letrec*
                        ((x7758
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7758))))
                      (g7757
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7759
                               (letrec*
                                ((x-cnd7760
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7760
                                  0
                                  (letrec*
                                   ((x7761
                                     (letrec*
                                      ((x7762
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7762)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7761)))))))
                             g7759))))
                        (letrec*
                         ((g7763
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7763))))
                     g7757)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7764
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7767))))
                      (g7765
                       (letrec*
                        ((x7768
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7768))))
                      (g7766
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7769
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7769))))
                     g7766)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7770
                       (letrec*
                        ((x7771
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7771)))))
                     g7770)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7772
                       (letrec*
                        ((x7773
                          (letrec*
                           ((x7774
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7774)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7773)))))
                     g7772)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7775
                       (letrec*
                        ((x7777
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7777))))
                      (g7776
                       (letrec*
                        ((x-cnd7778
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7778
                          #f
                          (letrec*
                           ((x-cnd7779
                             (letrec*
                              ((x7780
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7780 k)))))
                           (if x-cnd7779
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7781
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7781)))))))))
                     g7776)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7782
                       (letrec*
                        ((x7783
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7783)))))
                     g7782)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7784
                       (letrec*
                        ((x7787
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7787))))
                      (g7785
                       (letrec*
                        ((x7788
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7788))))
                      (g7786
                       (letrec*
                        ((x7789
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7789)))))
                     g7786)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7790
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7791
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7791))))
                     g7790)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7792
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7795))))
                      (g7793
                       (letrec*
                        ((x7796
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7796))))
                      (g7794
                       (letrec*
                        ((x-cnd7797
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7797
                          #t
                          (letrec*
                           ((x-cnd7798
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7798
                             (letrec*
                              ((g7799
                                (letrec*
                                 ((x7801
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7801))))
                               (g7800
                                (letrec*
                                 ((x7802
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7802)))))
                              g7800)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7794)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7803
                       (letrec*
                        ((x7805
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7805))))
                      (g7804
                       (letrec*
                        ((x-cnd7806
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7806
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7804)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7807
                       (letrec*
                        ((x7810
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7810))))
                      (g7808
                       (letrec*
                        ((x7811
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7811))))
                      (g7809
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7812
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7812))))
                     g7809)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7813
                       (letrec*
                        ((x7814
                          (letrec*
                           ((x7815
                             (letrec*
                              ((x7816
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7816)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7815)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7814)))))
                     g7813)))
                 (newline (lambda () (letrec* ((g7817 #f)) g7817)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7818
                       (letrec*
                        ((x7820
                          (letrec*
                           ((x7821
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7821))))
                         (x7819
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7820 x7819)))))
                     g7818)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7822
                       (letrec*
                        ((x7824
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7824))))
                      (g7823
                       (letrec*
                        ((x7825
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7825)))))
                     g7823)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7826
                       (letrec*
                        ((x7830
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7830))))
                      (g7827
                       (letrec*
                        ((x7831
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7831))))
                      (g7828
                       (letrec*
                        ((x7832
                          (letrec*
                           ((x7833
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7833)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7832))))
                      (g7829
                       (letrec*
                        ((x-cnd7834
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7834
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7836
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7835
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7836 x7835)))))))
                     g7829)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7837
                       (letrec*
                        ((x-cnd7838
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7838
                          a
                          (letrec*
                           ((x7839
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7839)))))))
                     g7837)))
                 (len
                  (lambda (xs)
                    (letrec*
                     ((g7840
                       (begin
                         (write '(funapp 1349 53))
                         (display "\n")
                         (len-acc xs 0))))
                     g7840)))
                 (len-acc
                  (lambda (xs acc)
                    (letrec*
                     ((g7841
                       (letrec*
                        ((x-cnd7842
                          (begin
                            (write '(funapp 1355 37))
                            (display "\n")
                            (empty? xs))))
                        (if x-cnd7842
                          acc
                          (letrec*
                           ((x7844
                             (begin
                               (write '(funapp 1359 36))
                               (display "\n")
                               (cdr xs)))
                            (x7843
                             (begin
                               (write '(funapp 1359 53))
                               (display "\n")
                               (+ 1 acc))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (len-acc x7844 x7843)))))))
                     g7841))))
                (letrec*
                 ((g7845
                   (letrec*
                    ((x7847
                      (begin
                        (write '(funapp 1366 23))
                        (display "\n")
                        ((lambda (j7328 k7329 f7330)
                           (letrec*
                            ((g7848
                              (lambda (g7327)
                                (letrec*
                                 ((g7849
                                   (letrec*
                                    ((x7853
                                      (letrec*
                                       ((x7854
                                         (begin
                                           (write '(funapp 1375 46))
                                           (display "\n")
                                           (>=/c 0))))
                                       (begin
                                         (write '(funapp 1376 38))
                                         (display "\n")
                                         (and/c integer?/c x7854))))
                                     (x7850
                                      (letrec*
                                       ((x7851
                                         (letrec*
                                          ((x7852
                                            (begin
                                              (write '(funapp 1381 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1382 41))
                                            (display "\n")
                                            (x7852 j7328 k7329 g7327)))))
                                       (begin
                                         (write '(funapp 1383 38))
                                         (display "\n")
                                         (f7330 x7851)))))
                                    (begin
                                      (write '(funapp 1384 35))
                                      (display "\n")
                                      (x7853 j7328 k7329 x7850)))))
                                 g7849))))
                            g7848))
                         (begin
                           (write '(funapp 1387 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1388 23))
                           (display "\n")
                           'importer)
                         len)))
                     (x7846 (input)))
                    (begin
                      (write '(funapp 1391 21))
                      (display "\n")
                      (x7847 x7846)))))
                 g7845))))
             g7344))))
         g7342)))
      g7341))))
