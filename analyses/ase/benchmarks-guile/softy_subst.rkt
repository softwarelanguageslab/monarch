(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7327 #t)) g7327)))
      (meta (lambda (v) (letrec* ((g7328 v)) g7328)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7329
            (letrec*
             ((g7330
               (letrec*
                ((x-e7331 lst))
                (letrec*
                 ((v1742 x-e7331))
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
                     ((x-cnd7332
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7332
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
             g7330)))
          g7329)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7333 (lambda (v) (letrec* ((g7334 v)) g7334)))) g7333)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7335
            (letrec*
             ((x7336 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7336)))))
          g7335))))
     (letrec*
      ((g7337
        (letrec*
         ((g7338
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
             ((g7339 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7340
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7341
                       (letrec*
                        ((x-cnd7342
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7342
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7341)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7343
                       (letrec*
                        ((x-cnd7344
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7344
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7343)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7345
                       (letrec*
                        ((x-cnd7346
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7346
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7345)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7347
                       (letrec*
                        ((x-cnd7348
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7349 #t)) g7349))
                             g7269))))
                        (if x-cnd7348
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7347)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7350
                       (letrec*
                        ((x-cnd7351
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7352 #t)) g7352))
                             g7272))))
                        (if x-cnd7351
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7350)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7353
                       (letrec*
                        ((x-cnd7354
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7354
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7353)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7355
                       (letrec*
                        ((x-cnd7356
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7356
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7355)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7357
                       (letrec*
                        ((x-cnd7358
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7358
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7357)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7359
                       (lambda (k j v)
                         (letrec*
                          ((g7360
                            (letrec*
                             ((x-cnd7361
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7361
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7360))))
                     g7359)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7362
                       (lambda (k j v)
                         (letrec*
                          ((g7363
                            (letrec*
                             ((x-cnd7364
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7364
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7368
                                  (letrec*
                                   ((x7369
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7369))))
                                 (x7365
                                  (letrec*
                                   ((x7367
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7366
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7367 k j x7366)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7368 x7365)))))))
                          g7363))))
                     g7362)))
                 (any? (lambda (v) (letrec* ((g7370 #t)) g7370)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7371
                       (letrec*
                        ((x7372
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7372)))))
                     g7371)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7373
                       (letrec*
                        ((x-cnd7374
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7375
                                  (letrec*
                                   ((x7376
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7376)))))
                                g7375))
                             g7284))))
                        (if x-cnd7374
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7373)))
                 (meta (lambda (v) (letrec* ((g7377 v)) g7377)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7379
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7380
                               (letrec*
                                ((x7381
                                  (letrec*
                                   ((x7383
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7382
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7383 x7382)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7381)))))
                             g7380))))
                        g7379))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7378
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7378)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7385
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7386
                               (letrec*
                                ((x7387
                                  (letrec*
                                   ((x7389
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7388
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7389 x7388)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7387)))))
                             g7386))))
                        g7385))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7384
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7384)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7391
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7392
                               (letrec*
                                ((x7393
                                  (letrec*
                                   ((x7395
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7394
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7395 x7394)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7393)))))
                             g7392))))
                        g7391))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7390
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7390)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7397
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7398
                               (letrec*
                                ((x7399
                                  (letrec*
                                   ((x7401
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7400
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7401 x7400)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7399)))))
                             g7398))))
                        g7397))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7396
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7396)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7403
                          (lambda (g7305)
                            (letrec*
                             ((g7404
                               (letrec*
                                ((x7405
                                  (letrec*
                                   ((x7406
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7406)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7405)))))
                             g7404))))
                        g7403))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7402
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7402)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7408
                          (lambda (g7309)
                            (letrec*
                             ((g7409
                               (letrec*
                                ((x7410
                                  (letrec*
                                   ((x7411
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7411)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7410)))))
                             g7409))))
                        g7408))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7407
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7407)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7413
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7414
                               (letrec*
                                ((x7415
                                  (letrec*
                                   ((x7417
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7416
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7417 x7416)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7415)))))
                             g7414))))
                        g7413))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7412
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7412)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7419
                          (lambda (g7318)
                            (letrec*
                             ((g7420
                               (letrec*
                                ((x7421
                                  (letrec*
                                   ((x7422
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7422)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7421)))))
                             g7420))))
                        g7419))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7418
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7418)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7424
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7425
                               (letrec*
                                ((x7426
                                  (letrec*
                                   ((x7428
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7427
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7428 x7427)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7426)))))
                             g7425))))
                        g7424))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7423
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7423)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7429
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7429)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7430
                       (letrec*
                        ((x7431
                          (letrec*
                           ((x7432
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7432)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7431)))))
                     g7430)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7433
                       (letrec*
                        ((x7436
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7436))))
                      (g7434
                       (letrec*
                        ((x7437
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7437))))
                      (g7435
                       (letrec*
                        ((x-cnd7438
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7438
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7441
                             (letrec*
                              ((x7442
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7442))))
                            (x7439
                             (letrec*
                              ((x7440
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7440)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7441 x7439)))))))
                     g7435)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7443
                       (letrec*
                        ((x7444
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7444)))))
                     g7443)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7445
                       (letrec*
                        ((x7446
                          (letrec*
                           ((x7447
                             (letrec*
                              ((x7448
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7448)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7447)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7446)))))
                     g7445)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7452)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7451)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7450)))))
                     g7449)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7453
                       (letrec*
                        ((x7456
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7456))))
                      (g7454
                       (letrec*
                        ((x7457
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7457))))
                      (g7455
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
                         ((g7458
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7459 res))
                         g7459))))
                     g7455)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7460
                       (letrec*
                        ((x7461
                          (letrec*
                           ((x7462
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7462)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7461)))))
                     g7460)))
                 (cdaadr
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
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7466)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7465)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7464)))))
                     g7463)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7467
                       (letrec*
                        ((x7469
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7469))))
                      (g7468
                       (letrec*
                        ((x-cnd7470
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7470
                          #f
                          (letrec*
                           ((x-cnd7471
                             (letrec*
                              ((x7472
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7472 k)))))
                           (if x-cnd7471
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7473
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7473)))))))))
                     g7468)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7474
                       (letrec*
                        ((x7475
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7475)))))
                     g7474)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7476
                       (letrec*
                        ((x7478
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7478))))
                      (g7477
                       (letrec*
                        ((x-cnd7479
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7479
                          ""
                          (letrec*
                           ((x7482
                             (letrec*
                              ((x7483
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7483))))
                            (x7480
                             (letrec*
                              ((x7481
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7481)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7482 x7480)))))))
                     g7477)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7484
                       (letrec*
                        ((x7487
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7487))))
                      (g7485
                       (letrec*
                        ((x7488
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7488))))
                      (g7486
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7489
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7489))))
                     g7486)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7490
                       (letrec*
                        ((x7491
                          (letrec*
                           ((x7492
                             (letrec*
                              ((x7493
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7493)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7492)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7491)))))
                     g7490)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7494
                       (letrec*
                        ((x7497
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7497))))
                      (g7495
                       (letrec*
                        ((x7498
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7498))))
                      (g7496
                       (letrec*
                        ((x-cnd7499
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7499
                          x
                          (letrec*
                           ((x7501
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7500
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7501 x7500)))))))
                     g7496)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7502
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7502)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7503
                       (letrec*
                        ((x-cnd7504
                          (letrec*
                           ((x7505 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7505)))))
                        (if x-cnd7504
                          (letrec*
                           ((x7506 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7506)))
                          #f))))
                     g7503)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7507
                       (letrec*
                        ((x7509
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7509))))
                      (g7508
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7510
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7511 (if val7243 val7243 #f)))
                               g7511)))))
                         g7510))))
                     g7508)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7512
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7513
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7513 9)))))
                        (letrec*
                         ((g7514
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7515
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7515 10)))))
                              (letrec*
                               ((g7516
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7517
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7517 32))))))
                               g7516)))))
                         g7514))))
                     g7512)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7518
                       (letrec*
                        ((x7519
                          (letrec*
                           ((x7520
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7520)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7519)))))
                     g7518)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7521
                       (letrec*
                        ((x7523
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7523))))
                      (g7522
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7522)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7524 #f)) g7524)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7525
                       (letrec*
                        ((x7526
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7526)))))
                     g7525)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7527
                       (letrec*
                        ((x7529
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7529))))
                      (g7528
                       (letrec*
                        ((x-cnd7530
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7530
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7528)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7531
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7532
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7534
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7533
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7534 x7533)))))
                              (letrec*
                               ((g7535
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7538
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7537
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7536
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7538 x7537 x7536)))))
                                    (letrec*
                                     ((g7539
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7547
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7546
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7543
                                               (letrec*
                                                ((x7545
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7544
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7545 x7544))))
                                              (x7540
                                               (letrec*
                                                ((x7542
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7541
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7542 x7541)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7547
                                                    x7546
                                                    x7543
                                                    x7540)))))
                                          (letrec*
                                           ((g7548
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7564
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7563
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7549
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7550
                                                      (letrec*
                                                       ((x7561
                                                         (letrec*
                                                          ((x7562
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
                                                            (= x7562 n))))
                                                        (x7551
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7552
                                                                 (letrec*
                                                                  ((x7559
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7553
                                                                    (letrec*
                                                                     ((x7556
                                                                       (letrec*
                                                                        ((x7558
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
                                                                         (x7557
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
                                                                           x7558
                                                                           x7557))))
                                                                      (x7554
                                                                       (letrec*
                                                                        ((x7555
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
                                                                           x7555)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7556
                                                                            x7554)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7559
                                                                        x7553)))))
                                                               g7552))))
                                                          (letrec*
                                                           ((g7560
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7560))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7561 x7551)))))
                                                    g7550))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7564 x7563 x7549))))))
                                           g7548)))))
                                     g7539)))))
                               g7535)))))
                         g7532))))
                     g7531)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7565
                       (letrec*
                        ((x7566
                          (letrec*
                           ((x7567
                             (letrec*
                              ((x7568
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7568)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7567)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7566)))))
                     g7565)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7572)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7571)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7570)))))
                     g7569)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7573
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7573)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7574
                       (letrec*
                        ((x7576
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7576))))
                      (g7575
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7577
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7578 (if val7251 val7251 #f)))
                               g7578)))))
                         g7577))))
                     g7575)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7579
                       (letrec*
                        ((x7582
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7582))))
                      (g7580
                       (letrec*
                        ((x7583
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7583))))
                      (g7581
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
                         ((g7584
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7585 res))
                         g7585))))
                     g7581)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7586
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7586)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7587
                       (letrec*
                        ((x7590
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7590))))
                      (g7588
                       (letrec*
                        ((x7591
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7591))))
                      (g7589
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7592
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7592))))
                     g7589)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7593
                       (letrec*
                        ((x7594
                          (letrec*
                           ((x7595
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7595)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7594)))))
                     g7593)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7596
                       (letrec*
                        ((x7597
                          (letrec*
                           ((x7598
                             (letrec*
                              ((x7599
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7599)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7598)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7597)))))
                     g7596)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7600
                       (letrec*
                        ((x7601
                          (letrec*
                           ((x7602
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7602)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7601)))))
                     g7600)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7603
                       (letrec*
                        ((x7604
                          (letrec*
                           ((x7605
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7605)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7604)))))
                     g7603)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7609
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7609))))
                      (g7607
                       (letrec*
                        ((x7610
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7610))))
                      (g7608
                       (letrec*
                        ((x7611
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7611)))))
                     g7608)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7612
                       (letrec*
                        ((x7613
                          (letrec*
                           ((x7614
                             (letrec*
                              ((x7615
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7615)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7614)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7613)))))
                     g7612)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x7618
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7618))))
                      (g7617
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7617)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7619
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7619)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7621
                          (letrec*
                           ((x7622
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7622)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7621)))))
                     g7620)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7623
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7623)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7624
                       (letrec*
                        ((x7626
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7626))))
                      (g7625
                       (letrec*
                        ((x-cnd7627
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7627
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7630
                             (letrec*
                              ((x7631
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7631))))
                            (x7628
                             (letrec*
                              ((x7629
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7629)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7630 x7628)))))))
                     g7625)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7632
                       (letrec*
                        ((x7633
                          (letrec*
                           ((x7634
                             (letrec*
                              ((x7635
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7635)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7634)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7633)))))
                     g7632)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7639)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7638)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7637)))))
                     g7636)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7640
                       (letrec*
                        ((x7642
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7642))))
                      (g7641
                       (letrec*
                        ((x7643
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7643)))))
                     g7641)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7644
                       (letrec*
                        ((x7645
                          (letrec*
                           ((x7646
                             (letrec*
                              ((x7647
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7647)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7646)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7645)))))
                     g7644)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7648
                       (letrec*
                        ((x7651
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7651))))
                      (g7649
                       (letrec*
                        ((x7652
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7652))))
                      (g7650
                       (if cnd
                         (letrec*
                          ((g7653
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7653)
                         (if cnd
                           (letrec*
                            ((g7654
                              (letrec*
                               ((x7655
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7655)))))
                            g7654)
                           (if cnd
                             (letrec*
                              ((g7656
                                (letrec*
                                 ((x7658
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7657
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7658 x7657)))))
                              g7656)
                             (if cnd
                               (letrec*
                                ((g7659
                                  (letrec*
                                   ((x7662
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7661
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7660
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7662 x7661 x7660)))))
                                g7659)
                               (if cnd
                                 (letrec*
                                  ((g7663
                                    (letrec*
                                     ((x7667
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7666
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7665
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7664
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7667 x7666 x7665 x7664)))))
                                  g7663)
                                 (if cnd
                                   (letrec*
                                    ((g7668
                                      (letrec*
                                       ((x7674
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7673
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7672
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7671
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7669
                                         (letrec*
                                          ((x7670
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7670)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7674
                                          x7673
                                          x7672
                                          x7671
                                          x7669)))))
                                    g7668)
                                   (if cnd
                                     (letrec*
                                      ((g7675
                                        (letrec*
                                         ((x7683
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7682
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7681
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7680
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7678
                                           (letrec*
                                            ((x7679
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7679))))
                                          (x7676
                                           (letrec*
                                            ((x7677
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7677)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7683
                                            x7682
                                            x7681
                                            x7680
                                            x7678
                                            x7676)))))
                                      g7675)
                                     (if cnd
                                       (letrec*
                                        ((g7684
                                          (letrec*
                                           ((x7694
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7689
                                             (letrec*
                                              ((x7690
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7690))))
                                            (x7687
                                             (letrec*
                                              ((x7688
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7688))))
                                            (x7685
                                             (letrec*
                                              ((x7686
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7686)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7694
                                              x7693
                                              x7692
                                              x7691
                                              x7689
                                              x7687
                                              x7685)))))
                                        g7684)
                                       (letrec*
                                        ((g7695
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7695)))))))))))
                     g7650)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7696
                       (letrec*
                        ((x7698
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7698))))
                      (g7697
                       (letrec*
                        ((x-cnd7699
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7699
                          #f
                          (letrec*
                           ((x-cnd7700
                             (letrec*
                              ((x7701
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7701 e)))))
                           (if x-cnd7700
                             l
                             (letrec*
                              ((x7702
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7702)))))))))
                     g7697)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7703
                       (letrec*
                        ((x7704
                          (letrec*
                           ((x7705
                             (letrec*
                              ((x7706
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7706)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7705)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7704)))))
                     g7703)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7710)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7709)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7708)))))
                     g7707)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7711
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7711)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7712
                       (letrec*
                        ((x7714
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7714))))
                      (g7713
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7713)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7715
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7716
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7716))))
                     g7715)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7717
                       (letrec*
                        ((x7718
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7718)))))
                     g7717)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7719
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7722
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7720
                             (letrec*
                              ((x7721
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7721)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7722 x7720)))))
                        (letrec*
                         ((g7723
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7723))))
                     g7719)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7724
                       (letrec*
                        ((x7725
                          (letrec*
                           ((x7726
                             (letrec*
                              ((x7727
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7727)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7726)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7725)))))
                     g7724)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((x-cnd7729
                          (letrec*
                           ((x7730 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7730 c)))))
                        (if x-cnd7729
                          (letrec*
                           ((x7731 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7731)))
                          #f))))
                     g7728)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((x7734
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7734))))
                      (g7733
                       (letrec*
                        ((x-cnd7735
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7735
                          #f
                          (letrec*
                           ((x-cnd7736
                             (letrec*
                              ((x7737
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7737 k)))))
                           (if x-cnd7736
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7738
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7738)))))))))
                     g7733)))
                 (not (lambda (x) (letrec* ((g7739 (if x #f #t))) g7739)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7740
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7740)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7741
                       (letrec*
                        ((x7743
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7743))))
                      (g7742
                       (letrec*
                        ((x-cnd7744
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7744
                          #f
                          (letrec*
                           ((x-cnd7745
                             (letrec*
                              ((x7746
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7746 e)))))
                           (if x-cnd7745
                             l
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7747)))))))))
                     g7742)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7748
                       (letrec*
                        ((x7749
                          (letrec*
                           ((x7750
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7751)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7750)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7749)))))
                     g7748)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7752
                       (letrec*
                        ((x7754
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7754))))
                      (g7753
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7755
                               (letrec*
                                ((x-cnd7756
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7756
                                  0
                                  (letrec*
                                   ((x7757
                                     (letrec*
                                      ((x7758
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7758)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7757)))))))
                             g7755))))
                        (letrec*
                         ((g7759
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7759))))
                     g7753)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7760
                       (letrec*
                        ((x7763
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7763))))
                      (g7761
                       (letrec*
                        ((x7764
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7764))))
                      (g7762
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7765
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7765))))
                     g7762)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7766
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7767)))))
                     g7766)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7768
                       (letrec*
                        ((x7769
                          (letrec*
                           ((x7770
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7770)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7769)))))
                     g7768)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7771
                       (letrec*
                        ((x7773
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7773))))
                      (g7772
                       (letrec*
                        ((x-cnd7774
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7774
                          #f
                          (letrec*
                           ((x-cnd7775
                             (letrec*
                              ((x7776
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7776 k)))))
                           (if x-cnd7775
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7777
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7777)))))))))
                     g7772)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7778
                       (letrec*
                        ((x7779
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7779)))))
                     g7778)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7780
                       (letrec*
                        ((x7783
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7783))))
                      (g7781
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7784))))
                      (g7782
                       (letrec*
                        ((x7785
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7785)))))
                     g7782)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7786
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7787
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7787))))
                     g7786)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7788
                       (letrec*
                        ((x7791
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7791))))
                      (g7789
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7792))))
                      (g7790
                       (letrec*
                        ((x-cnd7793
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7793
                          #t
                          (letrec*
                           ((x-cnd7794
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7794
                             (letrec*
                              ((g7795
                                (letrec*
                                 ((x7797
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7797))))
                               (g7796
                                (letrec*
                                 ((x7798
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7798)))))
                              g7796)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7790)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7799
                       (letrec*
                        ((x7801
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7801))))
                      (g7800
                       (letrec*
                        ((x-cnd7802
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7802
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7800)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7803
                       (letrec*
                        ((x7806
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7806))))
                      (g7804
                       (letrec*
                        ((x7807
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7807))))
                      (g7805
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7808
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7808))))
                     g7805)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7809
                       (letrec*
                        ((x7810
                          (letrec*
                           ((x7811
                             (letrec*
                              ((x7812
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7812)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7811)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7810)))))
                     g7809)))
                 (newline (lambda () (letrec* ((g7813 #f)) g7813)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7814
                       (letrec*
                        ((x7816
                          (letrec*
                           ((x7817
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7817))))
                         (x7815
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7816 x7815)))))
                     g7814)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7818
                       (letrec*
                        ((x7820
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7820))))
                      (g7819
                       (letrec*
                        ((x7821
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7821)))))
                     g7819)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7822
                       (letrec*
                        ((x7826
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7826))))
                      (g7823
                       (letrec*
                        ((x7827
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7827))))
                      (g7824
                       (letrec*
                        ((x7828
                          (letrec*
                           ((x7829
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7829)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7828))))
                      (g7825
                       (letrec*
                        ((x-cnd7830
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7830
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7832
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7831
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7832 x7831)))))))
                     g7825)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7833
                       (letrec*
                        ((x-cnd7834
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7834
                          a
                          (letrec*
                           ((x7835
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7835)))))))
                     g7833))))
                (letrec*
                 ((g7836
                   (if cnd
                     (letrec* ((g7837 new)) g7837)
                     (if cnd
                       (letrec*
                        ((g7838
                          (letrec*
                           ((x7841
                             (letrec*
                              ((x7842
                                (begin
                                  (write '(funapp 1359 39))
                                  (display "\n")
                                  (car t))))
                              (begin
                                (write '(funapp 1360 31))
                                (display "\n")
                                (subst* new old x7842))))
                            (x7839
                             (letrec*
                              ((x7840
                                (begin
                                  (write '(funapp 1363 39))
                                  (display "\n")
                                  (cdr t))))
                              (begin
                                (write '(funapp 1364 31))
                                (display "\n")
                                (subst* new old x7840)))))
                           (begin
                             (write '(funapp 1365 28))
                             (display "\n")
                             (cons x7841 x7839)))))
                        g7838)
                       (letrec* ((g7843 t)) g7843)))))
                 g7836))))
             g7340))))
         g7338)))
      g7337))))
