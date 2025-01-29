(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7337 #t)) g7337)))
      (meta (lambda (v) (letrec* ((g7338 v)) g7338)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7339
            (letrec*
             ((g7340
               (letrec*
                ((x-e7341 lst))
                (letrec*
                 ((v1742 x-e7341))
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
                     ((x-cnd7342
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7342
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
             g7340)))
          g7339)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7343 (lambda (v) (letrec* ((g7344 v)) g7344)))) g7343)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7345
            (letrec*
             ((x7346 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7346)))))
          g7345))))
     (letrec*
      ((g7347
        (letrec*
         ((g7348
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
             ((g7349 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7350
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7351
                       (letrec*
                        ((x-cnd7352
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7352
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7351)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7353
                       (letrec*
                        ((x-cnd7354
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7354
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7353)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7355
                       (letrec*
                        ((x-cnd7356
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7356
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7355)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7357
                       (letrec*
                        ((x-cnd7358
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7359 #t)) g7359))
                             g7269))))
                        (if x-cnd7358
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7357)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7362 #t)) g7362))
                             g7272))))
                        (if x-cnd7361
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7360)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7364
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7363)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7365
                       (letrec*
                        ((x-cnd7366
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7366
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7365)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7367
                       (letrec*
                        ((x-cnd7368
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7368
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7367)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7369
                       (lambda (k j v)
                         (letrec*
                          ((g7370
                            (letrec*
                             ((x-cnd7371
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7371
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7370))))
                     g7369)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7372
                       (lambda (k j v)
                         (letrec*
                          ((g7373
                            (letrec*
                             ((x-cnd7374
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7374
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7378
                                  (letrec*
                                   ((x7379
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7379))))
                                 (x7375
                                  (letrec*
                                   ((x7377
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7376
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7377 k j x7376)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7378 x7375)))))))
                          g7373))))
                     g7372)))
                 (any? (lambda (v) (letrec* ((g7380 #t)) g7380)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7381
                       (letrec*
                        ((x7382
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7382)))))
                     g7381)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7383
                       (letrec*
                        ((x-cnd7384
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7385
                                  (letrec*
                                   ((x7386
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7386)))))
                                g7385))
                             g7284))))
                        (if x-cnd7384
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7383)))
                 (meta (lambda (v) (letrec* ((g7387 v)) g7387)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7389
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7390
                               (letrec*
                                ((x7391
                                  (letrec*
                                   ((x7393
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7392
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7393 x7392)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7391)))))
                             g7390))))
                        g7389))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7388
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7388)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7395
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7396
                               (letrec*
                                ((x7397
                                  (letrec*
                                   ((x7399
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7398
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7399 x7398)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7397)))))
                             g7396))))
                        g7395))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7394
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7394)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7401
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7402
                               (letrec*
                                ((x7403
                                  (letrec*
                                   ((x7405
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7404
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7405 x7404)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7403)))))
                             g7402))))
                        g7401))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7400
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7400)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7407
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7408
                               (letrec*
                                ((x7409
                                  (letrec*
                                   ((x7411
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7410
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7411 x7410)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7409)))))
                             g7408))))
                        g7407))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7406
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7406)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7413
                          (lambda (g7305)
                            (letrec*
                             ((g7414
                               (letrec*
                                ((x7415
                                  (letrec*
                                   ((x7416
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7416)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7415)))))
                             g7414))))
                        g7413))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7412
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7412)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7418
                          (lambda (g7309)
                            (letrec*
                             ((g7419
                               (letrec*
                                ((x7420
                                  (letrec*
                                   ((x7421
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7421)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7420)))))
                             g7419))))
                        g7418))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7417
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7417)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7423
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7424
                               (letrec*
                                ((x7425
                                  (letrec*
                                   ((x7427
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7426
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7427 x7426)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7425)))))
                             g7424))))
                        g7423))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7422
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7422)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7429
                          (lambda (g7318)
                            (letrec*
                             ((g7430
                               (letrec*
                                ((x7431
                                  (letrec*
                                   ((x7432
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7432)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7431)))))
                             g7430))))
                        g7429))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7428
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7428)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7434
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7435
                               (letrec*
                                ((x7436
                                  (letrec*
                                   ((x7438
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7437
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7438 x7437)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7436)))))
                             g7435))))
                        g7434))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7433
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7433)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7439
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7439)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7440
                       (letrec*
                        ((x7441
                          (letrec*
                           ((x7442
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7442)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7441)))))
                     g7440)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7443
                       (letrec*
                        ((x7446
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7446))))
                      (g7444
                       (letrec*
                        ((x7447
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7447))))
                      (g7445
                       (letrec*
                        ((x-cnd7448
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7448
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7451
                             (letrec*
                              ((x7452
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7452))))
                            (x7449
                             (letrec*
                              ((x7450
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7450)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7451 x7449)))))))
                     g7445)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7453
                       (letrec*
                        ((x7454
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7454)))))
                     g7453)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7455
                       (letrec*
                        ((x7456
                          (letrec*
                           ((x7457
                             (letrec*
                              ((x7458
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7458)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7457)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7456)))))
                     g7455)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7462)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7461)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7460)))))
                     g7459)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7463
                       (letrec*
                        ((x7466
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7466))))
                      (g7464
                       (letrec*
                        ((x7467
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7467))))
                      (g7465
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
                         ((g7468
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7469 res))
                         g7469))))
                     g7465)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7470
                       (letrec*
                        ((x7471
                          (letrec*
                           ((x7472
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7472)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7471)))))
                     g7470)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7473
                       (letrec*
                        ((x7474
                          (letrec*
                           ((x7475
                             (letrec*
                              ((x7476
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7476)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7475)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7474)))))
                     g7473)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x7479
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7479))))
                      (g7478
                       (letrec*
                        ((x-cnd7480
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7480
                          #f
                          (letrec*
                           ((x-cnd7481
                             (letrec*
                              ((x7482
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7482 k)))))
                           (if x-cnd7481
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7483
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7483)))))))))
                     g7478)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7484
                       (letrec*
                        ((x7485
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7485)))))
                     g7484)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7486
                       (letrec*
                        ((x7488
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7488))))
                      (g7487
                       (letrec*
                        ((x-cnd7489
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7489
                          ""
                          (letrec*
                           ((x7492
                             (letrec*
                              ((x7493
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7493))))
                            (x7490
                             (letrec*
                              ((x7491
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7491)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7492 x7490)))))))
                     g7487)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7494
                       (letrec*
                        ((x7497
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7497))))
                      (g7495
                       (letrec*
                        ((x7498
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7498))))
                      (g7496
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7499
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7499))))
                     g7496)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7500
                       (letrec*
                        ((x7501
                          (letrec*
                           ((x7502
                             (letrec*
                              ((x7503
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7503)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7502)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7501)))))
                     g7500)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7504
                       (letrec*
                        ((x7507
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7507))))
                      (g7505
                       (letrec*
                        ((x7508
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7508))))
                      (g7506
                       (letrec*
                        ((x-cnd7509
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7509
                          x
                          (letrec*
                           ((x7511
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7510
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7511 x7510)))))))
                     g7506)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7512
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7512)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7513
                       (letrec*
                        ((x-cnd7514
                          (letrec*
                           ((x7515 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7515)))))
                        (if x-cnd7514
                          (letrec*
                           ((x7516 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7516)))
                          #f))))
                     g7513)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7517
                       (letrec*
                        ((x7519
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7519))))
                      (g7518
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7520
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7521 (if val7243 val7243 #f)))
                               g7521)))))
                         g7520))))
                     g7518)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7522
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7523
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7523 9)))))
                        (letrec*
                         ((g7524
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7525
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7525 10)))))
                              (letrec*
                               ((g7526
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7527
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7527 32))))))
                               g7526)))))
                         g7524))))
                     g7522)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7528
                       (letrec*
                        ((x7529
                          (letrec*
                           ((x7530
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7530)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7529)))))
                     g7528)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7531
                       (letrec*
                        ((x7533
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7533))))
                      (g7532
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7532)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7534 #f)) g7534)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7535
                       (letrec*
                        ((x7536
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7536)))))
                     g7535)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7537
                       (letrec*
                        ((x7539
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7539))))
                      (g7538
                       (letrec*
                        ((x-cnd7540
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7540
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7538)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7541
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7542
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7544
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7543
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7544 x7543)))))
                              (letrec*
                               ((g7545
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7548
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7547
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7546
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7548 x7547 x7546)))))
                                    (letrec*
                                     ((g7549
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7557
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7556
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7553
                                               (letrec*
                                                ((x7555
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7554
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7555 x7554))))
                                              (x7550
                                               (letrec*
                                                ((x7552
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7551
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7552 x7551)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7557
                                                    x7556
                                                    x7553
                                                    x7550)))))
                                          (letrec*
                                           ((g7558
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7574
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7573
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7559
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7560
                                                      (letrec*
                                                       ((x7571
                                                         (letrec*
                                                          ((x7572
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
                                                            (= x7572 n))))
                                                        (x7561
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7562
                                                                 (letrec*
                                                                  ((x7569
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7563
                                                                    (letrec*
                                                                     ((x7566
                                                                       (letrec*
                                                                        ((x7568
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
                                                                         (x7567
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
                                                                           x7568
                                                                           x7567))))
                                                                      (x7564
                                                                       (letrec*
                                                                        ((x7565
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
                                                                           x7565)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7566
                                                                            x7564)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7569
                                                                        x7563)))))
                                                               g7562))))
                                                          (letrec*
                                                           ((g7570
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7570))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7571 x7561)))))
                                                    g7560))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7574 x7573 x7559))))))
                                           g7558)))))
                                     g7549)))))
                               g7545)))))
                         g7542))))
                     g7541)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7575
                       (letrec*
                        ((x7576
                          (letrec*
                           ((x7577
                             (letrec*
                              ((x7578
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7578)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7577)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7576)))))
                     g7575)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7582)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7581)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7580)))))
                     g7579)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7583
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7583)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7584
                       (letrec*
                        ((x7586
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7586))))
                      (g7585
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7587
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7588 (if val7251 val7251 #f)))
                               g7588)))))
                         g7587))))
                     g7585)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7589
                       (letrec*
                        ((x7592
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7592))))
                      (g7590
                       (letrec*
                        ((x7593
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7593))))
                      (g7591
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
                         ((g7594
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7595 res))
                         g7595))))
                     g7591)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7596
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7596)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7597
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7600))))
                      (g7598
                       (letrec*
                        ((x7601
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7601))))
                      (g7599
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7602
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7602))))
                     g7599)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7603
                       (letrec*
                        ((x7604
                          (letrec*
                           ((x7605
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7605)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7604)))))
                     g7603)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7607
                          (letrec*
                           ((x7608
                             (letrec*
                              ((x7609
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7609)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7608)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7607)))))
                     g7606)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x7611
                          (letrec*
                           ((x7612
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7612)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7611)))))
                     g7610)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x7614
                          (letrec*
                           ((x7615
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7615)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7614)))))
                     g7613)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x7619
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7619))))
                      (g7617
                       (letrec*
                        ((x7620
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7620))))
                      (g7618
                       (letrec*
                        ((x7621
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7621)))))
                     g7618)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7622
                       (letrec*
                        ((x7623
                          (letrec*
                           ((x7624
                             (letrec*
                              ((x7625
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7625)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7624)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7623)))))
                     g7622)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7626
                       (letrec*
                        ((x7628
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7628))))
                      (g7627
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7627)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7629
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7629)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7630
                       (letrec*
                        ((x7631
                          (letrec*
                           ((x7632
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7632)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7631)))))
                     g7630)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7633
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7633)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7634
                       (letrec*
                        ((x7636
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7636))))
                      (g7635
                       (letrec*
                        ((x-cnd7637
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7637
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7640
                             (letrec*
                              ((x7641
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7641))))
                            (x7638
                             (letrec*
                              ((x7639
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7639)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7640 x7638)))))))
                     g7635)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7642
                       (letrec*
                        ((x7643
                          (letrec*
                           ((x7644
                             (letrec*
                              ((x7645
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7645)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7644)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7643)))))
                     g7642)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7649)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7648)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7647)))))
                     g7646)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7650
                       (letrec*
                        ((x7652
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7652))))
                      (g7651
                       (letrec*
                        ((x7653
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7653)))))
                     g7651)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7654
                       (letrec*
                        ((x7655
                          (letrec*
                           ((x7656
                             (letrec*
                              ((x7657
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7657)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7656)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7655)))))
                     g7654)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7658
                       (letrec*
                        ((x7661
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7661))))
                      (g7659
                       (letrec*
                        ((x7662
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7662))))
                      (g7660
                       (if cnd
                         (letrec*
                          ((g7663
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7663)
                         (if cnd
                           (letrec*
                            ((g7664
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7665)))))
                            g7664)
                           (if cnd
                             (letrec*
                              ((g7666
                                (letrec*
                                 ((x7668
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7667
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7668 x7667)))))
                              g7666)
                             (if cnd
                               (letrec*
                                ((g7669
                                  (letrec*
                                   ((x7672
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7671
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7670
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7672 x7671 x7670)))))
                                g7669)
                               (if cnd
                                 (letrec*
                                  ((g7673
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7677 x7676 x7675 x7674)))))
                                  g7673)
                                 (if cnd
                                   (letrec*
                                    ((g7678
                                      (letrec*
                                       ((x7684
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7683
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7682
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7681
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7679
                                         (letrec*
                                          ((x7680
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7680)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7684
                                          x7683
                                          x7682
                                          x7681
                                          x7679)))))
                                    g7678)
                                   (if cnd
                                     (letrec*
                                      ((g7685
                                        (letrec*
                                         ((x7693
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7692
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7691
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7690
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7688
                                           (letrec*
                                            ((x7689
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7689))))
                                          (x7686
                                           (letrec*
                                            ((x7687
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7687)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7693
                                            x7692
                                            x7691
                                            x7690
                                            x7688
                                            x7686)))))
                                      g7685)
                                     (if cnd
                                       (letrec*
                                        ((g7694
                                          (letrec*
                                           ((x7704
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7703
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7699
                                             (letrec*
                                              ((x7700
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7700))))
                                            (x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7698))))
                                            (x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7696)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7704
                                              x7703
                                              x7702
                                              x7701
                                              x7699
                                              x7697
                                              x7695)))))
                                        g7694)
                                       (letrec*
                                        ((g7705
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7705)))))))))))
                     g7660)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7706
                       (letrec*
                        ((x7708
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7708))))
                      (g7707
                       (letrec*
                        ((x-cnd7709
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7709
                          #f
                          (letrec*
                           ((x-cnd7710
                             (letrec*
                              ((x7711
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7711 e)))))
                           (if x-cnd7710
                             l
                             (letrec*
                              ((x7712
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7712)))))))))
                     g7707)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7713
                       (letrec*
                        ((x7714
                          (letrec*
                           ((x7715
                             (letrec*
                              ((x7716
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7716)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7715)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7714)))))
                     g7713)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7720)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7719)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7718)))))
                     g7717)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7721
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7721)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((x7724
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7724))))
                      (g7723
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7723)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7726
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7726))))
                     g7725)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7727
                       (letrec*
                        ((x7728
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7728)))))
                     g7727)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7732
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7730
                             (letrec*
                              ((x7731
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7731)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7732 x7730)))))
                        (letrec*
                         ((g7733
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7733))))
                     g7729)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7734
                       (letrec*
                        ((x7735
                          (letrec*
                           ((x7736
                             (letrec*
                              ((x7737
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7737)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7736)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7735)))))
                     g7734)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7738
                       (letrec*
                        ((x-cnd7739
                          (letrec*
                           ((x7740 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7740 c)))))
                        (if x-cnd7739
                          (letrec*
                           ((x7741 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7741)))
                          #f))))
                     g7738)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x7744
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7744))))
                      (g7743
                       (letrec*
                        ((x-cnd7745
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7745
                          #f
                          (letrec*
                           ((x-cnd7746
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7747 k)))))
                           (if x-cnd7746
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7748
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7748)))))))))
                     g7743)))
                 (not (lambda (x) (letrec* ((g7749 (if x #f #t))) g7749)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7750
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7750)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7751
                       (letrec*
                        ((x7753
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7753))))
                      (g7752
                       (letrec*
                        ((x-cnd7754
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7754
                          #f
                          (letrec*
                           ((x-cnd7755
                             (letrec*
                              ((x7756
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7756 e)))))
                           (if x-cnd7755
                             l
                             (letrec*
                              ((x7757
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7757)))))))))
                     g7752)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7758
                       (letrec*
                        ((x7759
                          (letrec*
                           ((x7760
                             (letrec*
                              ((x7761
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7761)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7760)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7759)))))
                     g7758)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7762
                       (letrec*
                        ((x7764
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7764))))
                      (g7763
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7765
                               (letrec*
                                ((x-cnd7766
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7766
                                  0
                                  (letrec*
                                   ((x7767
                                     (letrec*
                                      ((x7768
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7768)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7767)))))))
                             g7765))))
                        (letrec*
                         ((g7769
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7769))))
                     g7763)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7770
                       (letrec*
                        ((x7773
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7773))))
                      (g7771
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7774))))
                      (g7772
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7775
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7775))))
                     g7772)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7776
                       (letrec*
                        ((x7777
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7777)))))
                     g7776)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7778
                       (letrec*
                        ((x7779
                          (letrec*
                           ((x7780
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7780)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7779)))))
                     g7778)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7781
                       (letrec*
                        ((x7783
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7783))))
                      (g7782
                       (letrec*
                        ((x-cnd7784
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7784
                          #f
                          (letrec*
                           ((x-cnd7785
                             (letrec*
                              ((x7786
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7786 k)))))
                           (if x-cnd7785
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7787
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7787)))))))))
                     g7782)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7788
                       (letrec*
                        ((x7789
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7789)))))
                     g7788)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7790
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7793))))
                      (g7791
                       (letrec*
                        ((x7794
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7794))))
                      (g7792
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7795)))))
                     g7792)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7796
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7797
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7797))))
                     g7796)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7798
                       (letrec*
                        ((x7801
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7801))))
                      (g7799
                       (letrec*
                        ((x7802
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7802))))
                      (g7800
                       (letrec*
                        ((x-cnd7803
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7803
                          #t
                          (letrec*
                           ((x-cnd7804
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7804
                             (letrec*
                              ((g7805
                                (letrec*
                                 ((x7807
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7807))))
                               (g7806
                                (letrec*
                                 ((x7808
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7808)))))
                              g7806)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7800)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7809
                       (letrec*
                        ((x7811
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7811))))
                      (g7810
                       (letrec*
                        ((x-cnd7812
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7812
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7810)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7813
                       (letrec*
                        ((x7816
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7816))))
                      (g7814
                       (letrec*
                        ((x7817
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7817))))
                      (g7815
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7818
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7818))))
                     g7815)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7819
                       (letrec*
                        ((x7820
                          (letrec*
                           ((x7821
                             (letrec*
                              ((x7822
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7822)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7821)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7820)))))
                     g7819)))
                 (newline (lambda () (letrec* ((g7823 #f)) g7823)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7824
                       (letrec*
                        ((x7826
                          (letrec*
                           ((x7827
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7827))))
                         (x7825
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7826 x7825)))))
                     g7824)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7828
                       (letrec*
                        ((x7830
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7830))))
                      (g7829
                       (letrec*
                        ((x7831
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7831)))))
                     g7829)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7832
                       (letrec*
                        ((x7836
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7836))))
                      (g7833
                       (letrec*
                        ((x7837
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7837))))
                      (g7834
                       (letrec*
                        ((x7838
                          (letrec*
                           ((x7839
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7839)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7838))))
                      (g7835
                       (letrec*
                        ((x-cnd7840
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7840
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7842
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7841
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7842 x7841)))))))
                     g7835)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7843
                       (letrec*
                        ((x-cnd7844
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7844
                          a
                          (letrec*
                           ((x7845
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7845)))))))
                     g7843)))
                 (lock (lambda (st) (letrec* ((g7846 1)) g7846)))
                 (unlock (lambda (st) (letrec* ((g7847 0)) g7847)))
                 (f
                  (lambda (n st)
                    (letrec*
                     ((g7848
                       (letrec*
                        ((x-cnd7849
                          (begin
                            (write '(funapp 1356 37))
                            (display "\n")
                            (> n 0))))
                        (if x-cnd7849
                          (begin
                            (write '(funapp 1357 39))
                            (display "\n")
                            (lock st))
                          st))))
                     g7848)))
                 (g
                  (lambda (n st)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((x-cnd7851
                          (begin
                            (write '(funapp 1364 37))
                            (display "\n")
                            (> n 0))))
                        (if x-cnd7851
                          (begin
                            (write '(funapp 1365 39))
                            (display "\n")
                            (unlock st))
                          st))))
                     g7850)))
                 (main
                  (lambda (n)
                    (letrec*
                     ((g7852
                       (letrec*
                        ((x7853
                          (begin
                            (write '(funapp 1370 47))
                            (display "\n")
                            (f n 0))))
                        (begin
                          (write '(funapp 1370 57))
                          (display "\n")
                          (g n x7853)))))
                     g7852))))
                (letrec*
                 ((g7854
                   (letrec*
                    ((x7856
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        ((lambda (j7328 k7329 f7330)
                           (letrec*
                            ((g7857
                              (lambda (g7327)
                                (letrec*
                                 ((g7858
                                   (letrec*
                                    ((x7859
                                      (letrec*
                                       ((x7860
                                         (begin
                                           (write '(funapp 1385 46))
                                           (display "\n")
                                           (integer?/c j7328 k7329 g7327))))
                                       (begin
                                         (write '(funapp 1386 38))
                                         (display "\n")
                                         (f7330 x7860)))))
                                    (begin
                                      (write '(funapp 1387 35))
                                      (display "\n")
                                      ((lambda (g7334 g7335 g7336)
                                         (letrec*
                                          ((g7861
                                            (letrec*
                                             ((x-cnd7862
                                               (begin
                                                 (write '(funapp 1392 44))
                                                 (display "\n")
                                                 ((lambda (v7333)
                                                    (letrec*
                                                     ((g7863
                                                       (begin
                                                         (write
                                                          '(funapp 1394 56))
                                                         (display "\n")
                                                         (eq? 0 v7333))))
                                                     g7863))
                                                  g7336))))
                                             (if x-cnd7862
                                               g7336
                                               (begin
                                                 (write '(blame g7334 1399 43))
                                                 (display "\n")
                                                 (error
                                                  (format
                                                   "contract violation, blaming ~a~n"
                                                   g7334)))))))
                                          g7861))
                                       j7328
                                       k7329
                                       x7859)))))
                                 g7858))))
                            g7857))
                         (begin
                           (write '(funapp 1409 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1410 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7855 (input)))
                    (begin
                      (write '(funapp 1413 21))
                      (display "\n")
                      (x7856 x7855)))))
                 g7854))))
             g7350))))
         g7348)))
      g7347))))
