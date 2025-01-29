(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7345 #t)) g7345)))
      (meta (lambda (v) (letrec* ((g7346 v)) g7346)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7347
            (letrec*
             ((g7348
               (letrec*
                ((x-e7349 lst))
                (letrec*
                 ((v1742 x-e7349))
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
                     ((x-cnd7350
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7350
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
             g7348)))
          g7347)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7351 (lambda (v) (letrec* ((g7352 v)) g7352)))) g7351)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7353
            (letrec*
             ((x7354 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7354)))))
          g7353))))
     (letrec*
      ((g7355
        (letrec*
         ((g7356
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
             ((g7357 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7358
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7359
                       (letrec*
                        ((x-cnd7360
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7360
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7359)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7362
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7361)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7364
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7363)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7365
                       (letrec*
                        ((x-cnd7366
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7367 #t)) g7367))
                             g7269))))
                        (if x-cnd7366
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7365)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7368
                       (letrec*
                        ((x-cnd7369
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7370 #t)) g7370))
                             g7272))))
                        (if x-cnd7369
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7368)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7371
                       (letrec*
                        ((x-cnd7372
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7372
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7371)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7373
                       (letrec*
                        ((x-cnd7374
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7374
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7373)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7375
                       (letrec*
                        ((x-cnd7376
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7376
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7375)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7377
                       (lambda (k j v)
                         (letrec*
                          ((g7378
                            (letrec*
                             ((x-cnd7379
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7379
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7378))))
                     g7377)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7380
                       (lambda (k j v)
                         (letrec*
                          ((g7381
                            (letrec*
                             ((x-cnd7382
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7382
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7386
                                  (letrec*
                                   ((x7387
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7387))))
                                 (x7383
                                  (letrec*
                                   ((x7385
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7384
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7385 k j x7384)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7386 x7383)))))))
                          g7381))))
                     g7380)))
                 (any? (lambda (v) (letrec* ((g7388 #t)) g7388)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7389
                       (letrec*
                        ((x7390
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7390)))))
                     g7389)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7391
                       (letrec*
                        ((x-cnd7392
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7393
                                  (letrec*
                                   ((x7394
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7394)))))
                                g7393))
                             g7284))))
                        (if x-cnd7392
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7391)))
                 (meta (lambda (v) (letrec* ((g7395 v)) g7395)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7397
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7398
                               (letrec*
                                ((x7399
                                  (letrec*
                                   ((x7401
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7400
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7401 x7400)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7399)))))
                             g7398))))
                        g7397))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7396
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7396)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7403
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7404
                               (letrec*
                                ((x7405
                                  (letrec*
                                   ((x7407
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7406
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7407 x7406)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7405)))))
                             g7404))))
                        g7403))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7402
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7402)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7409
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7410
                               (letrec*
                                ((x7411
                                  (letrec*
                                   ((x7413
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7412
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7413 x7412)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7411)))))
                             g7410))))
                        g7409))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7408
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7408)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7415
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7416
                               (letrec*
                                ((x7417
                                  (letrec*
                                   ((x7419
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7418
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7419 x7418)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7417)))))
                             g7416))))
                        g7415))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7414
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7414)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7421
                          (lambda (g7305)
                            (letrec*
                             ((g7422
                               (letrec*
                                ((x7423
                                  (letrec*
                                   ((x7424
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7424)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7423)))))
                             g7422))))
                        g7421))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7420
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7420)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7426
                          (lambda (g7309)
                            (letrec*
                             ((g7427
                               (letrec*
                                ((x7428
                                  (letrec*
                                   ((x7429
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7429)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7428)))))
                             g7427))))
                        g7426))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7425
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7425)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7431
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7432
                               (letrec*
                                ((x7433
                                  (letrec*
                                   ((x7435
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7434
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7435 x7434)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7433)))))
                             g7432))))
                        g7431))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7430
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7430)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7437
                          (lambda (g7318)
                            (letrec*
                             ((g7438
                               (letrec*
                                ((x7439
                                  (letrec*
                                   ((x7440
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7440)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7439)))))
                             g7438))))
                        g7437))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7436
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7436)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7442
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7443
                               (letrec*
                                ((x7444
                                  (letrec*
                                   ((x7446
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7445
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7446 x7445)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7444)))))
                             g7443))))
                        g7442))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7441
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7441)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7447
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7447)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7448
                       (letrec*
                        ((x7449
                          (letrec*
                           ((x7450
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7450)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7449)))))
                     g7448)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7451
                       (letrec*
                        ((x7454
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7454))))
                      (g7452
                       (letrec*
                        ((x7455
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7455))))
                      (g7453
                       (letrec*
                        ((x-cnd7456
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7456
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7459
                             (letrec*
                              ((x7460
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7460))))
                            (x7457
                             (letrec*
                              ((x7458
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7458)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7459 x7457)))))))
                     g7453)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7461
                       (letrec*
                        ((x7462
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7462)))))
                     g7461)))
                 (cadadr
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
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7466)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7465)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7464)))))
                     g7463)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7470)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7469)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7468)))))
                     g7467)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7471
                       (letrec*
                        ((x7474
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7474))))
                      (g7472
                       (letrec*
                        ((x7475
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7475))))
                      (g7473
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
                         ((g7476
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7477 res))
                         g7477))))
                     g7473)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7478
                       (letrec*
                        ((x7479
                          (letrec*
                           ((x7480
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7480)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7479)))))
                     g7478)))
                 (cdaadr
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
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7484)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7483)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7482)))))
                     g7481)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7485
                       (letrec*
                        ((x7487
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7487))))
                      (g7486
                       (letrec*
                        ((x-cnd7488
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7488
                          #f
                          (letrec*
                           ((x-cnd7489
                             (letrec*
                              ((x7490
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7490 k)))))
                           (if x-cnd7489
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7491
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7491)))))))))
                     g7486)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7492
                       (letrec*
                        ((x7493
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7493)))))
                     g7492)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7494
                       (letrec*
                        ((x7496
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7496))))
                      (g7495
                       (letrec*
                        ((x-cnd7497
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7497
                          ""
                          (letrec*
                           ((x7500
                             (letrec*
                              ((x7501
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7501))))
                            (x7498
                             (letrec*
                              ((x7499
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7499)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7500 x7498)))))))
                     g7495)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7502
                       (letrec*
                        ((x7505
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7505))))
                      (g7503
                       (letrec*
                        ((x7506
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7506))))
                      (g7504
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7507
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7507))))
                     g7504)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7508
                       (letrec*
                        ((x7509
                          (letrec*
                           ((x7510
                             (letrec*
                              ((x7511
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7511)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7510)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7509)))))
                     g7508)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7512
                       (letrec*
                        ((x7515
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7515))))
                      (g7513
                       (letrec*
                        ((x7516
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7516))))
                      (g7514
                       (letrec*
                        ((x-cnd7517
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7517
                          x
                          (letrec*
                           ((x7519
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7518
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7519 x7518)))))))
                     g7514)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7520
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7520)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7521
                       (letrec*
                        ((x-cnd7522
                          (letrec*
                           ((x7523 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7523)))))
                        (if x-cnd7522
                          (letrec*
                           ((x7524 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7524)))
                          #f))))
                     g7521)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7525
                       (letrec*
                        ((x7527
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7527))))
                      (g7526
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7528
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7529 (if val7243 val7243 #f)))
                               g7529)))))
                         g7528))))
                     g7526)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7530
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7531
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7531 9)))))
                        (letrec*
                         ((g7532
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7533
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7533 10)))))
                              (letrec*
                               ((g7534
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7535
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7535 32))))))
                               g7534)))))
                         g7532))))
                     g7530)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7536
                       (letrec*
                        ((x7537
                          (letrec*
                           ((x7538
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7538)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7537)))))
                     g7536)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7539
                       (letrec*
                        ((x7541
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7541))))
                      (g7540
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7540)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7542 #f)) g7542)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7543
                       (letrec*
                        ((x7544
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7544)))))
                     g7543)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7545
                       (letrec*
                        ((x7547
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7547))))
                      (g7546
                       (letrec*
                        ((x-cnd7548
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7548
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7546)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7549
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7550
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7552
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7551
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7552 x7551)))))
                              (letrec*
                               ((g7553
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7556
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7555
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7554
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7556 x7555 x7554)))))
                                    (letrec*
                                     ((g7557
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7565
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7564
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7561
                                               (letrec*
                                                ((x7563
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7562
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7563 x7562))))
                                              (x7558
                                               (letrec*
                                                ((x7560
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7559
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7560 x7559)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7565
                                                    x7564
                                                    x7561
                                                    x7558)))))
                                          (letrec*
                                           ((g7566
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7582
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7581
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7567
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7568
                                                      (letrec*
                                                       ((x7579
                                                         (letrec*
                                                          ((x7580
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
                                                            (= x7580 n))))
                                                        (x7569
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7570
                                                                 (letrec*
                                                                  ((x7577
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7571
                                                                    (letrec*
                                                                     ((x7574
                                                                       (letrec*
                                                                        ((x7576
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
                                                                         (x7575
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
                                                                           x7576
                                                                           x7575))))
                                                                      (x7572
                                                                       (letrec*
                                                                        ((x7573
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
                                                                           x7573)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7574
                                                                            x7572)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7577
                                                                        x7571)))))
                                                               g7570))))
                                                          (letrec*
                                                           ((g7578
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7578))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7579 x7569)))))
                                                    g7568))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7582 x7581 x7567))))))
                                           g7566)))))
                                     g7557)))))
                               g7553)))))
                         g7550))))
                     g7549)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7586)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7585)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7584)))))
                     g7583)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7587
                       (letrec*
                        ((x7588
                          (letrec*
                           ((x7589
                             (letrec*
                              ((x7590
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7590)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7589)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7588)))))
                     g7587)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7591
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7591)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7592
                       (letrec*
                        ((x7594
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7594))))
                      (g7593
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7595
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7596 (if val7251 val7251 #f)))
                               g7596)))))
                         g7595))))
                     g7593)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7597
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7600))))
                      (g7598
                       (letrec*
                        ((x7601
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7601))))
                      (g7599
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
                         ((g7602
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7603 res))
                         g7603))))
                     g7599)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7604
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7604)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7605
                       (letrec*
                        ((x7608
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7608))))
                      (g7606
                       (letrec*
                        ((x7609
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7609))))
                      (g7607
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7610
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7610))))
                     g7607)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7611
                       (letrec*
                        ((x7612
                          (letrec*
                           ((x7613
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7613)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7612)))))
                     g7611)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7614
                       (letrec*
                        ((x7615
                          (letrec*
                           ((x7616
                             (letrec*
                              ((x7617
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7617)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7616)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7615)))))
                     g7614)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7618
                       (letrec*
                        ((x7619
                          (letrec*
                           ((x7620
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7620)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7619)))))
                     g7618)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7621
                       (letrec*
                        ((x7622
                          (letrec*
                           ((x7623
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7623)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7622)))))
                     g7621)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7624
                       (letrec*
                        ((x7627
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7627))))
                      (g7625
                       (letrec*
                        ((x7628
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7628))))
                      (g7626
                       (letrec*
                        ((x7629
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7629)))))
                     g7626)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7630
                       (letrec*
                        ((x7631
                          (letrec*
                           ((x7632
                             (letrec*
                              ((x7633
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7633)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7632)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7631)))))
                     g7630)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7634
                       (letrec*
                        ((x7636
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7636))))
                      (g7635
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7635)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7637
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7637)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7638
                       (letrec*
                        ((x7639
                          (letrec*
                           ((x7640
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7640)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7639)))))
                     g7638)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7641
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7641)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7642
                       (letrec*
                        ((x7644
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7644))))
                      (g7643
                       (letrec*
                        ((x-cnd7645
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7645
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7648
                             (letrec*
                              ((x7649
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7649))))
                            (x7646
                             (letrec*
                              ((x7647
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7647)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7648 x7646)))))))
                     g7643)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7653)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7652)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7651)))))
                     g7650)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7657)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7656)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7655)))))
                     g7654)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7658
                       (letrec*
                        ((x7660
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7660))))
                      (g7659
                       (letrec*
                        ((x7661
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7661)))))
                     g7659)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7662
                       (letrec*
                        ((x7663
                          (letrec*
                           ((x7664
                             (letrec*
                              ((x7665
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7665)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7664)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7663)))))
                     g7662)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7666
                       (letrec*
                        ((x7669
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7669))))
                      (g7667
                       (letrec*
                        ((x7670
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7670))))
                      (g7668
                       (if cnd
                         (letrec*
                          ((g7671
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7671)
                         (if cnd
                           (letrec*
                            ((g7672
                              (letrec*
                               ((x7673
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7673)))))
                            g7672)
                           (if cnd
                             (letrec*
                              ((g7674
                                (letrec*
                                 ((x7676
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7675
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7676 x7675)))))
                              g7674)
                             (if cnd
                               (letrec*
                                ((g7677
                                  (letrec*
                                   ((x7680
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7679
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7678
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7680 x7679 x7678)))))
                                g7677)
                               (if cnd
                                 (letrec*
                                  ((g7681
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7683
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7682
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7685 x7684 x7683 x7682)))))
                                  g7681)
                                 (if cnd
                                   (letrec*
                                    ((g7686
                                      (letrec*
                                       ((x7692
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7691
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7690
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7689
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7687
                                         (letrec*
                                          ((x7688
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7688)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7692
                                          x7691
                                          x7690
                                          x7689
                                          x7687)))))
                                    g7686)
                                   (if cnd
                                     (letrec*
                                      ((g7693
                                        (letrec*
                                         ((x7701
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7700
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7699
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7698
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7696
                                           (letrec*
                                            ((x7697
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7697))))
                                          (x7694
                                           (letrec*
                                            ((x7695
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7695)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7701
                                            x7700
                                            x7699
                                            x7698
                                            x7696
                                            x7694)))))
                                      g7693)
                                     (if cnd
                                       (letrec*
                                        ((g7702
                                          (letrec*
                                           ((x7712
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7711
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7710
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7709
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7707
                                             (letrec*
                                              ((x7708
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7708))))
                                            (x7705
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7706))))
                                            (x7703
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7704)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7712
                                              x7711
                                              x7710
                                              x7709
                                              x7707
                                              x7705
                                              x7703)))))
                                        g7702)
                                       (letrec*
                                        ((g7713
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7713)))))))))))
                     g7668)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7714
                       (letrec*
                        ((x7716
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7716))))
                      (g7715
                       (letrec*
                        ((x-cnd7717
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7717
                          #f
                          (letrec*
                           ((x-cnd7718
                             (letrec*
                              ((x7719
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7719 e)))))
                           (if x-cnd7718
                             l
                             (letrec*
                              ((x7720
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7720)))))))))
                     g7715)))
                 (cddddr
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
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7724)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7723)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7722)))))
                     g7721)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((x7726
                          (letrec*
                           ((x7727
                             (letrec*
                              ((x7728
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7728)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7727)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7726)))))
                     g7725)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7729
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7729)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7730
                       (letrec*
                        ((x7732
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7732))))
                      (g7731
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7731)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7734
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7734))))
                     g7733)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7735
                       (letrec*
                        ((x7736
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7736)))))
                     g7735)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7740
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7738
                             (letrec*
                              ((x7739
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7739)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7740 x7738)))))
                        (letrec*
                         ((g7741
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7741))))
                     g7737)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x7743
                          (letrec*
                           ((x7744
                             (letrec*
                              ((x7745
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7745)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7744)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7743)))))
                     g7742)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7746
                       (letrec*
                        ((x-cnd7747
                          (letrec*
                           ((x7748 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7748 c)))))
                        (if x-cnd7747
                          (letrec*
                           ((x7749 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7749)))
                          #f))))
                     g7746)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7750
                       (letrec*
                        ((x7752
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7752))))
                      (g7751
                       (letrec*
                        ((x-cnd7753
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7753
                          #f
                          (letrec*
                           ((x-cnd7754
                             (letrec*
                              ((x7755
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7755 k)))))
                           (if x-cnd7754
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7756
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7756)))))))))
                     g7751)))
                 (not (lambda (x) (letrec* ((g7757 (if x #f #t))) g7757)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7758
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7758)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7759
                       (letrec*
                        ((x7761
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7761))))
                      (g7760
                       (letrec*
                        ((x-cnd7762
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7762
                          #f
                          (letrec*
                           ((x-cnd7763
                             (letrec*
                              ((x7764
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7764 e)))))
                           (if x-cnd7763
                             l
                             (letrec*
                              ((x7765
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7765)))))))))
                     g7760)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7766
                       (letrec*
                        ((x7767
                          (letrec*
                           ((x7768
                             (letrec*
                              ((x7769
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7769)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7768)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7767)))))
                     g7766)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7770
                       (letrec*
                        ((x7772
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7772))))
                      (g7771
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7773
                               (letrec*
                                ((x-cnd7774
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7774
                                  0
                                  (letrec*
                                   ((x7775
                                     (letrec*
                                      ((x7776
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7776)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7775)))))))
                             g7773))))
                        (letrec*
                         ((g7777
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7777))))
                     g7771)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7778
                       (letrec*
                        ((x7781
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7781))))
                      (g7779
                       (letrec*
                        ((x7782
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7782))))
                      (g7780
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7783
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7783))))
                     g7780)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7784
                       (letrec*
                        ((x7785
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7785)))))
                     g7784)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7786
                       (letrec*
                        ((x7787
                          (letrec*
                           ((x7788
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7788)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7787)))))
                     g7786)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7789
                       (letrec*
                        ((x7791
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7791))))
                      (g7790
                       (letrec*
                        ((x-cnd7792
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7792
                          #f
                          (letrec*
                           ((x-cnd7793
                             (letrec*
                              ((x7794
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7794 k)))))
                           (if x-cnd7793
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7795
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7795)))))))))
                     g7790)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7796
                       (letrec*
                        ((x7797
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7797)))))
                     g7796)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7798
                       (letrec*
                        ((x7801
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7801))))
                      (g7799
                       (letrec*
                        ((x7802
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7802))))
                      (g7800
                       (letrec*
                        ((x7803
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7803)))))
                     g7800)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7804
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7805
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7805))))
                     g7804)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7806
                       (letrec*
                        ((x7809
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7809))))
                      (g7807
                       (letrec*
                        ((x7810
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7810))))
                      (g7808
                       (letrec*
                        ((x-cnd7811
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7811
                          #t
                          (letrec*
                           ((x-cnd7812
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7812
                             (letrec*
                              ((g7813
                                (letrec*
                                 ((x7815
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7815))))
                               (g7814
                                (letrec*
                                 ((x7816
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7816)))))
                              g7814)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7808)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7817
                       (letrec*
                        ((x7819
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7819))))
                      (g7818
                       (letrec*
                        ((x-cnd7820
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7820
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7818)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7821
                       (letrec*
                        ((x7824
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7824))))
                      (g7822
                       (letrec*
                        ((x7825
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7825))))
                      (g7823
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7826
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7826))))
                     g7823)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7827
                       (letrec*
                        ((x7828
                          (letrec*
                           ((x7829
                             (letrec*
                              ((x7830
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7830)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7829)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7828)))))
                     g7827)))
                 (newline (lambda () (letrec* ((g7831 #f)) g7831)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7832
                       (letrec*
                        ((x7834
                          (letrec*
                           ((x7835
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7835))))
                         (x7833
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7834 x7833)))))
                     g7832)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7836
                       (letrec*
                        ((x7838
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7838))))
                      (g7837
                       (letrec*
                        ((x7839
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7839)))))
                     g7837)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7840
                       (letrec*
                        ((x7844
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7844))))
                      (g7841
                       (letrec*
                        ((x7845
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7845))))
                      (g7842
                       (letrec*
                        ((x7846
                          (letrec*
                           ((x7847
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7847)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7846))))
                      (g7843
                       (letrec*
                        ((x-cnd7848
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7848
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7850
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7849
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7850 x7849)))))))
                     g7843)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7851
                       (letrec*
                        ((x-cnd7852
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7852
                          a
                          (letrec*
                           ((x7853
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7853)))))))
                     g7851)))
                 (f
                  (lambda (g)
                    (letrec*
                     ((g7854
                       (letrec*
                        ((x7858
                          (begin
                            (write '(funapp 1354 33))
                            (display "\n")
                            (x y)))
                         (x7855
                          (letrec*
                           ((x7857
                             (begin
                               (write '(funapp 1357 36))
                               (display "\n")
                               (+ x 1)))
                            (x7856
                             (begin
                               (write '(funapp 1357 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1358 28))
                             (display "\n")
                             (g x7857 x7856)))))
                        (begin
                          (write '(funapp 1359 25))
                          (display "\n")
                          (λ x7858 x7855)))))
                     g7854)))
                 (unzip
                  (lambda (x k)
                    (letrec*
                     ((g7859
                       (letrec*
                        ((x-cnd7860
                          (begin
                            (write '(funapp 1366 37))
                            (display "\n")
                            (= x 0))))
                        (if x-cnd7860
                          (begin
                            (write '(funapp 1368 27))
                            (display "\n")
                            (k 0 0))
                          (letrec*
                           ((x7862
                             (begin
                               (write '(funapp 1370 36))
                               (display "\n")
                               (- x 1)))
                            (x7861
                             (begin
                               (write '(funapp 1370 52))
                               (display "\n")
                               (f k))))
                           (begin
                             (write '(funapp 1371 28))
                             (display "\n")
                             (unzip x7862 x7861)))))))
                     g7859)))
                 (zip
                  (lambda (x y)
                    (letrec*
                     ((g7863
                       (letrec*
                        ((x-cnd7864
                          (begin
                            (write '(funapp 1378 37))
                            (display "\n")
                            (= x 0))))
                        (if x-cnd7864
                          (letrec*
                           ((x-cnd7865
                             (begin
                               (write '(funapp 1381 40))
                               (display "\n")
                               (= y 0))))
                           (if x-cnd7865
                             0
                             (begin
                               (write '(funapp 1382 43))
                               (display "\n")
                               'fail)))
                          (letrec*
                           ((x-cnd7866
                             (begin
                               (write '(funapp 1384 40))
                               (display "\n")
                               (= y 0))))
                           (if x-cnd7866
                             (begin
                               (write '(funapp 1386 29))
                               (display "\n")
                               'fail)
                             (letrec*
                              ((x7867
                                (letrec*
                                 ((x7869
                                   (begin
                                     (write '(funapp 1390 42))
                                     (display "\n")
                                     (- x 1)))
                                  (x7868
                                   (begin
                                     (write '(funapp 1390 58))
                                     (display "\n")
                                     (- y 1))))
                                 (begin
                                   (write '(funapp 1391 34))
                                   (display "\n")
                                   (zip x7869 x7868)))))
                              (begin
                                (write '(funapp 1392 31))
                                (display "\n")
                                (+ 1 x7867)))))))))
                     g7863)))
                 (main
                  (lambda (n)
                    (letrec*
                     ((g7870
                       (begin
                         (write '(funapp 1394 53))
                         (display "\n")
                         (unzip n zip))))
                     g7870))))
                (letrec*
                 ((g7871
                   (letrec*
                    ((x7874
                      (begin
                        (write '(funapp 1399 23))
                        (display "\n")
                        ((lambda (j7328 k7329 f7330)
                           (letrec*
                            ((g7875
                              (lambda (g7327)
                                (letrec*
                                 ((g7876
                                   (letrec*
                                    ((x7877
                                      (letrec*
                                       ((x7878
                                         (begin
                                           (write '(funapp 1409 40))
                                           (display "\n")
                                           ((lambda (j7338 k7339 f7340)
                                              (letrec*
                                               ((g7879
                                                 (lambda (g7336 g7337)
                                                   (letrec*
                                                    ((g7880
                                                      (letrec*
                                                       ((x7881
                                                         (letrec*
                                                          ((x7883
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1419
                                                                 57))
                                                              (display "\n")
                                                              (integer?/c
                                                               j7338
                                                               k7339
                                                               g7336)))
                                                           (x7882
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1424
                                                                 57))
                                                              (display "\n")
                                                              (integer?/c
                                                               j7338
                                                               k7339
                                                               g7337))))
                                                          (begin
                                                            (write
                                                             '(funapp 1428 55))
                                                            (display "\n")
                                                            (f7340
                                                             x7883
                                                             x7882)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1429 52))
                                                         (display "\n")
                                                         (integer?/c
                                                          j7338
                                                          k7339
                                                          x7881)))))
                                                    g7880))))
                                               g7879))
                                            j7328
                                            k7329
                                            g7327))))
                                       (begin
                                         (write '(funapp 1438 38))
                                         (display "\n")
                                         (f7330 x7878)))))
                                    (begin
                                      (write '(funapp 1439 35))
                                      (display "\n")
                                      ((lambda (j7333 k7334 f7335)
                                         (letrec*
                                          ((g7884
                                            (lambda (g7331 g7332)
                                              (letrec*
                                               ((g7885
                                                 (letrec*
                                                  ((x7886
                                                    (letrec*
                                                     ((x7888
                                                       (begin
                                                         (write
                                                          '(funapp 1449 52))
                                                         (display "\n")
                                                         (integer?/c
                                                          j7333
                                                          k7334
                                                          g7331)))
                                                      (x7887
                                                       (begin
                                                         (write
                                                          '(funapp 1454 52))
                                                         (display "\n")
                                                         (integer?/c
                                                          j7333
                                                          k7334
                                                          g7332))))
                                                     (begin
                                                       (write
                                                        '(funapp 1458 50))
                                                       (display "\n")
                                                       (f7335 x7888 x7887)))))
                                                  (begin
                                                    (write '(funapp 1459 47))
                                                    (display "\n")
                                                    (integer?/c
                                                     j7333
                                                     k7334
                                                     x7886)))))
                                               g7885))))
                                          g7884))
                                       j7328
                                       k7329
                                       x7877)))))
                                 g7876))))
                            g7875))
                         (begin
                           (write '(funapp 1467 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1468 23))
                           (display "\n")
                           'importer)
                         f)))
                     (x7873 (input)))
                    (begin
                      (write '(funapp 1471 21))
                      (display "\n")
                      (x7874 x7873))))
                  (g7872
                   (letrec*
                    ((x7890
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        ((lambda (j7342 k7343 f7344)
                           (letrec*
                            ((g7891
                              (lambda (g7341)
                                (letrec*
                                 ((g7892
                                   (letrec*
                                    ((x7893
                                      (letrec*
                                       ((x7894
                                         (begin
                                           (write '(funapp 1484 46))
                                           (display "\n")
                                           (integer?/c j7342 k7343 g7341))))
                                       (begin
                                         (write '(funapp 1485 38))
                                         (display "\n")
                                         (f7344 x7894)))))
                                    (begin
                                      (write '(funapp 1486 35))
                                      (display "\n")
                                      (integer?/c j7342 k7343 x7893)))))
                                 g7892))))
                            g7891))
                         (begin
                           (write '(funapp 1489 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1490 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7889 (input)))
                    (begin
                      (write '(funapp 1493 21))
                      (display "\n")
                      (x7890 x7889)))))
                 g7872))))
             g7358))))
         g7356)))
      g7355))))
