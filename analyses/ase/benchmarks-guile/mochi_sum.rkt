(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7332 #t)) g7332)))
      (meta (lambda (v) (letrec* ((g7333 v)) g7333)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7334
            (letrec*
             ((g7335
               (letrec*
                ((x-e7336 lst))
                (letrec*
                 ((v1742 x-e7336))
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
                     ((x-cnd7337
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7337
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
             g7335)))
          g7334)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7338 (lambda (v) (letrec* ((g7339 v)) g7339)))) g7338)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7340
            (letrec*
             ((x7341 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7341)))))
          g7340))))
     (letrec*
      ((g7342
        (letrec*
         ((g7343
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
             ((g7344 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7345
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7346
                       (letrec*
                        ((x-cnd7347
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7347
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7346)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7348
                       (letrec*
                        ((x-cnd7349
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7349
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7348)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7350
                       (letrec*
                        ((x-cnd7351
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7351
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7350)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7352
                       (letrec*
                        ((x-cnd7353
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7354 #t)) g7354))
                             g7269))))
                        (if x-cnd7353
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7352)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7355
                       (letrec*
                        ((x-cnd7356
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7357 #t)) g7357))
                             g7272))))
                        (if x-cnd7356
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7355)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7359
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7358)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7361
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7360)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7362
                       (letrec*
                        ((x-cnd7363
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7363
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7362)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7364
                       (lambda (k j v)
                         (letrec*
                          ((g7365
                            (letrec*
                             ((x-cnd7366
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7366
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7365))))
                     g7364)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7367
                       (lambda (k j v)
                         (letrec*
                          ((g7368
                            (letrec*
                             ((x-cnd7369
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7369
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7373
                                  (letrec*
                                   ((x7374
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7374))))
                                 (x7370
                                  (letrec*
                                   ((x7372
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7371
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7372 k j x7371)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7373 x7370)))))))
                          g7368))))
                     g7367)))
                 (any? (lambda (v) (letrec* ((g7375 #t)) g7375)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7376
                       (letrec*
                        ((x7377
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7377)))))
                     g7376)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7378
                       (letrec*
                        ((x-cnd7379
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7380
                                  (letrec*
                                   ((x7381
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7381)))))
                                g7380))
                             g7284))))
                        (if x-cnd7379
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7378)))
                 (meta (lambda (v) (letrec* ((g7382 v)) g7382)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7384
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7385
                               (letrec*
                                ((x7386
                                  (letrec*
                                   ((x7388
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7387
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7388 x7387)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7386)))))
                             g7385))))
                        g7384))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7383
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7383)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7390
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7391
                               (letrec*
                                ((x7392
                                  (letrec*
                                   ((x7394
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7393
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7394 x7393)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7392)))))
                             g7391))))
                        g7390))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7389
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7389)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7396
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7397
                               (letrec*
                                ((x7398
                                  (letrec*
                                   ((x7400
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7399
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7400 x7399)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7398)))))
                             g7397))))
                        g7396))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7395
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7395)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7402
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7403
                               (letrec*
                                ((x7404
                                  (letrec*
                                   ((x7406
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7405
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7406 x7405)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7404)))))
                             g7403))))
                        g7402))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7401
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7401)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7408
                          (lambda (g7305)
                            (letrec*
                             ((g7409
                               (letrec*
                                ((x7410
                                  (letrec*
                                   ((x7411
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7411)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7410)))))
                             g7409))))
                        g7408))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7407
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7407)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7413
                          (lambda (g7309)
                            (letrec*
                             ((g7414
                               (letrec*
                                ((x7415
                                  (letrec*
                                   ((x7416
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7416)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7415)))))
                             g7414))))
                        g7413))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7412
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7412)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7418
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7419
                               (letrec*
                                ((x7420
                                  (letrec*
                                   ((x7422
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7421
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7422 x7421)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7420)))))
                             g7419))))
                        g7418))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7417
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7417)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7424
                          (lambda (g7318)
                            (letrec*
                             ((g7425
                               (letrec*
                                ((x7426
                                  (letrec*
                                   ((x7427
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7427)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7426)))))
                             g7425))))
                        g7424))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7423
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7423)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7429
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7430
                               (letrec*
                                ((x7431
                                  (letrec*
                                   ((x7433
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7432
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7433 x7432)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7431)))))
                             g7430))))
                        g7429))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7428
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7428)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7434
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7434)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7435
                       (letrec*
                        ((x7436
                          (letrec*
                           ((x7437
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7437)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7436)))))
                     g7435)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7438
                       (letrec*
                        ((x7441
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7441))))
                      (g7439
                       (letrec*
                        ((x7442
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7442))))
                      (g7440
                       (letrec*
                        ((x-cnd7443
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7443
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7446
                             (letrec*
                              ((x7447
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7447))))
                            (x7444
                             (letrec*
                              ((x7445
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7445)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7446 x7444)))))))
                     g7440)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7448
                       (letrec*
                        ((x7449
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7449)))))
                     g7448)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7450
                       (letrec*
                        ((x7451
                          (letrec*
                           ((x7452
                             (letrec*
                              ((x7453
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7453)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7452)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7451)))))
                     g7450)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7457)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7456)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7455)))))
                     g7454)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7458
                       (letrec*
                        ((x7461
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7461))))
                      (g7459
                       (letrec*
                        ((x7462
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7462))))
                      (g7460
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
                         ((g7463
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7464 res))
                         g7464))))
                     g7460)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7465
                       (letrec*
                        ((x7466
                          (letrec*
                           ((x7467
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7467)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7466)))))
                     g7465)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7468
                       (letrec*
                        ((x7469
                          (letrec*
                           ((x7470
                             (letrec*
                              ((x7471
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7471)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7470)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7469)))))
                     g7468)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7472
                       (letrec*
                        ((x7474
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7474))))
                      (g7473
                       (letrec*
                        ((x-cnd7475
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7475
                          #f
                          (letrec*
                           ((x-cnd7476
                             (letrec*
                              ((x7477
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7477 k)))))
                           (if x-cnd7476
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7478
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7478)))))))))
                     g7473)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7479
                       (letrec*
                        ((x7480
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7480)))))
                     g7479)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7481
                       (letrec*
                        ((x7483
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7483))))
                      (g7482
                       (letrec*
                        ((x-cnd7484
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7484
                          ""
                          (letrec*
                           ((x7487
                             (letrec*
                              ((x7488
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7488))))
                            (x7485
                             (letrec*
                              ((x7486
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7486)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7487 x7485)))))))
                     g7482)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7489
                       (letrec*
                        ((x7492
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7492))))
                      (g7490
                       (letrec*
                        ((x7493
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7493))))
                      (g7491
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7494
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7494))))
                     g7491)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7495
                       (letrec*
                        ((x7496
                          (letrec*
                           ((x7497
                             (letrec*
                              ((x7498
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7498)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7497)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7496)))))
                     g7495)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7499
                       (letrec*
                        ((x7502
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7502))))
                      (g7500
                       (letrec*
                        ((x7503
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7503))))
                      (g7501
                       (letrec*
                        ((x-cnd7504
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7504
                          x
                          (letrec*
                           ((x7506
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7505
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7506 x7505)))))))
                     g7501)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7507
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7507)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7508
                       (letrec*
                        ((x-cnd7509
                          (letrec*
                           ((x7510 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7510)))))
                        (if x-cnd7509
                          (letrec*
                           ((x7511 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7511)))
                          #f))))
                     g7508)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7512
                       (letrec*
                        ((x7514
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7514))))
                      (g7513
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7515
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7516 (if val7243 val7243 #f)))
                               g7516)))))
                         g7515))))
                     g7513)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7517
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7518
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7518 9)))))
                        (letrec*
                         ((g7519
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7520
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7520 10)))))
                              (letrec*
                               ((g7521
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7522
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7522 32))))))
                               g7521)))))
                         g7519))))
                     g7517)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7523
                       (letrec*
                        ((x7524
                          (letrec*
                           ((x7525
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7525)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7524)))))
                     g7523)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7526
                       (letrec*
                        ((x7528
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7528))))
                      (g7527
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7527)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7529 #f)) g7529)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7530
                       (letrec*
                        ((x7531
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7531)))))
                     g7530)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((x7534
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7534))))
                      (g7533
                       (letrec*
                        ((x-cnd7535
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7535
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7533)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7536
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7537
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7539
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7538
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7539 x7538)))))
                              (letrec*
                               ((g7540
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7543
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7542
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7541
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7543 x7542 x7541)))))
                                    (letrec*
                                     ((g7544
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7552
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7551
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7548
                                               (letrec*
                                                ((x7550
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7549
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7550 x7549))))
                                              (x7545
                                               (letrec*
                                                ((x7547
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7546
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7547 x7546)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7552
                                                    x7551
                                                    x7548
                                                    x7545)))))
                                          (letrec*
                                           ((g7553
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7569
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7568
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7554
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7555
                                                      (letrec*
                                                       ((x7566
                                                         (letrec*
                                                          ((x7567
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
                                                            (= x7567 n))))
                                                        (x7556
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7557
                                                                 (letrec*
                                                                  ((x7564
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7558
                                                                    (letrec*
                                                                     ((x7561
                                                                       (letrec*
                                                                        ((x7563
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
                                                                         (x7562
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
                                                                           x7563
                                                                           x7562))))
                                                                      (x7559
                                                                       (letrec*
                                                                        ((x7560
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
                                                                           x7560)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7561
                                                                            x7559)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7564
                                                                        x7558)))))
                                                               g7557))))
                                                          (letrec*
                                                           ((g7565
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7565))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7566 x7556)))))
                                                    g7555))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7569 x7568 x7554))))))
                                           g7553)))))
                                     g7544)))))
                               g7540)))))
                         g7537))))
                     g7536)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7570
                       (letrec*
                        ((x7571
                          (letrec*
                           ((x7572
                             (letrec*
                              ((x7573
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7573)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7572)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7571)))))
                     g7570)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7577)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7576)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7575)))))
                     g7574)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7578
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7578)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7579
                       (letrec*
                        ((x7581
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7581))))
                      (g7580
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7582
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7583 (if val7251 val7251 #f)))
                               g7583)))))
                         g7582))))
                     g7580)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7584
                       (letrec*
                        ((x7587
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7587))))
                      (g7585
                       (letrec*
                        ((x7588
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7588))))
                      (g7586
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
                         ((g7589
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7590 res))
                         g7590))))
                     g7586)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7591
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7591)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7592
                       (letrec*
                        ((x7595
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7595))))
                      (g7593
                       (letrec*
                        ((x7596
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7596))))
                      (g7594
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7597
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7597))))
                     g7594)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7598
                       (letrec*
                        ((x7599
                          (letrec*
                           ((x7600
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7600)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7599)))))
                     g7598)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7601
                       (letrec*
                        ((x7602
                          (letrec*
                           ((x7603
                             (letrec*
                              ((x7604
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7604)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7603)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7602)))))
                     g7601)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7605
                       (letrec*
                        ((x7606
                          (letrec*
                           ((x7607
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7607)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7606)))))
                     g7605)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7608
                       (letrec*
                        ((x7609
                          (letrec*
                           ((x7610
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7610)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7609)))))
                     g7608)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7611
                       (letrec*
                        ((x7614
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7614))))
                      (g7612
                       (letrec*
                        ((x7615
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7615))))
                      (g7613
                       (letrec*
                        ((x7616
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7616)))))
                     g7613)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7617
                       (letrec*
                        ((x7618
                          (letrec*
                           ((x7619
                             (letrec*
                              ((x7620
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7620)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7619)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7618)))))
                     g7617)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7621
                       (letrec*
                        ((x7623
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7623))))
                      (g7622
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7622)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7624
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7624)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7625
                       (letrec*
                        ((x7626
                          (letrec*
                           ((x7627
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7627)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7626)))))
                     g7625)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7628
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7628)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7629
                       (letrec*
                        ((x7631
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7631))))
                      (g7630
                       (letrec*
                        ((x-cnd7632
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7632
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7635
                             (letrec*
                              ((x7636
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7636))))
                            (x7633
                             (letrec*
                              ((x7634
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7634)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7635 x7633)))))))
                     g7630)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7637
                       (letrec*
                        ((x7638
                          (letrec*
                           ((x7639
                             (letrec*
                              ((x7640
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7640)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7639)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7638)))))
                     g7637)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7644)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7643)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7642)))))
                     g7641)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7645
                       (letrec*
                        ((x7647
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7647))))
                      (g7646
                       (letrec*
                        ((x7648
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7648)))))
                     g7646)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7649
                       (letrec*
                        ((x7650
                          (letrec*
                           ((x7651
                             (letrec*
                              ((x7652
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7652)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7651)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7650)))))
                     g7649)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7653
                       (letrec*
                        ((x7656
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7656))))
                      (g7654
                       (letrec*
                        ((x7657
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7657))))
                      (g7655
                       (if cnd
                         (letrec*
                          ((g7658
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7658)
                         (if cnd
                           (letrec*
                            ((g7659
                              (letrec*
                               ((x7660
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7660)))))
                            g7659)
                           (if cnd
                             (letrec*
                              ((g7661
                                (letrec*
                                 ((x7663
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7662
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7663 x7662)))))
                              g7661)
                             (if cnd
                               (letrec*
                                ((g7664
                                  (letrec*
                                   ((x7667
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7666
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7665
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7667 x7666 x7665)))))
                                g7664)
                               (if cnd
                                 (letrec*
                                  ((g7668
                                    (letrec*
                                     ((x7672
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7669
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7672 x7671 x7670 x7669)))))
                                  g7668)
                                 (if cnd
                                   (letrec*
                                    ((g7673
                                      (letrec*
                                       ((x7679
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7678
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7677
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7676
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7674
                                         (letrec*
                                          ((x7675
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7675)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7679
                                          x7678
                                          x7677
                                          x7676
                                          x7674)))))
                                    g7673)
                                   (if cnd
                                     (letrec*
                                      ((g7680
                                        (letrec*
                                         ((x7688
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7687
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7686
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7685
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7683
                                           (letrec*
                                            ((x7684
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7684))))
                                          (x7681
                                           (letrec*
                                            ((x7682
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7682)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7688
                                            x7687
                                            x7686
                                            x7685
                                            x7683
                                            x7681)))))
                                      g7680)
                                     (if cnd
                                       (letrec*
                                        ((g7689
                                          (letrec*
                                           ((x7699
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7695))))
                                            (x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7693))))
                                            (x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7691)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7699
                                              x7698
                                              x7697
                                              x7696
                                              x7694
                                              x7692
                                              x7690)))))
                                        g7689)
                                       (letrec*
                                        ((g7700
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7700)))))))))))
                     g7655)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7701
                       (letrec*
                        ((x7703
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7703))))
                      (g7702
                       (letrec*
                        ((x-cnd7704
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7704
                          #f
                          (letrec*
                           ((x-cnd7705
                             (letrec*
                              ((x7706
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7706 e)))))
                           (if x-cnd7705
                             l
                             (letrec*
                              ((x7707
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7707)))))))))
                     g7702)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7708
                       (letrec*
                        ((x7709
                          (letrec*
                           ((x7710
                             (letrec*
                              ((x7711
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7711)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7710)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7709)))))
                     g7708)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7715)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7714)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7713)))))
                     g7712)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7716
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7716)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7717
                       (letrec*
                        ((x7719
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7719))))
                      (g7718
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7718)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7720
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7721
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7721))))
                     g7720)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((x7723
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7723)))))
                     g7722)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7724
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7727
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7725
                             (letrec*
                              ((x7726
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7726)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7727 x7725)))))
                        (letrec*
                         ((g7728
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7728))))
                     g7724)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((x7730
                          (letrec*
                           ((x7731
                             (letrec*
                              ((x7732
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7732)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7731)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7730)))))
                     g7729)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((x-cnd7734
                          (letrec*
                           ((x7735 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7735 c)))))
                        (if x-cnd7734
                          (letrec*
                           ((x7736 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7736)))
                          #f))))
                     g7733)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((x7739
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7739))))
                      (g7738
                       (letrec*
                        ((x-cnd7740
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7740
                          #f
                          (letrec*
                           ((x-cnd7741
                             (letrec*
                              ((x7742
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7742 k)))))
                           (if x-cnd7741
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7743
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7743)))))))))
                     g7738)))
                 (not (lambda (x) (letrec* ((g7744 (if x #f #t))) g7744)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7745
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7745)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7746
                       (letrec*
                        ((x7748
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7748))))
                      (g7747
                       (letrec*
                        ((x-cnd7749
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7749
                          #f
                          (letrec*
                           ((x-cnd7750
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7751 e)))))
                           (if x-cnd7750
                             l
                             (letrec*
                              ((x7752
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7752)))))))))
                     g7747)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7753
                       (letrec*
                        ((x7754
                          (letrec*
                           ((x7755
                             (letrec*
                              ((x7756
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7756)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7755)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7754)))))
                     g7753)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7757
                       (letrec*
                        ((x7759
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7759))))
                      (g7758
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7760
                               (letrec*
                                ((x-cnd7761
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7761
                                  0
                                  (letrec*
                                   ((x7762
                                     (letrec*
                                      ((x7763
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7763)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7762)))))))
                             g7760))))
                        (letrec*
                         ((g7764
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7764))))
                     g7758)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7765
                       (letrec*
                        ((x7768
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7768))))
                      (g7766
                       (letrec*
                        ((x7769
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7769))))
                      (g7767
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7770
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7770))))
                     g7767)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7771
                       (letrec*
                        ((x7772
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7772)))))
                     g7771)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7773
                       (letrec*
                        ((x7774
                          (letrec*
                           ((x7775
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7775)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7774)))))
                     g7773)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7776
                       (letrec*
                        ((x7778
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7778))))
                      (g7777
                       (letrec*
                        ((x-cnd7779
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7779
                          #f
                          (letrec*
                           ((x-cnd7780
                             (letrec*
                              ((x7781
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7781 k)))))
                           (if x-cnd7780
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7782
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7782)))))))))
                     g7777)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7783
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7784)))))
                     g7783)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7785
                       (letrec*
                        ((x7788
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7788))))
                      (g7786
                       (letrec*
                        ((x7789
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7789))))
                      (g7787
                       (letrec*
                        ((x7790
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7790)))))
                     g7787)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7792
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7792))))
                     g7791)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7793
                       (letrec*
                        ((x7796
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7796))))
                      (g7794
                       (letrec*
                        ((x7797
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7797))))
                      (g7795
                       (letrec*
                        ((x-cnd7798
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7798
                          #t
                          (letrec*
                           ((x-cnd7799
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7799
                             (letrec*
                              ((g7800
                                (letrec*
                                 ((x7802
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7802))))
                               (g7801
                                (letrec*
                                 ((x7803
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7803)))))
                              g7801)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7795)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7804
                       (letrec*
                        ((x7806
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7806))))
                      (g7805
                       (letrec*
                        ((x-cnd7807
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7807
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7805)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7808
                       (letrec*
                        ((x7811
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7811))))
                      (g7809
                       (letrec*
                        ((x7812
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7812))))
                      (g7810
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7813
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7813))))
                     g7810)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7814
                       (letrec*
                        ((x7815
                          (letrec*
                           ((x7816
                             (letrec*
                              ((x7817
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7817)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7816)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7815)))))
                     g7814)))
                 (newline (lambda () (letrec* ((g7818 #f)) g7818)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7819
                       (letrec*
                        ((x7821
                          (letrec*
                           ((x7822
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7822))))
                         (x7820
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7821 x7820)))))
                     g7819)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7823
                       (letrec*
                        ((x7825
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7825))))
                      (g7824
                       (letrec*
                        ((x7826
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7826)))))
                     g7824)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7827
                       (letrec*
                        ((x7831
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7831))))
                      (g7828
                       (letrec*
                        ((x7832
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7832))))
                      (g7829
                       (letrec*
                        ((x7833
                          (letrec*
                           ((x7834
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7834)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7833))))
                      (g7830
                       (letrec*
                        ((x-cnd7835
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7835
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7837
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7836
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7837 x7836)))))))
                     g7830)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7838
                       (letrec*
                        ((x-cnd7839
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7839
                          a
                          (letrec*
                           ((x7840
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7840)))))))
                     g7838)))
                 (sum
                  (lambda (n)
                    (letrec*
                     ((g7841
                       (letrec*
                        ((x-cnd7842
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (<= n 0))))
                        (if x-cnd7842
                          0
                          (letrec*
                           ((x7843
                             (letrec*
                              ((x7844
                                (begin
                                  (write '(funapp 1358 53))
                                  (display "\n")
                                  (- n 1))))
                              (begin
                                (write '(funapp 1358 63))
                                (display "\n")
                                (sum x7844)))))
                           (begin
                             (write '(funapp 1359 28))
                             (display "\n")
                             (+ n x7843)))))))
                     g7841))))
                (letrec*
                 ((g7845
                   (begin
                     (write '(funapp 1363 20))
                     (display "\n")
                     ((lambda (j7328 k7329 f7330)
                        (letrec*
                         ((g7846
                           (lambda (g7327)
                             (letrec*
                              ((g7847
                                (letrec*
                                 ((x7331
                                   (begin
                                     (write '(funapp 1370 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (letrec*
                                  ((g7848
                                    (letrec*
                                     ((x7850
                                       (begin
                                         (write '(funapp 1375 38))
                                         (display "\n")
                                         ((lambda (n)
                                            (letrec*
                                             ((g7851
                                               (letrec*
                                                ((x7852
                                                  (begin
                                                    (write '(funapp 1379 53))
                                                    (display "\n")
                                                    (>=/c n))))
                                                (begin
                                                  (write '(funapp 1380 45))
                                                  (display "\n")
                                                  (and/c integer?/c x7852)))))
                                             g7851))
                                          x7331)))
                                      (x7849
                                       (begin
                                         (write '(funapp 1383 44))
                                         (display "\n")
                                         (f7330 x7331))))
                                     (begin
                                       (write '(funapp 1384 36))
                                       (display "\n")
                                       (x7850 j7328 k7329 x7849)))))
                                  g7848))))
                              g7847))))
                         g7846))
                      (begin (write '(funapp 1388 20)) (display "\n") 'module)
                      (begin
                        (write '(funapp 1389 20))
                        (display "\n")
                        'importer)
                      sum))))
                 g7845))))
             g7345))))
         g7343)))
      g7342))))
