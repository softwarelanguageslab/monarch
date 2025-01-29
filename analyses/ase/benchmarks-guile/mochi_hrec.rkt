(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7340 #t)) g7340)))
      (meta (lambda (v) (letrec* ((g7341 v)) g7341)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7342
            (letrec*
             ((g7343
               (letrec*
                ((x-e7344 lst))
                (letrec*
                 ((v1742 x-e7344))
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
                     ((x-cnd7345
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7345
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
             g7343)))
          g7342)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7346 (lambda (v) (letrec* ((g7347 v)) g7347)))) g7346)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7348
            (letrec*
             ((x7349 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7349)))))
          g7348))))
     (letrec*
      ((g7350
        (letrec*
         ((g7351
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
             ((g7352 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7353
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7355
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7354)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7357
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7356)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7359
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7358)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7362 #t)) g7362))
                             g7269))))
                        (if x-cnd7361
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7360)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7365 #t)) g7365))
                             g7272))))
                        (if x-cnd7364
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7363)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7366
                       (letrec*
                        ((x-cnd7367
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7367
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7366)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7368
                       (letrec*
                        ((x-cnd7369
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7369
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7368)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7370
                       (letrec*
                        ((x-cnd7371
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7371
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7370)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7372
                       (lambda (k j v)
                         (letrec*
                          ((g7373
                            (letrec*
                             ((x-cnd7374
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7374
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7373))))
                     g7372)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7375
                       (lambda (k j v)
                         (letrec*
                          ((g7376
                            (letrec*
                             ((x-cnd7377
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7377
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7381
                                  (letrec*
                                   ((x7382
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7382))))
                                 (x7378
                                  (letrec*
                                   ((x7380
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7379
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7380 k j x7379)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7381 x7378)))))))
                          g7376))))
                     g7375)))
                 (any? (lambda (v) (letrec* ((g7383 #t)) g7383)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7384
                       (letrec*
                        ((x7385
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7385)))))
                     g7384)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7386
                       (letrec*
                        ((x-cnd7387
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7388
                                  (letrec*
                                   ((x7389
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7389)))))
                                g7388))
                             g7284))))
                        (if x-cnd7387
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7386)))
                 (meta (lambda (v) (letrec* ((g7390 v)) g7390)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7392
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7393
                               (letrec*
                                ((x7394
                                  (letrec*
                                   ((x7396
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7395
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7396 x7395)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7394)))))
                             g7393))))
                        g7392))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7391
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7391)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7398
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7399
                               (letrec*
                                ((x7400
                                  (letrec*
                                   ((x7402
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7401
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7402 x7401)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7400)))))
                             g7399))))
                        g7398))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7397
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7397)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7404
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7405
                               (letrec*
                                ((x7406
                                  (letrec*
                                   ((x7408
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7407
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7408 x7407)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7406)))))
                             g7405))))
                        g7404))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7403
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7403)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7410
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7411
                               (letrec*
                                ((x7412
                                  (letrec*
                                   ((x7414
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7413
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7414 x7413)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7412)))))
                             g7411))))
                        g7410))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7409
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7409)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7416
                          (lambda (g7305)
                            (letrec*
                             ((g7417
                               (letrec*
                                ((x7418
                                  (letrec*
                                   ((x7419
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7419)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7418)))))
                             g7417))))
                        g7416))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7415
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7415)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7421
                          (lambda (g7309)
                            (letrec*
                             ((g7422
                               (letrec*
                                ((x7423
                                  (letrec*
                                   ((x7424
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7424)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7423)))))
                             g7422))))
                        g7421))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7420
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7420)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7426
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7427
                               (letrec*
                                ((x7428
                                  (letrec*
                                   ((x7430
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7429
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7430 x7429)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7428)))))
                             g7427))))
                        g7426))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7425
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7425)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7432
                          (lambda (g7318)
                            (letrec*
                             ((g7433
                               (letrec*
                                ((x7434
                                  (letrec*
                                   ((x7435
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7435)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7434)))))
                             g7433))))
                        g7432))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7431
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7431)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7437
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7438
                               (letrec*
                                ((x7439
                                  (letrec*
                                   ((x7441
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7440
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7441 x7440)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7439)))))
                             g7438))))
                        g7437))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7436
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7436)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7442
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7442)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7443
                       (letrec*
                        ((x7444
                          (letrec*
                           ((x7445
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7445)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7444)))))
                     g7443)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7446
                       (letrec*
                        ((x7449
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7449))))
                      (g7447
                       (letrec*
                        ((x7450
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7450))))
                      (g7448
                       (letrec*
                        ((x-cnd7451
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7451
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7454
                             (letrec*
                              ((x7455
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7455))))
                            (x7452
                             (letrec*
                              ((x7453
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7453)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7454 x7452)))))))
                     g7448)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7456
                       (letrec*
                        ((x7457
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7457)))))
                     g7456)))
                 (cadadr
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
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7461)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7460)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7459)))))
                     g7458)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7462
                       (letrec*
                        ((x7463
                          (letrec*
                           ((x7464
                             (letrec*
                              ((x7465
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7465)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7464)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7463)))))
                     g7462)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7466
                       (letrec*
                        ((x7469
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7469))))
                      (g7467
                       (letrec*
                        ((x7470
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7470))))
                      (g7468
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
                         ((g7471
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7472 res))
                         g7472))))
                     g7468)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7473
                       (letrec*
                        ((x7474
                          (letrec*
                           ((x7475
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7475)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7474)))))
                     g7473)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7476
                       (letrec*
                        ((x7477
                          (letrec*
                           ((x7478
                             (letrec*
                              ((x7479
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7479)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7478)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7477)))))
                     g7476)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x7482
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7482))))
                      (g7481
                       (letrec*
                        ((x-cnd7483
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7483
                          #f
                          (letrec*
                           ((x-cnd7484
                             (letrec*
                              ((x7485
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7485 k)))))
                           (if x-cnd7484
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7486
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7486)))))))))
                     g7481)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7487
                       (letrec*
                        ((x7488
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7488)))))
                     g7487)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7489
                       (letrec*
                        ((x7491
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7491))))
                      (g7490
                       (letrec*
                        ((x-cnd7492
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7492
                          ""
                          (letrec*
                           ((x7495
                             (letrec*
                              ((x7496
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7496))))
                            (x7493
                             (letrec*
                              ((x7494
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7494)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7495 x7493)))))))
                     g7490)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7497
                       (letrec*
                        ((x7500
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7500))))
                      (g7498
                       (letrec*
                        ((x7501
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7501))))
                      (g7499
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7502
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7502))))
                     g7499)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7503
                       (letrec*
                        ((x7504
                          (letrec*
                           ((x7505
                             (letrec*
                              ((x7506
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7506)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7505)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7504)))))
                     g7503)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7507
                       (letrec*
                        ((x7510
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7510))))
                      (g7508
                       (letrec*
                        ((x7511
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7511))))
                      (g7509
                       (letrec*
                        ((x-cnd7512
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7512
                          x
                          (letrec*
                           ((x7514
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7513
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7514 x7513)))))))
                     g7509)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7515
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7515)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7516
                       (letrec*
                        ((x-cnd7517
                          (letrec*
                           ((x7518 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7518)))))
                        (if x-cnd7517
                          (letrec*
                           ((x7519 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7519)))
                          #f))))
                     g7516)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7520
                       (letrec*
                        ((x7522
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7522))))
                      (g7521
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7523
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7524 (if val7243 val7243 #f)))
                               g7524)))))
                         g7523))))
                     g7521)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7525
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7526
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7526 9)))))
                        (letrec*
                         ((g7527
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7528
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7528 10)))))
                              (letrec*
                               ((g7529
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7530
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7530 32))))))
                               g7529)))))
                         g7527))))
                     g7525)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7531
                       (letrec*
                        ((x7532
                          (letrec*
                           ((x7533
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7533)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7532)))))
                     g7531)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7534
                       (letrec*
                        ((x7536
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7536))))
                      (g7535
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7535)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7537 #f)) g7537)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7538
                       (letrec*
                        ((x7539
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7539)))))
                     g7538)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7540
                       (letrec*
                        ((x7542
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7542))))
                      (g7541
                       (letrec*
                        ((x-cnd7543
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7543
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7541)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7544
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7545
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7547
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7546
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7547 x7546)))))
                              (letrec*
                               ((g7548
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7551
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7550
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7549
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7551 x7550 x7549)))))
                                    (letrec*
                                     ((g7552
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7560
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7559
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7556
                                               (letrec*
                                                ((x7558
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7557
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7558 x7557))))
                                              (x7553
                                               (letrec*
                                                ((x7555
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7554
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7555 x7554)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7560
                                                    x7559
                                                    x7556
                                                    x7553)))))
                                          (letrec*
                                           ((g7561
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7577
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7576
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7562
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7563
                                                      (letrec*
                                                       ((x7574
                                                         (letrec*
                                                          ((x7575
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
                                                            (= x7575 n))))
                                                        (x7564
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7565
                                                                 (letrec*
                                                                  ((x7572
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7566
                                                                    (letrec*
                                                                     ((x7569
                                                                       (letrec*
                                                                        ((x7571
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
                                                                         (x7570
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
                                                                           x7571
                                                                           x7570))))
                                                                      (x7567
                                                                       (letrec*
                                                                        ((x7568
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
                                                                           x7568)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7569
                                                                            x7567)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7572
                                                                        x7566)))))
                                                               g7565))))
                                                          (letrec*
                                                           ((g7573
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7573))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7574 x7564)))))
                                                    g7563))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7577 x7576 x7562))))))
                                           g7561)))))
                                     g7552)))))
                               g7548)))))
                         g7545))))
                     g7544)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7581)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7580)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7579)))))
                     g7578)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7582
                       (letrec*
                        ((x7583
                          (letrec*
                           ((x7584
                             (letrec*
                              ((x7585
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7585)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7584)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7583)))))
                     g7582)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7586
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7586)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7587
                       (letrec*
                        ((x7589
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7589))))
                      (g7588
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7590
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7591 (if val7251 val7251 #f)))
                               g7591)))))
                         g7590))))
                     g7588)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7592
                       (letrec*
                        ((x7595
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7595))))
                      (g7593
                       (letrec*
                        ((x7596
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7596))))
                      (g7594
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
                         ((g7597
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7598 res))
                         g7598))))
                     g7594)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7599
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7599)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7600
                       (letrec*
                        ((x7603
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7603))))
                      (g7601
                       (letrec*
                        ((x7604
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7604))))
                      (g7602
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7605
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7605))))
                     g7602)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7606
                       (letrec*
                        ((x7607
                          (letrec*
                           ((x7608
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7608)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7607)))))
                     g7606)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x7610
                          (letrec*
                           ((x7611
                             (letrec*
                              ((x7612
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7612)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7611)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7610)))))
                     g7609)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x7614
                          (letrec*
                           ((x7615
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7615)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7614)))))
                     g7613)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x7617
                          (letrec*
                           ((x7618
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7618)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7617)))))
                     g7616)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x7622
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7622))))
                      (g7620
                       (letrec*
                        ((x7623
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7623))))
                      (g7621
                       (letrec*
                        ((x7624
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7624)))))
                     g7621)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7625
                       (letrec*
                        ((x7626
                          (letrec*
                           ((x7627
                             (letrec*
                              ((x7628
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7628)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7627)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7626)))))
                     g7625)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7629
                       (letrec*
                        ((x7631
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7631))))
                      (g7630
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7630)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7632
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7632)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7633
                       (letrec*
                        ((x7634
                          (letrec*
                           ((x7635
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7635)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7634)))))
                     g7633)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7636
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7636)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7637
                       (letrec*
                        ((x7639
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7639))))
                      (g7638
                       (letrec*
                        ((x-cnd7640
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7640
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7643
                             (letrec*
                              ((x7644
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7644))))
                            (x7641
                             (letrec*
                              ((x7642
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7642)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7643 x7641)))))))
                     g7638)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7648)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7647)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7646)))))
                     g7645)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7652)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7651)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7650)))))
                     g7649)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7653
                       (letrec*
                        ((x7655
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7655))))
                      (g7654
                       (letrec*
                        ((x7656
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7656)))))
                     g7654)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7657
                       (letrec*
                        ((x7658
                          (letrec*
                           ((x7659
                             (letrec*
                              ((x7660
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7660)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7659)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7658)))))
                     g7657)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7661
                       (letrec*
                        ((x7664
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7664))))
                      (g7662
                       (letrec*
                        ((x7665
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7665))))
                      (g7663
                       (if cnd
                         (letrec*
                          ((g7666
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7666)
                         (if cnd
                           (letrec*
                            ((g7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7668)))))
                            g7667)
                           (if cnd
                             (letrec*
                              ((g7669
                                (letrec*
                                 ((x7671
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7670
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7671 x7670)))))
                              g7669)
                             (if cnd
                               (letrec*
                                ((g7672
                                  (letrec*
                                   ((x7675
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7674
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7673
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7675 x7674 x7673)))))
                                g7672)
                               (if cnd
                                 (letrec*
                                  ((g7676
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7680 x7679 x7678 x7677)))))
                                  g7676)
                                 (if cnd
                                   (letrec*
                                    ((g7681
                                      (letrec*
                                       ((x7687
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7686
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7685
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7684
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7682
                                         (letrec*
                                          ((x7683
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7683)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7687
                                          x7686
                                          x7685
                                          x7684
                                          x7682)))))
                                    g7681)
                                   (if cnd
                                     (letrec*
                                      ((g7688
                                        (letrec*
                                         ((x7696
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7695
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7694
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7693
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7691
                                           (letrec*
                                            ((x7692
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7692))))
                                          (x7689
                                           (letrec*
                                            ((x7690
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7690)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7696
                                            x7695
                                            x7694
                                            x7693
                                            x7691
                                            x7689)))))
                                      g7688)
                                     (if cnd
                                       (letrec*
                                        ((g7697
                                          (letrec*
                                           ((x7707
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7706
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7702
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7703))))
                                            (x7700
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7701))))
                                            (x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7699)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7707
                                              x7706
                                              x7705
                                              x7704
                                              x7702
                                              x7700
                                              x7698)))))
                                        g7697)
                                       (letrec*
                                        ((g7708
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7708)))))))))))
                     g7663)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7709
                       (letrec*
                        ((x7711
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7711))))
                      (g7710
                       (letrec*
                        ((x-cnd7712
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7712
                          #f
                          (letrec*
                           ((x-cnd7713
                             (letrec*
                              ((x7714
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7714 e)))))
                           (if x-cnd7713
                             l
                             (letrec*
                              ((x7715
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7715)))))))))
                     g7710)))
                 (cddddr
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
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7719)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7718)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7717)))))
                     g7716)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7720
                       (letrec*
                        ((x7721
                          (letrec*
                           ((x7722
                             (letrec*
                              ((x7723
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7723)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7722)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7721)))))
                     g7720)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7724
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7724)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((x7727
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7727))))
                      (g7726
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7726)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7728
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7729
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7729))))
                     g7728)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7730
                       (letrec*
                        ((x7731
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7731)))))
                     g7730)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7735
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7733
                             (letrec*
                              ((x7734
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7734)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7735 x7733)))))
                        (letrec*
                         ((g7736
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7736))))
                     g7732)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((x7738
                          (letrec*
                           ((x7739
                             (letrec*
                              ((x7740
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7740)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7739)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7738)))))
                     g7737)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7741
                       (letrec*
                        ((x-cnd7742
                          (letrec*
                           ((x7743 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7743 c)))))
                        (if x-cnd7742
                          (letrec*
                           ((x7744 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7744)))
                          #f))))
                     g7741)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7745
                       (letrec*
                        ((x7747
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7747))))
                      (g7746
                       (letrec*
                        ((x-cnd7748
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7748
                          #f
                          (letrec*
                           ((x-cnd7749
                             (letrec*
                              ((x7750
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7750 k)))))
                           (if x-cnd7749
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7751
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7751)))))))))
                     g7746)))
                 (not (lambda (x) (letrec* ((g7752 (if x #f #t))) g7752)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7753
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7753)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7754
                       (letrec*
                        ((x7756
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7756))))
                      (g7755
                       (letrec*
                        ((x-cnd7757
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7757
                          #f
                          (letrec*
                           ((x-cnd7758
                             (letrec*
                              ((x7759
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7759 e)))))
                           (if x-cnd7758
                             l
                             (letrec*
                              ((x7760
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7760)))))))))
                     g7755)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7761
                       (letrec*
                        ((x7762
                          (letrec*
                           ((x7763
                             (letrec*
                              ((x7764
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7764)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7763)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7762)))))
                     g7761)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7765
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7767))))
                      (g7766
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7768
                               (letrec*
                                ((x-cnd7769
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7769
                                  0
                                  (letrec*
                                   ((x7770
                                     (letrec*
                                      ((x7771
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7771)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7770)))))))
                             g7768))))
                        (letrec*
                         ((g7772
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7772))))
                     g7766)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7773
                       (letrec*
                        ((x7776
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7776))))
                      (g7774
                       (letrec*
                        ((x7777
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7777))))
                      (g7775
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7778
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7778))))
                     g7775)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7779
                       (letrec*
                        ((x7780
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7780)))))
                     g7779)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7781
                       (letrec*
                        ((x7782
                          (letrec*
                           ((x7783
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7783)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7782)))))
                     g7781)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7784
                       (letrec*
                        ((x7786
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7786))))
                      (g7785
                       (letrec*
                        ((x-cnd7787
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7787
                          #f
                          (letrec*
                           ((x-cnd7788
                             (letrec*
                              ((x7789
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7789 k)))))
                           (if x-cnd7788
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7790
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7790)))))))))
                     g7785)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7792)))))
                     g7791)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7793
                       (letrec*
                        ((x7796
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7796))))
                      (g7794
                       (letrec*
                        ((x7797
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7797))))
                      (g7795
                       (letrec*
                        ((x7798
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7798)))))
                     g7795)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7799
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7800
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7800))))
                     g7799)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7801
                       (letrec*
                        ((x7804
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7804))))
                      (g7802
                       (letrec*
                        ((x7805
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7805))))
                      (g7803
                       (letrec*
                        ((x-cnd7806
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7806
                          #t
                          (letrec*
                           ((x-cnd7807
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7807
                             (letrec*
                              ((g7808
                                (letrec*
                                 ((x7810
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7810))))
                               (g7809
                                (letrec*
                                 ((x7811
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7811)))))
                              g7809)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7803)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7812
                       (letrec*
                        ((x7814
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7814))))
                      (g7813
                       (letrec*
                        ((x-cnd7815
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7815
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7813)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7816
                       (letrec*
                        ((x7819
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7819))))
                      (g7817
                       (letrec*
                        ((x7820
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7820))))
                      (g7818
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7821
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7821))))
                     g7818)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7822
                       (letrec*
                        ((x7823
                          (letrec*
                           ((x7824
                             (letrec*
                              ((x7825
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7825)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7824)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7823)))))
                     g7822)))
                 (newline (lambda () (letrec* ((g7826 #f)) g7826)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7827
                       (letrec*
                        ((x7829
                          (letrec*
                           ((x7830
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7830))))
                         (x7828
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7829 x7828)))))
                     g7827)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7831
                       (letrec*
                        ((x7833
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7833))))
                      (g7832
                       (letrec*
                        ((x7834
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7834)))))
                     g7832)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7835
                       (letrec*
                        ((x7839
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7839))))
                      (g7836
                       (letrec*
                        ((x7840
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7840))))
                      (g7837
                       (letrec*
                        ((x7841
                          (letrec*
                           ((x7842
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7842)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7841))))
                      (g7838
                       (letrec*
                        ((x-cnd7843
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7843
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7845
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7844
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7845 x7844)))))))
                     g7838)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7846
                       (letrec*
                        ((x-cnd7847
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7847
                          a
                          (letrec*
                           ((x7848
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7848)))))))
                     g7846)))
                 (f
                  (lambda (g x)
                    (letrec*
                     ((g7849
                       (letrec*
                        ((x-cnd7850
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (>= x 0))))
                        (if x-cnd7850
                          (begin
                            (write '(funapp 1356 27))
                            (display "\n")
                            (g x))
                          (letrec*
                           ((x7852
                             (letrec*
                              ((x7854
                                (begin
                                  (write '(funapp 1360 39))
                                  (display "\n")
                                  (x)))
                               (x7853
                                (begin
                                  (write '(funapp 1360 51))
                                  (display "\n")
                                  (f g x))))
                              (begin
                                (write '(funapp 1361 31))
                                (display "\n")
                                (λ x7854 x7853))))
                            (x7851
                             (begin
                               (write '(funapp 1362 36))
                               (display "\n")
                               (g x))))
                           (begin
                             (write '(funapp 1363 28))
                             (display "\n")
                             (f x7852 x7851)))))))
                     g7849)))
                 (main
                  (lambda (n)
                    (letrec*
                     ((g7855
                       (begin
                         (write '(funapp 1365 53))
                         (display "\n")
                         (f add1 n))))
                     g7855))))
                (letrec*
                 ((g7856
                   (letrec*
                    ((x7860
                      (begin
                        (write '(funapp 1370 23))
                        (display "\n")
                        ((lambda (j7329 k7330 f7331)
                           (letrec*
                            ((g7861
                              (lambda (g7327 g7328)
                                (letrec*
                                 ((g7862
                                   (letrec*
                                    ((x7863
                                      (letrec*
                                       ((x7865
                                         (begin
                                           (write '(funapp 1380 40))
                                           (display "\n")
                                           ((lambda (j7333 k7334 f7335)
                                              (letrec*
                                               ((g7866
                                                 (lambda (g7332)
                                                   (letrec*
                                                    ((g7867
                                                      (letrec*
                                                       ((x7868
                                                         (letrec*
                                                          ((x7869
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1390
                                                                 57))
                                                              (display "\n")
                                                              (integer?
                                                               j7333
                                                               k7334
                                                               g7332))))
                                                          (begin
                                                            (write
                                                             '(funapp 1394 55))
                                                            (display "\n")
                                                            (f7335 x7869)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1395 52))
                                                         (display "\n")
                                                         (integer?
                                                          j7333
                                                          k7334
                                                          x7868)))))
                                                    g7867))))
                                               g7866))
                                            j7329
                                            k7330
                                            g7327)))
                                        (x7864
                                         (begin
                                           (write '(funapp 1404 46))
                                           (display "\n")
                                           (integer? j7329 k7330 g7328))))
                                       (begin
                                         (write '(funapp 1405 38))
                                         (display "\n")
                                         (f7331 x7865 x7864)))))
                                    (begin
                                      (write '(funapp 1406 35))
                                      (display "\n")
                                      (integer? j7329 k7330 x7863)))))
                                 g7862))))
                            g7861))
                         (begin
                           (write '(funapp 1409 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1410 23))
                           (display "\n")
                           'importer)
                         f)))
                     (x7859 (input))
                     (x7858 (input)))
                    (begin
                      (write '(funapp 1414 21))
                      (display "\n")
                      (x7860 x7859 x7858))))
                  (g7857
                   (letrec*
                    ((x7871
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        ((lambda (j7337 k7338 f7339)
                           (letrec*
                            ((g7872
                              (lambda (g7336)
                                (letrec*
                                 ((g7873
                                   (letrec*
                                    ((x7876
                                      (letrec*
                                       ((x7877
                                         (begin
                                           (write '(funapp 1427 46))
                                           (display "\n")
                                           (>=/c 0))))
                                       (begin
                                         (write '(funapp 1428 38))
                                         (display "\n")
                                         (and/c integer? x7877))))
                                     (x7874
                                      (letrec*
                                       ((x7875
                                         (begin
                                           (write '(funapp 1431 46))
                                           (display "\n")
                                           (integer? j7337 k7338 g7336))))
                                       (begin
                                         (write '(funapp 1432 38))
                                         (display "\n")
                                         (f7339 x7875)))))
                                    (begin
                                      (write '(funapp 1433 35))
                                      (display "\n")
                                      (x7876 j7337 k7338 x7874)))))
                                 g7873))))
                            g7872))
                         (begin
                           (write '(funapp 1436 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1437 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7870 (input)))
                    (begin
                      (write '(funapp 1440 21))
                      (display "\n")
                      (x7871 x7870)))))
                 g7857))))
             g7353))))
         g7351)))
      g7350))))
