(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7335 #t)) g7335)))
      (meta (lambda (v) (letrec* ((g7336 v)) g7336)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7337
            (letrec*
             ((g7338
               (letrec*
                ((x-e7339 lst))
                (letrec*
                 ((v1742 x-e7339))
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
                     ((x-cnd7340
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7340
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
             g7338)))
          g7337)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7341 (lambda (v) (letrec* ((g7342 v)) g7342)))) g7341)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7343
            (letrec*
             ((x7344 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7344)))))
          g7343))))
     (letrec*
      ((g7345
        (letrec*
         ((g7346
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
             ((g7347 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7348
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7349
                       (letrec*
                        ((x-cnd7350
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7350
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7349)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7351
                       (letrec*
                        ((x-cnd7352
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7352
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7351)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7353
                       (letrec*
                        ((x-cnd7354
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7354
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7353)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7355
                       (letrec*
                        ((x-cnd7356
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7357 #t)) g7357))
                             g7269))))
                        (if x-cnd7356
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7355)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7360 #t)) g7360))
                             g7272))))
                        (if x-cnd7359
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7358)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7362
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7361)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7364
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7363)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7365
                       (letrec*
                        ((x-cnd7366
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7366
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7365)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7367
                       (lambda (k j v)
                         (letrec*
                          ((g7368
                            (letrec*
                             ((x-cnd7369
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7369
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7368))))
                     g7367)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7370
                       (lambda (k j v)
                         (letrec*
                          ((g7371
                            (letrec*
                             ((x-cnd7372
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7372
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7376
                                  (letrec*
                                   ((x7377
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7377))))
                                 (x7373
                                  (letrec*
                                   ((x7375
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7374
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7375 k j x7374)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7376 x7373)))))))
                          g7371))))
                     g7370)))
                 (any? (lambda (v) (letrec* ((g7378 #t)) g7378)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7379
                       (letrec*
                        ((x7380
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7380)))))
                     g7379)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7381
                       (letrec*
                        ((x-cnd7382
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7383
                                  (letrec*
                                   ((x7384
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7384)))))
                                g7383))
                             g7284))))
                        (if x-cnd7382
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7381)))
                 (meta (lambda (v) (letrec* ((g7385 v)) g7385)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7387
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7388
                               (letrec*
                                ((x7389
                                  (letrec*
                                   ((x7391
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7390
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7391 x7390)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7389)))))
                             g7388))))
                        g7387))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7386
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7386)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7393
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7394
                               (letrec*
                                ((x7395
                                  (letrec*
                                   ((x7397
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7396
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7397 x7396)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7395)))))
                             g7394))))
                        g7393))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7392
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7392)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7399
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7400
                               (letrec*
                                ((x7401
                                  (letrec*
                                   ((x7403
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7402
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7403 x7402)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7401)))))
                             g7400))))
                        g7399))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7398
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7398)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7405
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7406
                               (letrec*
                                ((x7407
                                  (letrec*
                                   ((x7409
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7408
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7409 x7408)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7407)))))
                             g7406))))
                        g7405))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7404
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7404)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7411
                          (lambda (g7305)
                            (letrec*
                             ((g7412
                               (letrec*
                                ((x7413
                                  (letrec*
                                   ((x7414
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7414)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7413)))))
                             g7412))))
                        g7411))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7410
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7410)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7416
                          (lambda (g7309)
                            (letrec*
                             ((g7417
                               (letrec*
                                ((x7418
                                  (letrec*
                                   ((x7419
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7419)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7418)))))
                             g7417))))
                        g7416))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7415
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7415)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7421
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7422
                               (letrec*
                                ((x7423
                                  (letrec*
                                   ((x7425
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7424
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7425 x7424)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7423)))))
                             g7422))))
                        g7421))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7420
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7420)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7427
                          (lambda (g7318)
                            (letrec*
                             ((g7428
                               (letrec*
                                ((x7429
                                  (letrec*
                                   ((x7430
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7430)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7429)))))
                             g7428))))
                        g7427))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7426
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7426)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7432
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7433
                               (letrec*
                                ((x7434
                                  (letrec*
                                   ((x7436
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7435
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7436 x7435)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7434)))))
                             g7433))))
                        g7432))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7431
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7431)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7437
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7437)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7438
                       (letrec*
                        ((x7439
                          (letrec*
                           ((x7440
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7440)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7439)))))
                     g7438)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7441
                       (letrec*
                        ((x7444
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7444))))
                      (g7442
                       (letrec*
                        ((x7445
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7445))))
                      (g7443
                       (letrec*
                        ((x-cnd7446
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7446
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7449
                             (letrec*
                              ((x7450
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7450))))
                            (x7447
                             (letrec*
                              ((x7448
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7448)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7449 x7447)))))))
                     g7443)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7451
                       (letrec*
                        ((x7452
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7452)))))
                     g7451)))
                 (cadadr
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
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7456)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7455)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7454)))))
                     g7453)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7457
                       (letrec*
                        ((x7458
                          (letrec*
                           ((x7459
                             (letrec*
                              ((x7460
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7460)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7459)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7458)))))
                     g7457)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7461
                       (letrec*
                        ((x7464
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7464))))
                      (g7462
                       (letrec*
                        ((x7465
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7465))))
                      (g7463
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
                         ((g7466
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7467 res))
                         g7467))))
                     g7463)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7468
                       (letrec*
                        ((x7469
                          (letrec*
                           ((x7470
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7470)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7469)))))
                     g7468)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7471
                       (letrec*
                        ((x7472
                          (letrec*
                           ((x7473
                             (letrec*
                              ((x7474
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7474)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7473)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7472)))))
                     g7471)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7475
                       (letrec*
                        ((x7477
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7477))))
                      (g7476
                       (letrec*
                        ((x-cnd7478
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7478
                          #f
                          (letrec*
                           ((x-cnd7479
                             (letrec*
                              ((x7480
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7480 k)))))
                           (if x-cnd7479
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7481
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7481)))))))))
                     g7476)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7482
                       (letrec*
                        ((x7483
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7483)))))
                     g7482)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7484
                       (letrec*
                        ((x7486
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7486))))
                      (g7485
                       (letrec*
                        ((x-cnd7487
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7487
                          ""
                          (letrec*
                           ((x7490
                             (letrec*
                              ((x7491
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7491))))
                            (x7488
                             (letrec*
                              ((x7489
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7489)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7490 x7488)))))))
                     g7485)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7492
                       (letrec*
                        ((x7495
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7495))))
                      (g7493
                       (letrec*
                        ((x7496
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7496))))
                      (g7494
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7497
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7497))))
                     g7494)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7498
                       (letrec*
                        ((x7499
                          (letrec*
                           ((x7500
                             (letrec*
                              ((x7501
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7501)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7500)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7499)))))
                     g7498)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7502
                       (letrec*
                        ((x7505
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7505))))
                      (g7503
                       (letrec*
                        ((x7506
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7506))))
                      (g7504
                       (letrec*
                        ((x-cnd7507
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7507
                          x
                          (letrec*
                           ((x7509
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7508
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7509 x7508)))))))
                     g7504)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7510
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7510)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7511
                       (letrec*
                        ((x-cnd7512
                          (letrec*
                           ((x7513 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7513)))))
                        (if x-cnd7512
                          (letrec*
                           ((x7514 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7514)))
                          #f))))
                     g7511)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7515
                       (letrec*
                        ((x7517
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7517))))
                      (g7516
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7518
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7519 (if val7243 val7243 #f)))
                               g7519)))))
                         g7518))))
                     g7516)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7520
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7521
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7521 9)))))
                        (letrec*
                         ((g7522
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7523
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7523 10)))))
                              (letrec*
                               ((g7524
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7525
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7525 32))))))
                               g7524)))))
                         g7522))))
                     g7520)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7526
                       (letrec*
                        ((x7527
                          (letrec*
                           ((x7528
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7528)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7527)))))
                     g7526)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7529
                       (letrec*
                        ((x7531
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7531))))
                      (g7530
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7530)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7532 #f)) g7532)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7533
                       (letrec*
                        ((x7534
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7534)))))
                     g7533)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7535
                       (letrec*
                        ((x7537
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7537))))
                      (g7536
                       (letrec*
                        ((x-cnd7538
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7538
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7536)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7539
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7540
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7542
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7541
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7542 x7541)))))
                              (letrec*
                               ((g7543
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7546
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7545
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7544
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7546 x7545 x7544)))))
                                    (letrec*
                                     ((g7547
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7555
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7554
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7551
                                               (letrec*
                                                ((x7553
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7552
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7553 x7552))))
                                              (x7548
                                               (letrec*
                                                ((x7550
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7549
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7550 x7549)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7555
                                                    x7554
                                                    x7551
                                                    x7548)))))
                                          (letrec*
                                           ((g7556
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7572
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7571
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7557
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7558
                                                      (letrec*
                                                       ((x7569
                                                         (letrec*
                                                          ((x7570
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
                                                            (= x7570 n))))
                                                        (x7559
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7560
                                                                 (letrec*
                                                                  ((x7567
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7561
                                                                    (letrec*
                                                                     ((x7564
                                                                       (letrec*
                                                                        ((x7566
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
                                                                         (x7565
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
                                                                           x7566
                                                                           x7565))))
                                                                      (x7562
                                                                       (letrec*
                                                                        ((x7563
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
                                                                           x7563)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7564
                                                                            x7562)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7567
                                                                        x7561)))))
                                                               g7560))))
                                                          (letrec*
                                                           ((g7568
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7568))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7569 x7559)))))
                                                    g7558))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7572 x7571 x7557))))))
                                           g7556)))))
                                     g7547)))))
                               g7543)))))
                         g7540))))
                     g7539)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7576)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7575)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7574)))))
                     g7573)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7577
                       (letrec*
                        ((x7578
                          (letrec*
                           ((x7579
                             (letrec*
                              ((x7580
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7580)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7579)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7578)))))
                     g7577)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7581
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7581)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7582
                       (letrec*
                        ((x7584
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7584))))
                      (g7583
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7585
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7586 (if val7251 val7251 #f)))
                               g7586)))))
                         g7585))))
                     g7583)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7587
                       (letrec*
                        ((x7590
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7590))))
                      (g7588
                       (letrec*
                        ((x7591
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7591))))
                      (g7589
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
                         ((g7592
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7593 res))
                         g7593))))
                     g7589)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7594
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7594)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7595
                       (letrec*
                        ((x7598
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7598))))
                      (g7596
                       (letrec*
                        ((x7599
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7599))))
                      (g7597
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7600
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7600))))
                     g7597)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7601
                       (letrec*
                        ((x7602
                          (letrec*
                           ((x7603
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7603)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7602)))))
                     g7601)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7604
                       (letrec*
                        ((x7605
                          (letrec*
                           ((x7606
                             (letrec*
                              ((x7607
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7607)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7606)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7605)))))
                     g7604)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7608
                       (letrec*
                        ((x7609
                          (letrec*
                           ((x7610
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7610)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7609)))))
                     g7608)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7611
                       (letrec*
                        ((x7612
                          (letrec*
                           ((x7613
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7613)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7612)))))
                     g7611)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7614
                       (letrec*
                        ((x7617
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7617))))
                      (g7615
                       (letrec*
                        ((x7618
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7618))))
                      (g7616
                       (letrec*
                        ((x7619
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7619)))))
                     g7616)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7621
                          (letrec*
                           ((x7622
                             (letrec*
                              ((x7623
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7623)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7622)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7621)))))
                     g7620)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7624
                       (letrec*
                        ((x7626
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7626))))
                      (g7625
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7625)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7627
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7627)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7628
                       (letrec*
                        ((x7629
                          (letrec*
                           ((x7630
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7630)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7629)))))
                     g7628)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7631
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7631)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7632
                       (letrec*
                        ((x7634
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7634))))
                      (g7633
                       (letrec*
                        ((x-cnd7635
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7635
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7638
                             (letrec*
                              ((x7639
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7639))))
                            (x7636
                             (letrec*
                              ((x7637
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7637)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7638 x7636)))))))
                     g7633)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7643)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7642)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7641)))))
                     g7640)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7647)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7646)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7645)))))
                     g7644)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7648
                       (letrec*
                        ((x7650
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7650))))
                      (g7649
                       (letrec*
                        ((x7651
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7651)))))
                     g7649)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7652
                       (letrec*
                        ((x7653
                          (letrec*
                           ((x7654
                             (letrec*
                              ((x7655
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7655)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7654)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7653)))))
                     g7652)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7656
                       (letrec*
                        ((x7659
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7659))))
                      (g7657
                       (letrec*
                        ((x7660
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7660))))
                      (g7658
                       (if cnd
                         (letrec*
                          ((g7661
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7661)
                         (if cnd
                           (letrec*
                            ((g7662
                              (letrec*
                               ((x7663
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7663)))))
                            g7662)
                           (if cnd
                             (letrec*
                              ((g7664
                                (letrec*
                                 ((x7666
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7665
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7666 x7665)))))
                              g7664)
                             (if cnd
                               (letrec*
                                ((g7667
                                  (letrec*
                                   ((x7670
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7669
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7668
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7670 x7669 x7668)))))
                                g7667)
                               (if cnd
                                 (letrec*
                                  ((g7671
                                    (letrec*
                                     ((x7675
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7675 x7674 x7673 x7672)))))
                                  g7671)
                                 (if cnd
                                   (letrec*
                                    ((g7676
                                      (letrec*
                                       ((x7682
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7681
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7680
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7679
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7677
                                         (letrec*
                                          ((x7678
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7678)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7682
                                          x7681
                                          x7680
                                          x7679
                                          x7677)))))
                                    g7676)
                                   (if cnd
                                     (letrec*
                                      ((g7683
                                        (letrec*
                                         ((x7691
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7690
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7689
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7688
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7686
                                           (letrec*
                                            ((x7687
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7687))))
                                          (x7684
                                           (letrec*
                                            ((x7685
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7685)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7691
                                            x7690
                                            x7689
                                            x7688
                                            x7686
                                            x7684)))))
                                      g7683)
                                     (if cnd
                                       (letrec*
                                        ((g7692
                                          (letrec*
                                           ((x7702
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7698))))
                                            (x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7696))))
                                            (x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7694)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7702
                                              x7701
                                              x7700
                                              x7699
                                              x7697
                                              x7695
                                              x7693)))))
                                        g7692)
                                       (letrec*
                                        ((g7703
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7703)))))))))))
                     g7658)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7704
                       (letrec*
                        ((x7706
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7706))))
                      (g7705
                       (letrec*
                        ((x-cnd7707
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7707
                          #f
                          (letrec*
                           ((x-cnd7708
                             (letrec*
                              ((x7709
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7709 e)))))
                           (if x-cnd7708
                             l
                             (letrec*
                              ((x7710
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7710)))))))))
                     g7705)))
                 (cddddr
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
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7714)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7713)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7712)))))
                     g7711)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7715
                       (letrec*
                        ((x7716
                          (letrec*
                           ((x7717
                             (letrec*
                              ((x7718
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7718)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7717)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7716)))))
                     g7715)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7719
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7719)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7720
                       (letrec*
                        ((x7722
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7722))))
                      (g7721
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7721)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7723
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7724
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7724))))
                     g7723)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7725
                       (letrec*
                        ((x7726
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7726)))))
                     g7725)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7727
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7730
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7728
                             (letrec*
                              ((x7729
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7729)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7730 x7728)))))
                        (letrec*
                         ((g7731
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7731))))
                     g7727)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((x7733
                          (letrec*
                           ((x7734
                             (letrec*
                              ((x7735
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7735)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7734)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7733)))))
                     g7732)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7736
                       (letrec*
                        ((x-cnd7737
                          (letrec*
                           ((x7738 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7738 c)))))
                        (if x-cnd7737
                          (letrec*
                           ((x7739 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7739)))
                          #f))))
                     g7736)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7740
                       (letrec*
                        ((x7742
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7742))))
                      (g7741
                       (letrec*
                        ((x-cnd7743
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7743
                          #f
                          (letrec*
                           ((x-cnd7744
                             (letrec*
                              ((x7745
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7745 k)))))
                           (if x-cnd7744
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7746
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7746)))))))))
                     g7741)))
                 (not (lambda (x) (letrec* ((g7747 (if x #f #t))) g7747)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7748
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7748)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7749
                       (letrec*
                        ((x7751
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7751))))
                      (g7750
                       (letrec*
                        ((x-cnd7752
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7752
                          #f
                          (letrec*
                           ((x-cnd7753
                             (letrec*
                              ((x7754
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7754 e)))))
                           (if x-cnd7753
                             l
                             (letrec*
                              ((x7755
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7755)))))))))
                     g7750)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7756
                       (letrec*
                        ((x7757
                          (letrec*
                           ((x7758
                             (letrec*
                              ((x7759
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7759)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7758)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7757)))))
                     g7756)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7760
                       (letrec*
                        ((x7762
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7762))))
                      (g7761
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7763
                               (letrec*
                                ((x-cnd7764
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7764
                                  0
                                  (letrec*
                                   ((x7765
                                     (letrec*
                                      ((x7766
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7766)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7765)))))))
                             g7763))))
                        (letrec*
                         ((g7767
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7767))))
                     g7761)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7768
                       (letrec*
                        ((x7771
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7771))))
                      (g7769
                       (letrec*
                        ((x7772
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7772))))
                      (g7770
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7773
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7773))))
                     g7770)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7774
                       (letrec*
                        ((x7775
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7775)))))
                     g7774)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7776
                       (letrec*
                        ((x7777
                          (letrec*
                           ((x7778
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7778)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7777)))))
                     g7776)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7779
                       (letrec*
                        ((x7781
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7781))))
                      (g7780
                       (letrec*
                        ((x-cnd7782
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7782
                          #f
                          (letrec*
                           ((x-cnd7783
                             (letrec*
                              ((x7784
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7784 k)))))
                           (if x-cnd7783
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7785
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7785)))))))))
                     g7780)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7786
                       (letrec*
                        ((x7787
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7787)))))
                     g7786)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7788
                       (letrec*
                        ((x7791
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7791))))
                      (g7789
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7792))))
                      (g7790
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7793)))))
                     g7790)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7794
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7795
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7795))))
                     g7794)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7796
                       (letrec*
                        ((x7799
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7799))))
                      (g7797
                       (letrec*
                        ((x7800
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7800))))
                      (g7798
                       (letrec*
                        ((x-cnd7801
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7801
                          #t
                          (letrec*
                           ((x-cnd7802
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7802
                             (letrec*
                              ((g7803
                                (letrec*
                                 ((x7805
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7805))))
                               (g7804
                                (letrec*
                                 ((x7806
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7806)))))
                              g7804)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7798)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7807
                       (letrec*
                        ((x7809
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7809))))
                      (g7808
                       (letrec*
                        ((x-cnd7810
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7810
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7808)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7811
                       (letrec*
                        ((x7814
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7814))))
                      (g7812
                       (letrec*
                        ((x7815
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7815))))
                      (g7813
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7816
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7816))))
                     g7813)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7817
                       (letrec*
                        ((x7818
                          (letrec*
                           ((x7819
                             (letrec*
                              ((x7820
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7820)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7819)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7818)))))
                     g7817)))
                 (newline (lambda () (letrec* ((g7821 #f)) g7821)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7822
                       (letrec*
                        ((x7824
                          (letrec*
                           ((x7825
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7825))))
                         (x7823
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7824 x7823)))))
                     g7822)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7826
                       (letrec*
                        ((x7828
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7828))))
                      (g7827
                       (letrec*
                        ((x7829
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7829)))))
                     g7827)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7830
                       (letrec*
                        ((x7834
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7834))))
                      (g7831
                       (letrec*
                        ((x7835
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7835))))
                      (g7832
                       (letrec*
                        ((x7836
                          (letrec*
                           ((x7837
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7837)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7836))))
                      (g7833
                       (letrec*
                        ((x-cnd7838
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7838
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7840
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7839
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7840 x7839)))))))
                     g7833)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7841
                       (letrec*
                        ((x-cnd7842
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7842
                          a
                          (letrec*
                           ((x7843
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7843)))))))
                     g7841)))
                 (zip
                  (lambda (xs ys)
                    (letrec*
                     ((g7844
                       (if cnd
                         (letrec* ((g7845 empty)) g7845)
                         (if cnd
                           (letrec*
                            ((g7846
                              (letrec*
                               ((x7850
                                 (letrec*
                                  ((x7852
                                    (begin
                                      (write '(funapp 1361 43))
                                      (display "\n")
                                      (car xs)))
                                   (x7851
                                    (begin
                                      (write '(funapp 1361 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1362 35))
                                    (display "\n")
                                    (cons x7852 x7851))))
                                (x7847
                                 (letrec*
                                  ((x7849
                                    (begin
                                      (write '(funapp 1365 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x7848
                                    (begin
                                      (write '(funapp 1365 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1366 35))
                                    (display "\n")
                                    (zip x7849 x7848)))))
                               (begin
                                 (write '(funapp 1367 32))
                                 (display "\n")
                                 (cons x7850 x7847)))))
                            g7846)
                           (letrec*
                            ((g7853
                              (begin
                                (write '(funapp 1369 44))
                                (display "\n")
                                'fail)))
                            g7853)))))
                     g7844)))
                 (mk-list
                  (lambda (n)
                    (letrec*
                     ((g7854
                       (letrec*
                        ((x-cnd7855
                          (begin
                            (write '(funapp 1376 37))
                            (display "\n")
                            (< n 0))))
                        (if x-cnd7855
                          empty
                          (letrec*
                           ((x7856
                             (letrec*
                              ((x7857
                                (begin
                                  (write '(funapp 1381 47))
                                  (display "\n")
                                  (- n 1))))
                              (begin
                                (write '(funapp 1381 57))
                                (display "\n")
                                (mk-list x7857)))))
                           (begin
                             (write '(funapp 1382 28))
                             (display "\n")
                             (cons n x7856)))))))
                     g7854)))
                 (main
                  (lambda (n)
                    (letrec*
                     ((g7858
                       (letrec*
                        ((xs
                          (begin
                            (write '(funapp 1389 30))
                            (display "\n")
                            (mk-list n))))
                        (letrec*
                         ((g7859
                           (begin
                             (write '(funapp 1390 42))
                             (display "\n")
                             (zip xs xs))))
                         g7859))))
                     g7858))))
                (letrec*
                 ((g7860
                   (letrec*
                    ((x7863
                      (begin
                        (write '(funapp 1396 23))
                        (display "\n")
                        ((lambda (j7328 k7329 f7330)
                           (letrec*
                            ((g7864
                              (lambda (g7327)
                                (letrec*
                                 ((g7865
                                   (letrec*
                                    ((x7868
                                      (begin
                                        (write '(funapp 1403 43))
                                        (display "\n")
                                        (listof integer?/c)))
                                     (x7866
                                      (letrec*
                                       ((x7867
                                         (begin
                                           (write '(funapp 1406 46))
                                           (display "\n")
                                           (integer?/c j7328 k7329 g7327))))
                                       (begin
                                         (write '(funapp 1407 38))
                                         (display "\n")
                                         (f7330 x7867)))))
                                    (begin
                                      (write '(funapp 1408 35))
                                      (display "\n")
                                      (x7868 j7328 k7329 x7866)))))
                                 g7865))))
                            g7864))
                         (begin
                           (write '(funapp 1411 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1412 23))
                           (display "\n")
                           'importer)
                         mk-list)))
                     (x7862 (input)))
                    (begin
                      (write '(funapp 1415 21))
                      (display "\n")
                      (x7863 x7862))))
                  (g7861
                   (letrec*
                    ((x7870
                      (begin
                        (write '(funapp 1419 23))
                        (display "\n")
                        ((lambda (j7332 k7333 f7334)
                           (letrec*
                            ((g7871
                              (lambda (g7331)
                                (letrec*
                                 ((g7872
                                   (letrec*
                                    ((x7875
                                      (letrec*
                                       ((x7876
                                         (begin
                                           (write '(funapp 1428 46))
                                           (display "\n")
                                           (cons/c integer?/c integer?/c))))
                                       (begin
                                         (write '(funapp 1429 38))
                                         (display "\n")
                                         (listof x7876))))
                                     (x7873
                                      (letrec*
                                       ((x7874
                                         (begin
                                           (write '(funapp 1432 46))
                                           (display "\n")
                                           (integer?/c j7332 k7333 g7331))))
                                       (begin
                                         (write '(funapp 1433 38))
                                         (display "\n")
                                         (f7334 x7874)))))
                                    (begin
                                      (write '(funapp 1434 35))
                                      (display "\n")
                                      (x7875 j7332 k7333 x7873)))))
                                 g7872))))
                            g7871))
                         (begin
                           (write '(funapp 1437 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1438 23))
                           (display "\n")
                           'importer)
                         main)))
                     (x7869 (input)))
                    (begin
                      (write '(funapp 1441 21))
                      (display "\n")
                      (x7870 x7869)))))
                 g7861))))
             g7348))))
         g7346)))
      g7345))))
