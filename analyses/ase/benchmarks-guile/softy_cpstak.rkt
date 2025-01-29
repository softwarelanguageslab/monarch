(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7333 #t)) g7333)))
      (meta (lambda (v) (letrec* ((g7334 v)) g7334)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7335
            (letrec*
             ((g7336
               (letrec*
                ((x-e7337 lst))
                (letrec*
                 ((v1742 x-e7337))
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
                     ((x-cnd7338
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7338
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
             g7336)))
          g7335)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7339 (lambda (v) (letrec* ((g7340 v)) g7340)))) g7339)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7341
            (letrec*
             ((x7342 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7342)))))
          g7341))))
     (letrec*
      ((g7343
        (letrec*
         ((g7344
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
             ((g7345 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7346
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7347
                       (letrec*
                        ((x-cnd7348
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7348
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7347)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7349
                       (letrec*
                        ((x-cnd7350
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7350
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7349)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7351
                       (letrec*
                        ((x-cnd7352
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7352
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7351)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7353
                       (letrec*
                        ((x-cnd7354
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7355 #t)) g7355))
                             g7269))))
                        (if x-cnd7354
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7353)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7358 #t)) g7358))
                             g7272))))
                        (if x-cnd7357
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7356)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7359
                       (letrec*
                        ((x-cnd7360
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7360
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7359)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7362
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7361)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7364
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7363)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7365
                       (lambda (k j v)
                         (letrec*
                          ((g7366
                            (letrec*
                             ((x-cnd7367
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7367
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7366))))
                     g7365)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7368
                       (lambda (k j v)
                         (letrec*
                          ((g7369
                            (letrec*
                             ((x-cnd7370
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7370
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7374
                                  (letrec*
                                   ((x7375
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7375))))
                                 (x7371
                                  (letrec*
                                   ((x7373
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7372
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7373 k j x7372)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7374 x7371)))))))
                          g7369))))
                     g7368)))
                 (any? (lambda (v) (letrec* ((g7376 #t)) g7376)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7377
                       (letrec*
                        ((x7378
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7378)))))
                     g7377)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7379
                       (letrec*
                        ((x-cnd7380
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7381
                                  (letrec*
                                   ((x7382
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7382)))))
                                g7381))
                             g7284))))
                        (if x-cnd7380
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7379)))
                 (meta (lambda (v) (letrec* ((g7383 v)) g7383)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7385
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7386
                               (letrec*
                                ((x7387
                                  (letrec*
                                   ((x7389
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7388
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7389 x7388)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7387)))))
                             g7386))))
                        g7385))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7384
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7384)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7391
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7392
                               (letrec*
                                ((x7393
                                  (letrec*
                                   ((x7395
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7394
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7395 x7394)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7393)))))
                             g7392))))
                        g7391))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7390
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7390)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7397
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7398
                               (letrec*
                                ((x7399
                                  (letrec*
                                   ((x7401
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7400
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7401 x7400)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7399)))))
                             g7398))))
                        g7397))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7396
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7396)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7403
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7404
                               (letrec*
                                ((x7405
                                  (letrec*
                                   ((x7407
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7406
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7407 x7406)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7405)))))
                             g7404))))
                        g7403))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7402
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7402)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7409
                          (lambda (g7305)
                            (letrec*
                             ((g7410
                               (letrec*
                                ((x7411
                                  (letrec*
                                   ((x7412
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7412)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7411)))))
                             g7410))))
                        g7409))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7408
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7408)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7414
                          (lambda (g7309)
                            (letrec*
                             ((g7415
                               (letrec*
                                ((x7416
                                  (letrec*
                                   ((x7417
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7417)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7416)))))
                             g7415))))
                        g7414))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7413
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7413)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7419
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7420
                               (letrec*
                                ((x7421
                                  (letrec*
                                   ((x7423
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7422
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7423 x7422)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7421)))))
                             g7420))))
                        g7419))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7418
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7418)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7425
                          (lambda (g7318)
                            (letrec*
                             ((g7426
                               (letrec*
                                ((x7427
                                  (letrec*
                                   ((x7428
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7428)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7427)))))
                             g7426))))
                        g7425))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7424
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7424)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7430
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7431
                               (letrec*
                                ((x7432
                                  (letrec*
                                   ((x7434
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7433
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7434 x7433)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7432)))))
                             g7431))))
                        g7430))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7429
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7429)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7435
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7435)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7436
                       (letrec*
                        ((x7437
                          (letrec*
                           ((x7438
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7438)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7437)))))
                     g7436)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7439
                       (letrec*
                        ((x7442
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7442))))
                      (g7440
                       (letrec*
                        ((x7443
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7443))))
                      (g7441
                       (letrec*
                        ((x-cnd7444
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7444
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7447
                             (letrec*
                              ((x7448
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7448))))
                            (x7445
                             (letrec*
                              ((x7446
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7446)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7447 x7445)))))))
                     g7441)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7449
                       (letrec*
                        ((x7450
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7450)))))
                     g7449)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7451
                       (letrec*
                        ((x7452
                          (letrec*
                           ((x7453
                             (letrec*
                              ((x7454
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7454)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7453)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7452)))))
                     g7451)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7458)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7457)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7456)))))
                     g7455)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7459
                       (letrec*
                        ((x7462
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7462))))
                      (g7460
                       (letrec*
                        ((x7463
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7463))))
                      (g7461
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
                         ((g7464
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7465 res))
                         g7465))))
                     g7461)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7466
                       (letrec*
                        ((x7467
                          (letrec*
                           ((x7468
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7468)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7467)))))
                     g7466)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7469
                       (letrec*
                        ((x7470
                          (letrec*
                           ((x7471
                             (letrec*
                              ((x7472
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7472)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7471)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7470)))))
                     g7469)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7473
                       (letrec*
                        ((x7475
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7475))))
                      (g7474
                       (letrec*
                        ((x-cnd7476
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7476
                          #f
                          (letrec*
                           ((x-cnd7477
                             (letrec*
                              ((x7478
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7478 k)))))
                           (if x-cnd7477
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7479
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7479)))))))))
                     g7474)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x7481
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7481)))))
                     g7480)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7482
                       (letrec*
                        ((x7484
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7484))))
                      (g7483
                       (letrec*
                        ((x-cnd7485
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7485
                          ""
                          (letrec*
                           ((x7488
                             (letrec*
                              ((x7489
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7489))))
                            (x7486
                             (letrec*
                              ((x7487
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7487)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7488 x7486)))))))
                     g7483)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7490
                       (letrec*
                        ((x7493
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7493))))
                      (g7491
                       (letrec*
                        ((x7494
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7494))))
                      (g7492
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7495
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7495))))
                     g7492)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7496
                       (letrec*
                        ((x7497
                          (letrec*
                           ((x7498
                             (letrec*
                              ((x7499
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7499)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7498)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7497)))))
                     g7496)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7500
                       (letrec*
                        ((x7503
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7503))))
                      (g7501
                       (letrec*
                        ((x7504
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7504))))
                      (g7502
                       (letrec*
                        ((x-cnd7505
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7505
                          x
                          (letrec*
                           ((x7507
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7506
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7507 x7506)))))))
                     g7502)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7508
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7508)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7509
                       (letrec*
                        ((x-cnd7510
                          (letrec*
                           ((x7511 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7511)))))
                        (if x-cnd7510
                          (letrec*
                           ((x7512 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7512)))
                          #f))))
                     g7509)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7513
                       (letrec*
                        ((x7515
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7515))))
                      (g7514
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7516
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7517 (if val7243 val7243 #f)))
                               g7517)))))
                         g7516))))
                     g7514)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7518
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7519
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7519 9)))))
                        (letrec*
                         ((g7520
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7521
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7521 10)))))
                              (letrec*
                               ((g7522
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7523
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7523 32))))))
                               g7522)))))
                         g7520))))
                     g7518)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7524
                       (letrec*
                        ((x7525
                          (letrec*
                           ((x7526
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7526)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7525)))))
                     g7524)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7527
                       (letrec*
                        ((x7529
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7529))))
                      (g7528
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7528)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7530 #f)) g7530)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7531
                       (letrec*
                        ((x7532
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7532)))))
                     g7531)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7533
                       (letrec*
                        ((x7535
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7535))))
                      (g7534
                       (letrec*
                        ((x-cnd7536
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7536
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7534)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7537
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7538
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7540
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7539
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7540 x7539)))))
                              (letrec*
                               ((g7541
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7544
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7543
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7542
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7544 x7543 x7542)))))
                                    (letrec*
                                     ((g7545
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7553
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7552
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7549
                                               (letrec*
                                                ((x7551
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7550
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7551 x7550))))
                                              (x7546
                                               (letrec*
                                                ((x7548
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7547
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7548 x7547)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7553
                                                    x7552
                                                    x7549
                                                    x7546)))))
                                          (letrec*
                                           ((g7554
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7570
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7569
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7555
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7556
                                                      (letrec*
                                                       ((x7567
                                                         (letrec*
                                                          ((x7568
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
                                                            (= x7568 n))))
                                                        (x7557
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7558
                                                                 (letrec*
                                                                  ((x7565
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7559
                                                                    (letrec*
                                                                     ((x7562
                                                                       (letrec*
                                                                        ((x7564
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
                                                                         (x7563
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
                                                                           x7564
                                                                           x7563))))
                                                                      (x7560
                                                                       (letrec*
                                                                        ((x7561
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
                                                                           x7561)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7562
                                                                            x7560)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7565
                                                                        x7559)))))
                                                               g7558))))
                                                          (letrec*
                                                           ((g7566
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7566))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7567 x7557)))))
                                                    g7556))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7570 x7569 x7555))))))
                                           g7554)))))
                                     g7545)))))
                               g7541)))))
                         g7538))))
                     g7537)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7571
                       (letrec*
                        ((x7572
                          (letrec*
                           ((x7573
                             (letrec*
                              ((x7574
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7574)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7573)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7572)))))
                     g7571)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7578)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7577)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7576)))))
                     g7575)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7579
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7579)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7580
                       (letrec*
                        ((x7582
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7582))))
                      (g7581
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7583
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7584 (if val7251 val7251 #f)))
                               g7584)))))
                         g7583))))
                     g7581)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7585
                       (letrec*
                        ((x7588
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7588))))
                      (g7586
                       (letrec*
                        ((x7589
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7589))))
                      (g7587
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
                         ((g7590
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7591 res))
                         g7591))))
                     g7587)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7592
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7592)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7593
                       (letrec*
                        ((x7596
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7596))))
                      (g7594
                       (letrec*
                        ((x7597
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7597))))
                      (g7595
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7598
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7598))))
                     g7595)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7599
                       (letrec*
                        ((x7600
                          (letrec*
                           ((x7601
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7601)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7600)))))
                     g7599)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7602
                       (letrec*
                        ((x7603
                          (letrec*
                           ((x7604
                             (letrec*
                              ((x7605
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7605)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7604)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7603)))))
                     g7602)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7607
                          (letrec*
                           ((x7608
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7608)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7607)))))
                     g7606)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x7610
                          (letrec*
                           ((x7611
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7611)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7610)))))
                     g7609)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7612
                       (letrec*
                        ((x7615
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7615))))
                      (g7613
                       (letrec*
                        ((x7616
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7616))))
                      (g7614
                       (letrec*
                        ((x7617
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7617)))))
                     g7614)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7618
                       (letrec*
                        ((x7619
                          (letrec*
                           ((x7620
                             (letrec*
                              ((x7621
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7621)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7620)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7619)))))
                     g7618)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7622
                       (letrec*
                        ((x7624
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7624))))
                      (g7623
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7623)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7625
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7625)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7626
                       (letrec*
                        ((x7627
                          (letrec*
                           ((x7628
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7628)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7627)))))
                     g7626)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7629
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7629)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7630
                       (letrec*
                        ((x7632
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7632))))
                      (g7631
                       (letrec*
                        ((x-cnd7633
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7633
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7636
                             (letrec*
                              ((x7637
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7637))))
                            (x7634
                             (letrec*
                              ((x7635
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7635)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7636 x7634)))))))
                     g7631)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7638
                       (letrec*
                        ((x7639
                          (letrec*
                           ((x7640
                             (letrec*
                              ((x7641
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7641)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7640)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7639)))))
                     g7638)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7645)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7644)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7643)))))
                     g7642)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7646
                       (letrec*
                        ((x7648
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7648))))
                      (g7647
                       (letrec*
                        ((x7649
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7649)))))
                     g7647)))
                 (caadar
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
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7653)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7652)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7651)))))
                     g7650)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7654
                       (letrec*
                        ((x7657
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7657))))
                      (g7655
                       (letrec*
                        ((x7658
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7658))))
                      (g7656
                       (if cnd
                         (letrec*
                          ((g7659
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7659)
                         (if cnd
                           (letrec*
                            ((g7660
                              (letrec*
                               ((x7661
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7661)))))
                            g7660)
                           (if cnd
                             (letrec*
                              ((g7662
                                (letrec*
                                 ((x7664
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7663
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7664 x7663)))))
                              g7662)
                             (if cnd
                               (letrec*
                                ((g7665
                                  (letrec*
                                   ((x7668
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7667
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7666
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7668 x7667 x7666)))))
                                g7665)
                               (if cnd
                                 (letrec*
                                  ((g7669
                                    (letrec*
                                     ((x7673
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7673 x7672 x7671 x7670)))))
                                  g7669)
                                 (if cnd
                                   (letrec*
                                    ((g7674
                                      (letrec*
                                       ((x7680
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7679
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7678
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7677
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7675
                                         (letrec*
                                          ((x7676
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7676)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7680
                                          x7679
                                          x7678
                                          x7677
                                          x7675)))))
                                    g7674)
                                   (if cnd
                                     (letrec*
                                      ((g7681
                                        (letrec*
                                         ((x7689
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7688
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7687
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7686
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7684
                                           (letrec*
                                            ((x7685
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7685))))
                                          (x7682
                                           (letrec*
                                            ((x7683
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7683)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7689
                                            x7688
                                            x7687
                                            x7686
                                            x7684
                                            x7682)))))
                                      g7681)
                                     (if cnd
                                       (letrec*
                                        ((g7690
                                          (letrec*
                                           ((x7700
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7696))))
                                            (x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7694))))
                                            (x7691
                                             (letrec*
                                              ((x7692
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7692)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7700
                                              x7699
                                              x7698
                                              x7697
                                              x7695
                                              x7693
                                              x7691)))))
                                        g7690)
                                       (letrec*
                                        ((g7701
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7701)))))))))))
                     g7656)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7702
                       (letrec*
                        ((x7704
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7704))))
                      (g7703
                       (letrec*
                        ((x-cnd7705
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7705
                          #f
                          (letrec*
                           ((x-cnd7706
                             (letrec*
                              ((x7707
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7707 e)))))
                           (if x-cnd7706
                             l
                             (letrec*
                              ((x7708
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7708)))))))))
                     g7703)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7709
                       (letrec*
                        ((x7710
                          (letrec*
                           ((x7711
                             (letrec*
                              ((x7712
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7712)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7711)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7710)))))
                     g7709)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7716)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7715)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7714)))))
                     g7713)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7717
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7717)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7720
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7720))))
                      (g7719
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7719)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7721
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7722
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7722))))
                     g7721)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7723
                       (letrec*
                        ((x7724
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7724)))))
                     g7723)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7728
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7726
                             (letrec*
                              ((x7727
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7727)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7728 x7726)))))
                        (letrec*
                         ((g7729
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7729))))
                     g7725)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7730
                       (letrec*
                        ((x7731
                          (letrec*
                           ((x7732
                             (letrec*
                              ((x7733
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7733)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7732)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7731)))))
                     g7730)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7734
                       (letrec*
                        ((x-cnd7735
                          (letrec*
                           ((x7736 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7736 c)))))
                        (if x-cnd7735
                          (letrec*
                           ((x7737 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7737)))
                          #f))))
                     g7734)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7738
                       (letrec*
                        ((x7740
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7740))))
                      (g7739
                       (letrec*
                        ((x-cnd7741
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7741
                          #f
                          (letrec*
                           ((x-cnd7742
                             (letrec*
                              ((x7743
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7743 k)))))
                           (if x-cnd7742
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7744
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7744)))))))))
                     g7739)))
                 (not (lambda (x) (letrec* ((g7745 (if x #f #t))) g7745)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7746
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7746)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7747
                       (letrec*
                        ((x7749
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7749))))
                      (g7748
                       (letrec*
                        ((x-cnd7750
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7750
                          #f
                          (letrec*
                           ((x-cnd7751
                             (letrec*
                              ((x7752
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7752 e)))))
                           (if x-cnd7751
                             l
                             (letrec*
                              ((x7753
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7753)))))))))
                     g7748)))
                 (cadaar
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
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7757)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7756)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7755)))))
                     g7754)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7758
                       (letrec*
                        ((x7760
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7760))))
                      (g7759
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7761
                               (letrec*
                                ((x-cnd7762
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7762
                                  0
                                  (letrec*
                                   ((x7763
                                     (letrec*
                                      ((x7764
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7764)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7763)))))))
                             g7761))))
                        (letrec*
                         ((g7765
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7765))))
                     g7759)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7766
                       (letrec*
                        ((x7769
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7769))))
                      (g7767
                       (letrec*
                        ((x7770
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7770))))
                      (g7768
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7771
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7771))))
                     g7768)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7772
                       (letrec*
                        ((x7773
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7773)))))
                     g7772)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7774
                       (letrec*
                        ((x7775
                          (letrec*
                           ((x7776
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7776)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7775)))))
                     g7774)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7777
                       (letrec*
                        ((x7779
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7779))))
                      (g7778
                       (letrec*
                        ((x-cnd7780
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7780
                          #f
                          (letrec*
                           ((x-cnd7781
                             (letrec*
                              ((x7782
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7782 k)))))
                           (if x-cnd7781
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7783
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7783)))))))))
                     g7778)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7784
                       (letrec*
                        ((x7785
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7785)))))
                     g7784)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7786
                       (letrec*
                        ((x7789
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7789))))
                      (g7787
                       (letrec*
                        ((x7790
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7790))))
                      (g7788
                       (letrec*
                        ((x7791
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7791)))))
                     g7788)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7792
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7793
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7793))))
                     g7792)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7794
                       (letrec*
                        ((x7797
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7797))))
                      (g7795
                       (letrec*
                        ((x7798
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7798))))
                      (g7796
                       (letrec*
                        ((x-cnd7799
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7799
                          #t
                          (letrec*
                           ((x-cnd7800
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7800
                             (letrec*
                              ((g7801
                                (letrec*
                                 ((x7803
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7803))))
                               (g7802
                                (letrec*
                                 ((x7804
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7804)))))
                              g7802)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7796)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7805
                       (letrec*
                        ((x7807
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7807))))
                      (g7806
                       (letrec*
                        ((x-cnd7808
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7808
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7806)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7809
                       (letrec*
                        ((x7812
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7812))))
                      (g7810
                       (letrec*
                        ((x7813
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7813))))
                      (g7811
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7814
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7814))))
                     g7811)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7815
                       (letrec*
                        ((x7816
                          (letrec*
                           ((x7817
                             (letrec*
                              ((x7818
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7818)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7817)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7816)))))
                     g7815)))
                 (newline (lambda () (letrec* ((g7819 #f)) g7819)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7820
                       (letrec*
                        ((x7822
                          (letrec*
                           ((x7823
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7823))))
                         (x7821
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7822 x7821)))))
                     g7820)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7824
                       (letrec*
                        ((x7826
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7826))))
                      (g7825
                       (letrec*
                        ((x7827
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7827)))))
                     g7825)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7828
                       (letrec*
                        ((x7832
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7832))))
                      (g7829
                       (letrec*
                        ((x7833
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7833))))
                      (g7830
                       (letrec*
                        ((x7834
                          (letrec*
                           ((x7835
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7835)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7834))))
                      (g7831
                       (letrec*
                        ((x-cnd7836
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7836
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7838
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7837
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7838 x7837)))))))
                     g7831)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7839
                       (letrec*
                        ((x-cnd7840
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7840
                          a
                          (letrec*
                           ((x7841
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7841)))))))
                     g7839)))
                 (tak
                  (lambda (x y z k)
                    (letrec*
                     ((g7842
                       (letrec*
                        ((x-cnd7843
                          (letrec*
                           ((x7844
                             (begin
                               (write '(funapp 1354 54))
                               (display "\n")
                               (< y x))))
                           (begin
                             (write '(funapp 1354 64))
                             (display "\n")
                             (not x7844)))))
                        (if x-cnd7843
                          (begin
                            (write '(funapp 1356 27))
                            (display "\n")
                            (k z))
                          (letrec*
                           ((x7850
                             (begin
                               (write '(funapp 1358 36))
                               (display "\n")
                               (- x 1))))
                           (begin
                             (write '(funapp 1359 28))
                             (display "\n")
                             (tak
                              x7850
                              y
                              z
                              (lambda (v1)
                                (letrec*
                                 ((g7845
                                   (letrec*
                                    ((x7849
                                      (begin
                                        (write '(funapp 1367 43))
                                        (display "\n")
                                        (- y 1))))
                                    (begin
                                      (write '(funapp 1368 35))
                                      (display "\n")
                                      (tak
                                       x7849
                                       z
                                       x
                                       (lambda (v2)
                                         (letrec*
                                          ((g7846
                                            (letrec*
                                             ((x7848
                                               (begin
                                                 (write '(funapp 1376 50))
                                                 (display "\n")
                                                 (- z 1))))
                                             (begin
                                               (write '(funapp 1377 42))
                                               (display "\n")
                                               (tak
                                                x7848
                                                x
                                                y
                                                (lambda (v3)
                                                  (letrec*
                                                   ((g7847
                                                     (begin
                                                       (write
                                                        '(funapp 1383 54))
                                                       (display "\n")
                                                       (tak v1 v2 v3 k))))
                                                   g7847)))))))
                                          g7846)))))))
                                 g7845)))))))))
                     g7842)))
                 (tak-main
                  (lambda (x y z)
                    (letrec*
                     ((g7851
                       (letrec*
                        ((x7852
                          (letrec*
                           ((x7853
                             (begin
                               (write '(funapp 1393 50))
                               (display "\n")
                               (x))))
                           (begin
                             (write '(funapp 1393 56))
                             (display "\n")
                             (λ x7853 x)))))
                        (begin
                          (write '(funapp 1394 25))
                          (display "\n")
                          (tak x y z x7852)))))
                     g7851))))
                (letrec*
                 ((g7854
                   (letrec*
                    ((x7858
                      (begin
                        (write '(funapp 1400 23))
                        (display "\n")
                        ((lambda (j7330 k7331 f7332)
                           (letrec*
                            ((g7859
                              (lambda (g7327 g7328 g7329)
                                (letrec*
                                 ((g7860
                                   (letrec*
                                    ((x7861
                                      (letrec*
                                       ((x7864
                                         (begin
                                           (write '(funapp 1409 46))
                                           (display "\n")
                                           (integer?/c j7330 k7331 g7327)))
                                        (x7863
                                         (begin
                                           (write '(funapp 1410 46))
                                           (display "\n")
                                           (integer?/c j7330 k7331 g7328)))
                                        (x7862
                                         (begin
                                           (write '(funapp 1411 46))
                                           (display "\n")
                                           (integer?/c j7330 k7331 g7329))))
                                       (begin
                                         (write '(funapp 1412 38))
                                         (display "\n")
                                         (f7332 x7864 x7863 x7862)))))
                                    (begin
                                      (write '(funapp 1413 35))
                                      (display "\n")
                                      (integer?/c j7330 k7331 x7861)))))
                                 g7860))))
                            g7859))
                         (begin
                           (write '(funapp 1416 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1417 23))
                           (display "\n")
                           'importer)
                         tak-main)))
                     (x7857 (input))
                     (x7856 (input))
                     (x7855 (input)))
                    (begin
                      (write '(funapp 1422 21))
                      (display "\n")
                      (x7858 x7857 x7856 x7855)))))
                 g7854))))
             g7346))))
         g7344)))
      g7343))))
