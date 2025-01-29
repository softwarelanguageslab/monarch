(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7334 #t)) g7334)))
      (meta (lambda (v) (letrec* ((g7335 v)) g7335)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7336
            (letrec*
             ((g7337
               (letrec*
                ((x-e7338 lst))
                (letrec*
                 ((v1742 x-e7338))
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
                     ((x-cnd7339
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7339
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
             g7337)))
          g7336)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7340 (lambda (v) (letrec* ((g7341 v)) g7341)))) g7340)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7342
            (letrec*
             ((x7343 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7343)))))
          g7342))))
     (letrec*
      ((g7344
        (letrec*
         ((g7345
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
             ((g7346 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7347
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7348
                       (letrec*
                        ((x-cnd7349
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7349
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7348)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7350
                       (letrec*
                        ((x-cnd7351
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7351
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7350)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7352
                       (letrec*
                        ((x-cnd7353
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7353
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7352)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7356 #t)) g7356))
                             g7269))))
                        (if x-cnd7355
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7354)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7357
                       (letrec*
                        ((x-cnd7358
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7359 #t)) g7359))
                             g7272))))
                        (if x-cnd7358
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7357)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7361
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7360)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7362
                       (letrec*
                        ((x-cnd7363
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7363
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7362)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7364
                       (letrec*
                        ((x-cnd7365
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7365
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7364)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7366
                       (lambda (k j v)
                         (letrec*
                          ((g7367
                            (letrec*
                             ((x-cnd7368
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7368
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7367))))
                     g7366)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7369
                       (lambda (k j v)
                         (letrec*
                          ((g7370
                            (letrec*
                             ((x-cnd7371
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7371
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7375
                                  (letrec*
                                   ((x7376
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7376))))
                                 (x7372
                                  (letrec*
                                   ((x7374
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7373
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7374 k j x7373)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7375 x7372)))))))
                          g7370))))
                     g7369)))
                 (any? (lambda (v) (letrec* ((g7377 #t)) g7377)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7378
                       (letrec*
                        ((x7379
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7379)))))
                     g7378)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7380
                       (letrec*
                        ((x-cnd7381
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7382
                                  (letrec*
                                   ((x7383
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7383)))))
                                g7382))
                             g7284))))
                        (if x-cnd7381
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7380)))
                 (meta (lambda (v) (letrec* ((g7384 v)) g7384)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7386
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7387
                               (letrec*
                                ((x7388
                                  (letrec*
                                   ((x7390
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7389
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7390 x7389)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7388)))))
                             g7387))))
                        g7386))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7385
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7385)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7392
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7393
                               (letrec*
                                ((x7394
                                  (letrec*
                                   ((x7396
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7395
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7396 x7395)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7394)))))
                             g7393))))
                        g7392))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7391
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7391)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7398
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7399
                               (letrec*
                                ((x7400
                                  (letrec*
                                   ((x7402
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7401
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7402 x7401)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7400)))))
                             g7399))))
                        g7398))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7397
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7397)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7404
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7405
                               (letrec*
                                ((x7406
                                  (letrec*
                                   ((x7408
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7407
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7408 x7407)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7406)))))
                             g7405))))
                        g7404))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7403
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7403)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7410
                          (lambda (g7305)
                            (letrec*
                             ((g7411
                               (letrec*
                                ((x7412
                                  (letrec*
                                   ((x7413
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7413)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7412)))))
                             g7411))))
                        g7410))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7409
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7409)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7415
                          (lambda (g7309)
                            (letrec*
                             ((g7416
                               (letrec*
                                ((x7417
                                  (letrec*
                                   ((x7418
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7418)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7417)))))
                             g7416))))
                        g7415))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7414
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7414)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7420
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7421
                               (letrec*
                                ((x7422
                                  (letrec*
                                   ((x7424
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7423
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7424 x7423)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7422)))))
                             g7421))))
                        g7420))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7419
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7419)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7426
                          (lambda (g7318)
                            (letrec*
                             ((g7427
                               (letrec*
                                ((x7428
                                  (letrec*
                                   ((x7429
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7429)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7428)))))
                             g7427))))
                        g7426))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7425
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7425)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7431
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7432
                               (letrec*
                                ((x7433
                                  (letrec*
                                   ((x7435
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7434
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7435 x7434)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7433)))))
                             g7432))))
                        g7431))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7430
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7430)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7436
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7436)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7437
                       (letrec*
                        ((x7438
                          (letrec*
                           ((x7439
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7439)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7438)))))
                     g7437)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7440
                       (letrec*
                        ((x7443
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7443))))
                      (g7441
                       (letrec*
                        ((x7444
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7444))))
                      (g7442
                       (letrec*
                        ((x-cnd7445
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7445
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7448
                             (letrec*
                              ((x7449
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7449))))
                            (x7446
                             (letrec*
                              ((x7447
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7447)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7448 x7446)))))))
                     g7442)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7450
                       (letrec*
                        ((x7451
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7451)))))
                     g7450)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7452
                       (letrec*
                        ((x7453
                          (letrec*
                           ((x7454
                             (letrec*
                              ((x7455
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7455)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7454)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7453)))))
                     g7452)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7459)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7458)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7457)))))
                     g7456)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7460
                       (letrec*
                        ((x7463
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7463))))
                      (g7461
                       (letrec*
                        ((x7464
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7464))))
                      (g7462
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
                         ((g7465
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7466 res))
                         g7466))))
                     g7462)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7467
                       (letrec*
                        ((x7468
                          (letrec*
                           ((x7469
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7469)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7468)))))
                     g7467)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7470
                       (letrec*
                        ((x7471
                          (letrec*
                           ((x7472
                             (letrec*
                              ((x7473
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7473)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7472)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7471)))))
                     g7470)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7474
                       (letrec*
                        ((x7476
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7476))))
                      (g7475
                       (letrec*
                        ((x-cnd7477
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7477
                          #f
                          (letrec*
                           ((x-cnd7478
                             (letrec*
                              ((x7479
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7479 k)))))
                           (if x-cnd7478
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7480
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7480)))))))))
                     g7475)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7481
                       (letrec*
                        ((x7482
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7482)))))
                     g7481)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7483
                       (letrec*
                        ((x7485
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7485))))
                      (g7484
                       (letrec*
                        ((x-cnd7486
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7486
                          ""
                          (letrec*
                           ((x7489
                             (letrec*
                              ((x7490
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7490))))
                            (x7487
                             (letrec*
                              ((x7488
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7488)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7489 x7487)))))))
                     g7484)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7491
                       (letrec*
                        ((x7494
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7494))))
                      (g7492
                       (letrec*
                        ((x7495
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7495))))
                      (g7493
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7496
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7496))))
                     g7493)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7497
                       (letrec*
                        ((x7498
                          (letrec*
                           ((x7499
                             (letrec*
                              ((x7500
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7500)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7499)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7498)))))
                     g7497)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7501
                       (letrec*
                        ((x7504
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7504))))
                      (g7502
                       (letrec*
                        ((x7505
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7505))))
                      (g7503
                       (letrec*
                        ((x-cnd7506
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7506
                          x
                          (letrec*
                           ((x7508
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7507
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7508 x7507)))))))
                     g7503)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7509
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7509)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7510
                       (letrec*
                        ((x-cnd7511
                          (letrec*
                           ((x7512 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7512)))))
                        (if x-cnd7511
                          (letrec*
                           ((x7513 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7513)))
                          #f))))
                     g7510)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7514
                       (letrec*
                        ((x7516
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7516))))
                      (g7515
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7517
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7518 (if val7243 val7243 #f)))
                               g7518)))))
                         g7517))))
                     g7515)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7519
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7520
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7520 9)))))
                        (letrec*
                         ((g7521
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7522
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7522 10)))))
                              (letrec*
                               ((g7523
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7524
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7524 32))))))
                               g7523)))))
                         g7521))))
                     g7519)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7525
                       (letrec*
                        ((x7526
                          (letrec*
                           ((x7527
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7527)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7526)))))
                     g7525)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7528
                       (letrec*
                        ((x7530
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7530))))
                      (g7529
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7529)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7531 #f)) g7531)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((x7533
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7533)))))
                     g7532)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7534
                       (letrec*
                        ((x7536
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7536))))
                      (g7535
                       (letrec*
                        ((x-cnd7537
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7537
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7535)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7538
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7539
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7541
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7540
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7541 x7540)))))
                              (letrec*
                               ((g7542
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7545
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7544
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7543
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7545 x7544 x7543)))))
                                    (letrec*
                                     ((g7546
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7554
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7553
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7550
                                               (letrec*
                                                ((x7552
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7551
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7552 x7551))))
                                              (x7547
                                               (letrec*
                                                ((x7549
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7548
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7549 x7548)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7554
                                                    x7553
                                                    x7550
                                                    x7547)))))
                                          (letrec*
                                           ((g7555
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7571
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7570
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7556
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7557
                                                      (letrec*
                                                       ((x7568
                                                         (letrec*
                                                          ((x7569
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
                                                            (= x7569 n))))
                                                        (x7558
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7559
                                                                 (letrec*
                                                                  ((x7566
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7560
                                                                    (letrec*
                                                                     ((x7563
                                                                       (letrec*
                                                                        ((x7565
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
                                                                         (x7564
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
                                                                           x7565
                                                                           x7564))))
                                                                      (x7561
                                                                       (letrec*
                                                                        ((x7562
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
                                                                           x7562)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7563
                                                                            x7561)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7566
                                                                        x7560)))))
                                                               g7559))))
                                                          (letrec*
                                                           ((g7567
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7567))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7568 x7558)))))
                                                    g7557))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7571 x7570 x7556))))))
                                           g7555)))))
                                     g7546)))))
                               g7542)))))
                         g7539))))
                     g7538)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7572
                       (letrec*
                        ((x7573
                          (letrec*
                           ((x7574
                             (letrec*
                              ((x7575
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7575)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7574)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7573)))))
                     g7572)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7579)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7578)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7577)))))
                     g7576)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7580
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7580)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7581
                       (letrec*
                        ((x7583
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7583))))
                      (g7582
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7584
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7585 (if val7251 val7251 #f)))
                               g7585)))))
                         g7584))))
                     g7582)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7586
                       (letrec*
                        ((x7589
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7589))))
                      (g7587
                       (letrec*
                        ((x7590
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7590))))
                      (g7588
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
                         ((g7591
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7592 res))
                         g7592))))
                     g7588)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7593
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7593)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7594
                       (letrec*
                        ((x7597
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7597))))
                      (g7595
                       (letrec*
                        ((x7598
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7598))))
                      (g7596
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7599
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7599))))
                     g7596)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7600
                       (letrec*
                        ((x7601
                          (letrec*
                           ((x7602
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7602)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7601)))))
                     g7600)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7603
                       (letrec*
                        ((x7604
                          (letrec*
                           ((x7605
                             (letrec*
                              ((x7606
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7606)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7605)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7604)))))
                     g7603)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7608
                          (letrec*
                           ((x7609
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7609)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7608)))))
                     g7607)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x7611
                          (letrec*
                           ((x7612
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7612)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7611)))))
                     g7610)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x7616
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7616))))
                      (g7614
                       (letrec*
                        ((x7617
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7617))))
                      (g7615
                       (letrec*
                        ((x7618
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7618)))))
                     g7615)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x7620
                          (letrec*
                           ((x7621
                             (letrec*
                              ((x7622
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7622)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7621)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7620)))))
                     g7619)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x7625
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7625))))
                      (g7624
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7624)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7626
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7626)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7627
                       (letrec*
                        ((x7628
                          (letrec*
                           ((x7629
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7629)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7628)))))
                     g7627)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7630
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7630)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7631
                       (letrec*
                        ((x7633
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7633))))
                      (g7632
                       (letrec*
                        ((x-cnd7634
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7634
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7637
                             (letrec*
                              ((x7638
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7638))))
                            (x7635
                             (letrec*
                              ((x7636
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7636)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7637 x7635)))))))
                     g7632)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7639
                       (letrec*
                        ((x7640
                          (letrec*
                           ((x7641
                             (letrec*
                              ((x7642
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7642)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7641)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7640)))))
                     g7639)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7646)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7645)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7644)))))
                     g7643)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7647
                       (letrec*
                        ((x7649
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7649))))
                      (g7648
                       (letrec*
                        ((x7650
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7650)))))
                     g7648)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7651
                       (letrec*
                        ((x7652
                          (letrec*
                           ((x7653
                             (letrec*
                              ((x7654
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7654)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7653)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7652)))))
                     g7651)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7655
                       (letrec*
                        ((x7658
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7658))))
                      (g7656
                       (letrec*
                        ((x7659
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7659))))
                      (g7657
                       (if cnd
                         (letrec*
                          ((g7660
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7660)
                         (if cnd
                           (letrec*
                            ((g7661
                              (letrec*
                               ((x7662
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7662)))))
                            g7661)
                           (if cnd
                             (letrec*
                              ((g7663
                                (letrec*
                                 ((x7665
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7664
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7665 x7664)))))
                              g7663)
                             (if cnd
                               (letrec*
                                ((g7666
                                  (letrec*
                                   ((x7669
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7668
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7667
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7669 x7668 x7667)))))
                                g7666)
                               (if cnd
                                 (letrec*
                                  ((g7670
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7674 x7673 x7672 x7671)))))
                                  g7670)
                                 (if cnd
                                   (letrec*
                                    ((g7675
                                      (letrec*
                                       ((x7681
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7680
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7679
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7678
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7676
                                         (letrec*
                                          ((x7677
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7677)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7681
                                          x7680
                                          x7679
                                          x7678
                                          x7676)))))
                                    g7675)
                                   (if cnd
                                     (letrec*
                                      ((g7682
                                        (letrec*
                                         ((x7690
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7689
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7688
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7687
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7685
                                           (letrec*
                                            ((x7686
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7686))))
                                          (x7683
                                           (letrec*
                                            ((x7684
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7684)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7690
                                            x7689
                                            x7688
                                            x7687
                                            x7685
                                            x7683)))))
                                      g7682)
                                     (if cnd
                                       (letrec*
                                        ((g7691
                                          (letrec*
                                           ((x7701
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7697))))
                                            (x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7695))))
                                            (x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7693)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7701
                                              x7700
                                              x7699
                                              x7698
                                              x7696
                                              x7694
                                              x7692)))))
                                        g7691)
                                       (letrec*
                                        ((g7702
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7702)))))))))))
                     g7657)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7703
                       (letrec*
                        ((x7705
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7705))))
                      (g7704
                       (letrec*
                        ((x-cnd7706
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7706
                          #f
                          (letrec*
                           ((x-cnd7707
                             (letrec*
                              ((x7708
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7708 e)))))
                           (if x-cnd7707
                             l
                             (letrec*
                              ((x7709
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7709)))))))))
                     g7704)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7710
                       (letrec*
                        ((x7711
                          (letrec*
                           ((x7712
                             (letrec*
                              ((x7713
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7713)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7712)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7711)))))
                     g7710)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7717)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7716)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7715)))))
                     g7714)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7718
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7718)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7719
                       (letrec*
                        ((x7721
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7721))))
                      (g7720
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7720)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7723
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7723))))
                     g7722)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7724
                       (letrec*
                        ((x7725
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7725)))))
                     g7724)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7726
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7729
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7727
                             (letrec*
                              ((x7728
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7728)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7729 x7727)))))
                        (letrec*
                         ((g7730
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7730))))
                     g7726)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7731
                       (letrec*
                        ((x7732
                          (letrec*
                           ((x7733
                             (letrec*
                              ((x7734
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7734)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7733)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7732)))))
                     g7731)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7735
                       (letrec*
                        ((x-cnd7736
                          (letrec*
                           ((x7737 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7737 c)))))
                        (if x-cnd7736
                          (letrec*
                           ((x7738 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7738)))
                          #f))))
                     g7735)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7739
                       (letrec*
                        ((x7741
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7741))))
                      (g7740
                       (letrec*
                        ((x-cnd7742
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7742
                          #f
                          (letrec*
                           ((x-cnd7743
                             (letrec*
                              ((x7744
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7744 k)))))
                           (if x-cnd7743
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7745
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7745)))))))))
                     g7740)))
                 (not (lambda (x) (letrec* ((g7746 (if x #f #t))) g7746)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7747
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7747)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7748
                       (letrec*
                        ((x7750
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7750))))
                      (g7749
                       (letrec*
                        ((x-cnd7751
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7751
                          #f
                          (letrec*
                           ((x-cnd7752
                             (letrec*
                              ((x7753
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7753 e)))))
                           (if x-cnd7752
                             l
                             (letrec*
                              ((x7754
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7754)))))))))
                     g7749)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7755
                       (letrec*
                        ((x7756
                          (letrec*
                           ((x7757
                             (letrec*
                              ((x7758
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7758)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7757)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7756)))))
                     g7755)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7759
                       (letrec*
                        ((x7761
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7761))))
                      (g7760
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7762
                               (letrec*
                                ((x-cnd7763
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7763
                                  0
                                  (letrec*
                                   ((x7764
                                     (letrec*
                                      ((x7765
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7765)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7764)))))))
                             g7762))))
                        (letrec*
                         ((g7766
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7766))))
                     g7760)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7767
                       (letrec*
                        ((x7770
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7770))))
                      (g7768
                       (letrec*
                        ((x7771
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7771))))
                      (g7769
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7772
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7772))))
                     g7769)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7773
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7774)))))
                     g7773)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7775
                       (letrec*
                        ((x7776
                          (letrec*
                           ((x7777
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7777)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7776)))))
                     g7775)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7778
                       (letrec*
                        ((x7780
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7780))))
                      (g7779
                       (letrec*
                        ((x-cnd7781
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7781
                          #f
                          (letrec*
                           ((x-cnd7782
                             (letrec*
                              ((x7783
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7783 k)))))
                           (if x-cnd7782
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7784
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7784)))))))))
                     g7779)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7785
                       (letrec*
                        ((x7786
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7786)))))
                     g7785)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7787
                       (letrec*
                        ((x7790
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7790))))
                      (g7788
                       (letrec*
                        ((x7791
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7791))))
                      (g7789
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7792)))))
                     g7789)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7793
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7794
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7794))))
                     g7793)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7795
                       (letrec*
                        ((x7798
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7798))))
                      (g7796
                       (letrec*
                        ((x7799
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7799))))
                      (g7797
                       (letrec*
                        ((x-cnd7800
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7800
                          #t
                          (letrec*
                           ((x-cnd7801
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7801
                             (letrec*
                              ((g7802
                                (letrec*
                                 ((x7804
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7804))))
                               (g7803
                                (letrec*
                                 ((x7805
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7805)))))
                              g7803)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7797)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7806
                       (letrec*
                        ((x7808
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7808))))
                      (g7807
                       (letrec*
                        ((x-cnd7809
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7809
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7807)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7810
                       (letrec*
                        ((x7813
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7813))))
                      (g7811
                       (letrec*
                        ((x7814
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7814))))
                      (g7812
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7815
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7815))))
                     g7812)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7816
                       (letrec*
                        ((x7817
                          (letrec*
                           ((x7818
                             (letrec*
                              ((x7819
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7819)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7818)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7817)))))
                     g7816)))
                 (newline (lambda () (letrec* ((g7820 #f)) g7820)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7821
                       (letrec*
                        ((x7823
                          (letrec*
                           ((x7824
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7824))))
                         (x7822
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7823 x7822)))))
                     g7821)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7825
                       (letrec*
                        ((x7827
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7827))))
                      (g7826
                       (letrec*
                        ((x7828
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7828)))))
                     g7826)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7829
                       (letrec*
                        ((x7833
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7833))))
                      (g7830
                       (letrec*
                        ((x7834
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7834))))
                      (g7831
                       (letrec*
                        ((x7835
                          (letrec*
                           ((x7836
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7836)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7835))))
                      (g7832
                       (letrec*
                        ((x-cnd7837
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7837
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7839
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7838
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7839 x7838)))))))
                     g7832)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7840
                       (letrec*
                        ((x-cnd7841
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7841
                          a
                          (letrec*
                           ((x7842
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7842)))))))
                     g7840)))
                 (recursive-div2
                  (lambda (l)
                    (letrec*
                     ((g7843
                       (letrec*
                        ((x-cnd7844
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (empty? l))))
                        (if x-cnd7844
                          empty
                          (letrec*
                           ((x7848
                             (begin
                               (write '(funapp 1358 36))
                               (display "\n")
                               (car l)))
                            (x7845
                             (letrec*
                              ((x7846
                                (letrec*
                                 ((x7847
                                   (begin
                                     (write '(funapp 1361 56))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1361 66))
                                   (display "\n")
                                   (cdr x7847)))))
                              (begin
                                (write '(funapp 1362 31))
                                (display "\n")
                                (recursive-div2 x7846)))))
                           (begin
                             (write '(funapp 1363 28))
                             (display "\n")
                             (cons x7848 x7845)))))))
                     g7843)))
                 (even-list/c
                  (lambda (g7327 g7328 g7329)
                    (letrec*
                     ((g7849
                       (letrec*
                        ((x-cnd7850
                          (begin
                            (write '(funapp 1371 27))
                            (display "\n")
                            ((lambda ()
                               (letrec*
                                ((g7851
                                  (letrec*
                                   ((x7852
                                     (letrec*
                                      ((x7853
                                        (begin
                                          (write '(funapp 1377 45))
                                          (display "\n")
                                          (cons/c any/c even-list/c))))
                                      (begin
                                        (write '(funapp 1378 37))
                                        (display "\n")
                                        (cons/c any/c x7853)))))
                                   (begin
                                     (write '(funapp 1379 34))
                                     (display "\n")
                                     (or/c null? x7852)))))
                                g7851))
                             g7329))))
                        (if x-cnd7850
                          g7329
                          (begin
                            (write '(blame g7327 1384 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7327)))))))
                     g7849))))
                (letrec*
                 ((g7854
                   (letrec*
                    ((x7856
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        ((lambda (j7331 k7332 f7333)
                           (letrec*
                            ((g7857
                              (lambda (g7330)
                                (letrec*
                                 ((g7858
                                   (letrec*
                                    ((x7862
                                      (begin
                                        (write '(funapp 1402 43))
                                        (display "\n")
                                        (listof any/c)))
                                     (x7859
                                      (letrec*
                                       ((x7860
                                         (letrec*
                                          ((x7861
                                            (begin
                                              (write '(funapp 1407 49))
                                              (display "\n")
                                              (even-list/c))))
                                          (begin
                                            (write '(funapp 1408 41))
                                            (display "\n")
                                            (x7861 j7331 k7332 g7330)))))
                                       (begin
                                         (write '(funapp 1409 38))
                                         (display "\n")
                                         (f7333 x7860)))))
                                    (begin
                                      (write '(funapp 1410 35))
                                      (display "\n")
                                      (x7862 j7331 k7332 x7859)))))
                                 g7858))))
                            g7857))
                         (begin
                           (write '(funapp 1413 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1414 23))
                           (display "\n")
                           'importer)
                         recursive-div2)))
                     (x7855 (input)))
                    (begin
                      (write '(funapp 1417 21))
                      (display "\n")
                      (x7856 x7855)))))
                 g7854))))
             g7347))))
         g7345)))
      g7344))))
