(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7344 #t)) g7344)))
      (meta (lambda (v) (letrec* ((g7345 v)) g7345)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7346
            (letrec*
             ((g7347
               (letrec*
                ((x-e7348 lst))
                (letrec*
                 ((v1742 x-e7348))
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
                     ((x-cnd7349
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7349
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
             g7347)))
          g7346)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7350 (lambda (v) (letrec* ((g7351 v)) g7351)))) g7350)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7352
            (letrec*
             ((x7353 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7353)))))
          g7352))))
     (letrec*
      ((g7354
        (letrec*
         ((g7355
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
             ((g7356 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7357
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7260 g7261 g7262)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7262))))
                        (if x-cnd7359
                          g7262
                          (begin
                            (write '(blame g7260 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7260)))))))
                     g7358)))
                 (boolean?/c
                  (lambda (g7263 g7264 g7265)
                    (letrec*
                     ((g7360
                       (letrec*
                        ((x-cnd7361
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7265))))
                        (if x-cnd7361
                          g7265
                          (begin
                            (write '(blame g7263 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7263)))))))
                     g7360)))
                 (number?/c
                  (lambda (g7266 g7267 g7268)
                    (letrec*
                     ((g7362
                       (letrec*
                        ((x-cnd7363
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7268))))
                        (if x-cnd7363
                          g7268
                          (begin
                            (write '(blame g7266 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7266)))))))
                     g7362)))
                 (any/c
                  (lambda (g7269 g7270 g7271)
                    (letrec*
                     ((g7364
                       (letrec*
                        ((x-cnd7365
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7366 #t)) g7366))
                             g7271))))
                        (if x-cnd7365
                          g7271
                          (begin
                            (write '(blame g7269 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7269)))))))
                     g7364)))
                 (any?/c
                  (lambda (g7272 g7273 g7274)
                    (letrec*
                     ((g7367
                       (letrec*
                        ((x-cnd7368
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7369 #t)) g7369))
                             g7274))))
                        (if x-cnd7368
                          g7274
                          (begin
                            (write '(blame g7272 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7272)))))))
                     g7367)))
                 (cons?/c
                  (lambda (g7275 g7276 g7277)
                    (letrec*
                     ((g7370
                       (letrec*
                        ((x-cnd7371
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7277))))
                        (if x-cnd7371
                          g7277
                          (begin
                            (write '(blame g7275 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7275)))))))
                     g7370)))
                 (pair?/c
                  (lambda (g7278 g7279 g7280)
                    (letrec*
                     ((g7372
                       (letrec*
                        ((x-cnd7373
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7280))))
                        (if x-cnd7373
                          g7280
                          (begin
                            (write '(blame g7278 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7278)))))))
                     g7372)))
                 (integer?/c
                  (lambda (g7281 g7282 g7283)
                    (letrec*
                     ((g7374
                       (letrec*
                        ((x-cnd7375
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7283))))
                        (if x-cnd7375
                          g7283
                          (begin
                            (write '(blame g7281 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7281)))))))
                     g7374)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7376
                       (lambda (k j v)
                         (letrec*
                          ((g7377
                            (letrec*
                             ((x-cnd7378
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7378
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7377))))
                     g7376)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7379
                       (lambda (k j v)
                         (letrec*
                          ((g7380
                            (letrec*
                             ((x-cnd7381
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7381
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7385
                                  (letrec*
                                   ((x7386
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7386))))
                                 (x7382
                                  (letrec*
                                   ((x7384
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7383
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7384 k j x7383)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7385 x7382)))))))
                          g7380))))
                     g7379)))
                 (any? (lambda (v) (letrec* ((g7387 #t)) g7387)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7388
                       (letrec*
                        ((x7389
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7389)))))
                     g7388)))
                 (nonzero?/c
                  (lambda (g7284 g7285 g7286)
                    (letrec*
                     ((g7390
                       (letrec*
                        ((x-cnd7391
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7392
                                  (letrec*
                                   ((x7393
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7393)))))
                                g7392))
                             g7286))))
                        (if x-cnd7391
                          g7286
                          (begin
                            (write '(blame g7284 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7284)))))))
                     g7390)))
                 (meta (lambda (v) (letrec* ((g7394 v)) g7394)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7289 k7290 f7291)
                       (letrec*
                        ((g7396
                          (lambda (g7287 g7288)
                            (letrec*
                             ((g7397
                               (letrec*
                                ((x7398
                                  (letrec*
                                   ((x7400
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7289 k7290 g7287)))
                                    (x7399
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7289 k7290 g7288))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7291 x7400 x7399)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7289 k7290 x7398)))))
                             g7397))))
                        g7396))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7395
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7395)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7294 k7295 f7296)
                       (letrec*
                        ((g7402
                          (lambda (g7292 g7293)
                            (letrec*
                             ((g7403
                               (letrec*
                                ((x7404
                                  (letrec*
                                   ((x7406
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7294 k7295 g7292)))
                                    (x7405
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7294 k7295 g7293))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7296 x7406 x7405)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7294 k7295 x7404)))))
                             g7403))))
                        g7402))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7401
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7401)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7299 k7300 f7301)
                       (letrec*
                        ((g7408
                          (lambda (g7297 g7298)
                            (letrec*
                             ((g7409
                               (letrec*
                                ((x7410
                                  (letrec*
                                   ((x7412
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7299 k7300 g7297)))
                                    (x7411
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7299 k7300 g7298))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7301 x7412 x7411)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7299 k7300 x7410)))))
                             g7409))))
                        g7408))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7407
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7407)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7304 k7305 f7306)
                       (letrec*
                        ((g7414
                          (lambda (g7302 g7303)
                            (letrec*
                             ((g7415
                               (letrec*
                                ((x7416
                                  (letrec*
                                   ((x7418
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7304 k7305 g7302)))
                                    (x7417
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7304 k7305 g7303))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7306 x7418 x7417)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7304 k7305 x7416)))))
                             g7415))))
                        g7414))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7413
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7413)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7308 k7309 f7310)
                       (letrec*
                        ((g7420
                          (lambda (g7307)
                            (letrec*
                             ((g7421
                               (letrec*
                                ((x7422
                                  (letrec*
                                   ((x7423
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7308 k7309 g7307))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7310 x7423)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7308 k7309 x7422)))))
                             g7421))))
                        g7420))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7419
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7419)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7312 k7313 f7314)
                       (letrec*
                        ((g7425
                          (lambda (g7311)
                            (letrec*
                             ((g7426
                               (letrec*
                                ((x7427
                                  (letrec*
                                   ((x7428
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7312 k7313 g7311))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7314 x7428)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7312 k7313 x7427)))))
                             g7426))))
                        g7425))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7424
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7424)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7317 k7318 f7319)
                       (letrec*
                        ((g7430
                          (lambda (g7315 g7316)
                            (letrec*
                             ((g7431
                               (letrec*
                                ((x7432
                                  (letrec*
                                   ((x7434
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7317 k7318 g7315)))
                                    (x7433
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7317 k7318 g7316))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7319 x7434 x7433)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7317 k7318 x7432)))))
                             g7431))))
                        g7430))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7429
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7429)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7321 k7322 f7323)
                       (letrec*
                        ((g7436
                          (lambda (g7320)
                            (letrec*
                             ((g7437
                               (letrec*
                                ((x7438
                                  (letrec*
                                   ((x7439
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7321 k7322 g7320))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7323 x7439)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7321 k7322 x7438)))))
                             g7437))))
                        g7436))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7435
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7435)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7326 k7327 f7328)
                       (letrec*
                        ((g7441
                          (lambda (g7324 g7325)
                            (letrec*
                             ((g7442
                               (letrec*
                                ((x7443
                                  (letrec*
                                   ((x7445
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7326 k7327 g7324)))
                                    (x7444
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7326 k7327 g7325))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7328 x7445 x7444)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7326 k7327 x7443)))))
                             g7442))))
                        g7441))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7440
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7440)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7446
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7446)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7447
                       (letrec*
                        ((x7448
                          (letrec*
                           ((x7449
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7449)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7448)))))
                     g7447)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7450
                       (letrec*
                        ((x7453
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7453))))
                      (g7451
                       (letrec*
                        ((x7454
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7454))))
                      (g7452
                       (letrec*
                        ((x-cnd7455
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7455
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7458
                             (letrec*
                              ((x7459
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7459))))
                            (x7456
                             (letrec*
                              ((x7457
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7457)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7458 x7456)))))))
                     g7452)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7460
                       (letrec*
                        ((x7461
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7461)))))
                     g7460)))
                 (cadadr
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
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7465)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7464)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7463)))))
                     g7462)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7466
                       (letrec*
                        ((x7467
                          (letrec*
                           ((x7468
                             (letrec*
                              ((x7469
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7469)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7468)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7467)))))
                     g7466)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7470
                       (letrec*
                        ((x7473
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7473))))
                      (g7471
                       (letrec*
                        ((x7474
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7474))))
                      (g7472
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
                         ((g7475
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7476 res))
                         g7476))))
                     g7472)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x7478
                          (letrec*
                           ((x7479
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7479)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7478)))))
                     g7477)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x7481
                          (letrec*
                           ((x7482
                             (letrec*
                              ((x7483
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7483)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7482)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7481)))))
                     g7480)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7484
                       (letrec*
                        ((x7486
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7486))))
                      (g7485
                       (letrec*
                        ((x-cnd7487
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7487
                          #f
                          (letrec*
                           ((x-cnd7488
                             (letrec*
                              ((x7489
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7489 k)))))
                           (if x-cnd7488
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7490
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7490)))))))))
                     g7485)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7491
                       (letrec*
                        ((x7492
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7492)))))
                     g7491)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7493
                       (letrec*
                        ((x7495
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7495))))
                      (g7494
                       (letrec*
                        ((x-cnd7496
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7496
                          ""
                          (letrec*
                           ((x7499
                             (letrec*
                              ((x7500
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7500))))
                            (x7497
                             (letrec*
                              ((x7498
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7498)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7499 x7497)))))))
                     g7494)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7501
                       (letrec*
                        ((x7504
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7504))))
                      (g7502
                       (letrec*
                        ((x7505
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7505))))
                      (g7503
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7506
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7506))))
                     g7503)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7507
                       (letrec*
                        ((x7508
                          (letrec*
                           ((x7509
                             (letrec*
                              ((x7510
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7510)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7509)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7508)))))
                     g7507)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7511
                       (letrec*
                        ((x7514
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7514))))
                      (g7512
                       (letrec*
                        ((x7515
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7515))))
                      (g7513
                       (letrec*
                        ((x-cnd7516
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7516
                          x
                          (letrec*
                           ((x7518
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7517
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7518 x7517)))))))
                     g7513)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7519
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7519)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7520
                       (letrec*
                        ((x-cnd7521
                          (letrec*
                           ((x7522 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7522)))))
                        (if x-cnd7521
                          (letrec*
                           ((x7523 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7523)))
                          #f))))
                     g7520)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7524
                       (letrec*
                        ((x7526
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7526))))
                      (g7525
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7527
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7528 (if val7243 val7243 #f)))
                               g7528)))))
                         g7527))))
                     g7525)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7529
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7530
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7530 9)))))
                        (letrec*
                         ((g7531
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7532
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7532 10)))))
                              (letrec*
                               ((g7533
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7534
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7534 32))))))
                               g7533)))))
                         g7531))))
                     g7529)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7535
                       (letrec*
                        ((x7536
                          (letrec*
                           ((x7537
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7537)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7536)))))
                     g7535)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7538
                       (letrec*
                        ((x7540
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7540))))
                      (g7539
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7539)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7541 #f)) g7541)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7542
                       (letrec*
                        ((x7543
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7543)))))
                     g7542)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7544
                       (letrec*
                        ((x7546
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7546))))
                      (g7545
                       (letrec*
                        ((x-cnd7547
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7547
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7545)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7548
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7549
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7551
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7550
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7551 x7550)))))
                              (letrec*
                               ((g7552
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7555
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7554
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7553
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7555 x7554 x7553)))))
                                    (letrec*
                                     ((g7556
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7564
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7563
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7560
                                               (letrec*
                                                ((x7562
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7561
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7562 x7561))))
                                              (x7557
                                               (letrec*
                                                ((x7559
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7558
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7559 x7558)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7564
                                                    x7563
                                                    x7560
                                                    x7557)))))
                                          (letrec*
                                           ((g7565
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7581
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7580
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7566
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7567
                                                      (letrec*
                                                       ((x7578
                                                         (letrec*
                                                          ((x7579
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
                                                            (= x7579 n))))
                                                        (x7568
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7569
                                                                 (letrec*
                                                                  ((x7576
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7570
                                                                    (letrec*
                                                                     ((x7573
                                                                       (letrec*
                                                                        ((x7575
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
                                                                         (x7574
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
                                                                           x7575
                                                                           x7574))))
                                                                      (x7571
                                                                       (letrec*
                                                                        ((x7572
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
                                                                           x7572)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7573
                                                                            x7571)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7576
                                                                        x7570)))))
                                                               g7569))))
                                                          (letrec*
                                                           ((g7577
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7577))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7578 x7568)))))
                                                    g7567))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7581 x7580 x7566))))))
                                           g7565)))))
                                     g7556)))))
                               g7552)))))
                         g7549))))
                     g7548)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7585)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7584)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7583)))))
                     g7582)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7586
                       (letrec*
                        ((x7587
                          (letrec*
                           ((x7588
                             (letrec*
                              ((x7589
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7589)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7588)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7587)))))
                     g7586)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7590
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7590)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7591
                       (letrec*
                        ((x7593
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7593))))
                      (g7592
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7594
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7595 (if val7251 val7251 #f)))
                               g7595)))))
                         g7594))))
                     g7592)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7596
                       (letrec*
                        ((x7599
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7599))))
                      (g7597
                       (letrec*
                        ((x7600
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7600))))
                      (g7598
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
                         ((g7601
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7602 res))
                         g7602))))
                     g7598)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7603
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7603)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7604
                       (letrec*
                        ((x7607
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7607))))
                      (g7605
                       (letrec*
                        ((x7608
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7608))))
                      (g7606
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7609
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7609))))
                     g7606)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x7611
                          (letrec*
                           ((x7612
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7612)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7611)))))
                     g7610)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x7614
                          (letrec*
                           ((x7615
                             (letrec*
                              ((x7616
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7616)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7615)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7614)))))
                     g7613)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7617
                       (letrec*
                        ((x7618
                          (letrec*
                           ((x7619
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7619)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7618)))))
                     g7617)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7621
                          (letrec*
                           ((x7622
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7622)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7621)))))
                     g7620)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x7626
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7626))))
                      (g7624
                       (letrec*
                        ((x7627
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7627))))
                      (g7625
                       (letrec*
                        ((x7628
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7628)))))
                     g7625)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7629
                       (letrec*
                        ((x7630
                          (letrec*
                           ((x7631
                             (letrec*
                              ((x7632
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7632)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7631)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7630)))))
                     g7629)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7633
                       (letrec*
                        ((x7635
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7635))))
                      (g7634
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7634)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7636
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7636)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7637
                       (letrec*
                        ((x7638
                          (letrec*
                           ((x7639
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7639)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7638)))))
                     g7637)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7640
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7640)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7641
                       (letrec*
                        ((x7643
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7643))))
                      (g7642
                       (letrec*
                        ((x-cnd7644
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7644
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7647
                             (letrec*
                              ((x7648
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7648))))
                            (x7645
                             (letrec*
                              ((x7646
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7646)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7647 x7645)))))))
                     g7642)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7652)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7651)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7650)))))
                     g7649)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7653
                       (letrec*
                        ((x7654
                          (letrec*
                           ((x7655
                             (letrec*
                              ((x7656
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7656)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7655)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7654)))))
                     g7653)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7657
                       (letrec*
                        ((x7659
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7659))))
                      (g7658
                       (letrec*
                        ((x7660
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7660)))))
                     g7658)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7661
                       (letrec*
                        ((x7662
                          (letrec*
                           ((x7663
                             (letrec*
                              ((x7664
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7664)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7663)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7662)))))
                     g7661)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7665
                       (letrec*
                        ((x7668
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7668))))
                      (g7666
                       (letrec*
                        ((x7669
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7669))))
                      (g7667
                       (if cnd
                         (letrec*
                          ((g7670
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7670)
                         (if cnd
                           (letrec*
                            ((g7671
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7672)))))
                            g7671)
                           (if cnd
                             (letrec*
                              ((g7673
                                (letrec*
                                 ((x7675
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7674
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7675 x7674)))))
                              g7673)
                             (if cnd
                               (letrec*
                                ((g7676
                                  (letrec*
                                   ((x7679
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7678
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7677
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7679 x7678 x7677)))))
                                g7676)
                               (if cnd
                                 (letrec*
                                  ((g7680
                                    (letrec*
                                     ((x7684
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7683
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7682
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7681
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7684 x7683 x7682 x7681)))))
                                  g7680)
                                 (if cnd
                                   (letrec*
                                    ((g7685
                                      (letrec*
                                       ((x7691
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7690
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7689
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7688
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7686
                                         (letrec*
                                          ((x7687
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7687)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7691
                                          x7690
                                          x7689
                                          x7688
                                          x7686)))))
                                    g7685)
                                   (if cnd
                                     (letrec*
                                      ((g7692
                                        (letrec*
                                         ((x7700
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7699
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7698
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7697
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7695
                                           (letrec*
                                            ((x7696
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7696))))
                                          (x7693
                                           (letrec*
                                            ((x7694
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7694)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7700
                                            x7699
                                            x7698
                                            x7697
                                            x7695
                                            x7693)))))
                                      g7692)
                                     (if cnd
                                       (letrec*
                                        ((g7701
                                          (letrec*
                                           ((x7711
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7710
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7709
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7708
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7706
                                             (letrec*
                                              ((x7707
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7707))))
                                            (x7704
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7705))))
                                            (x7702
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7703)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7711
                                              x7710
                                              x7709
                                              x7708
                                              x7706
                                              x7704
                                              x7702)))))
                                        g7701)
                                       (letrec*
                                        ((g7712
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7712)))))))))))
                     g7667)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7713
                       (letrec*
                        ((x7715
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7715))))
                      (g7714
                       (letrec*
                        ((x-cnd7716
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7716
                          #f
                          (letrec*
                           ((x-cnd7717
                             (letrec*
                              ((x7718
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7718 e)))))
                           (if x-cnd7717
                             l
                             (letrec*
                              ((x7719
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7719)))))))))
                     g7714)))
                 (cddddr
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
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7723)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7722)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7721)))))
                     g7720)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7727)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7726)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7725)))))
                     g7724)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7728
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7728)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((x7731
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7731))))
                      (g7730
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7730)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7733
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7733))))
                     g7732)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7734
                       (letrec*
                        ((x7735
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7735)))))
                     g7734)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7736
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7739
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7737
                             (letrec*
                              ((x7738
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7738)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7739 x7737)))))
                        (letrec*
                         ((g7740
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7740))))
                     g7736)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7741
                       (letrec*
                        ((x7742
                          (letrec*
                           ((x7743
                             (letrec*
                              ((x7744
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7744)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7743)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7742)))))
                     g7741)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7745
                       (letrec*
                        ((x-cnd7746
                          (letrec*
                           ((x7747 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7747 c)))))
                        (if x-cnd7746
                          (letrec*
                           ((x7748 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7748)))
                          #f))))
                     g7745)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7749
                       (letrec*
                        ((x7751
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7751))))
                      (g7750
                       (letrec*
                        ((x-cnd7752
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7752
                          #f
                          (letrec*
                           ((x-cnd7753
                             (letrec*
                              ((x7754
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7754 k)))))
                           (if x-cnd7753
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7755
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7755)))))))))
                     g7750)))
                 (not (lambda (x) (letrec* ((g7756 (if x #f #t))) g7756)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7757
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7757)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7758
                       (letrec*
                        ((x7760
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7760))))
                      (g7759
                       (letrec*
                        ((x-cnd7761
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7761
                          #f
                          (letrec*
                           ((x-cnd7762
                             (letrec*
                              ((x7763
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7763 e)))))
                           (if x-cnd7762
                             l
                             (letrec*
                              ((x7764
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7764)))))))))
                     g7759)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7765
                       (letrec*
                        ((x7766
                          (letrec*
                           ((x7767
                             (letrec*
                              ((x7768
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7768)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7767)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7766)))))
                     g7765)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x7771
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7771))))
                      (g7770
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7772
                               (letrec*
                                ((x-cnd7773
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7773
                                  0
                                  (letrec*
                                   ((x7774
                                     (letrec*
                                      ((x7775
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7775)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7774)))))))
                             g7772))))
                        (letrec*
                         ((g7776
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7776))))
                     g7770)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7777
                       (letrec*
                        ((x7780
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7780))))
                      (g7778
                       (letrec*
                        ((x7781
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7781))))
                      (g7779
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7782
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7782))))
                     g7779)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7783
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7784)))))
                     g7783)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7785
                       (letrec*
                        ((x7786
                          (letrec*
                           ((x7787
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7787)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7786)))))
                     g7785)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7788
                       (letrec*
                        ((x7790
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7790))))
                      (g7789
                       (letrec*
                        ((x-cnd7791
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7791
                          #f
                          (letrec*
                           ((x-cnd7792
                             (letrec*
                              ((x7793
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7793 k)))))
                           (if x-cnd7792
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7794
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7794)))))))))
                     g7789)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7795
                       (letrec*
                        ((x7796
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7796)))))
                     g7795)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7797
                       (letrec*
                        ((x7800
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7800))))
                      (g7798
                       (letrec*
                        ((x7801
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7801))))
                      (g7799
                       (letrec*
                        ((x7802
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7802)))))
                     g7799)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7803
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7804
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7804))))
                     g7803)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7805
                       (letrec*
                        ((x7808
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7808))))
                      (g7806
                       (letrec*
                        ((x7809
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7809))))
                      (g7807
                       (letrec*
                        ((x-cnd7810
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7810
                          #t
                          (letrec*
                           ((x-cnd7811
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7811
                             (letrec*
                              ((g7812
                                (letrec*
                                 ((x7814
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7814))))
                               (g7813
                                (letrec*
                                 ((x7815
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7815)))))
                              g7813)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7807)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7816
                       (letrec*
                        ((x7818
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7818))))
                      (g7817
                       (letrec*
                        ((x-cnd7819
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7819
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7817)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7820
                       (letrec*
                        ((x7823
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7823))))
                      (g7821
                       (letrec*
                        ((x7824
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7824))))
                      (g7822
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7825
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7825))))
                     g7822)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7826
                       (letrec*
                        ((x7827
                          (letrec*
                           ((x7828
                             (letrec*
                              ((x7829
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7829)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7828)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7827)))))
                     g7826)))
                 (newline (lambda () (letrec* ((g7830 #f)) g7830)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7831
                       (letrec*
                        ((x7833
                          (letrec*
                           ((x7834
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7834))))
                         (x7832
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7833 x7832)))))
                     g7831)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7835
                       (letrec*
                        ((x7837
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7837))))
                      (g7836
                       (letrec*
                        ((x7838
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7838)))))
                     g7836)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7839
                       (letrec*
                        ((x7843
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7843))))
                      (g7840
                       (letrec*
                        ((x7844
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7844))))
                      (g7841
                       (letrec*
                        ((x7845
                          (letrec*
                           ((x7846
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7846)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7845))))
                      (g7842
                       (letrec*
                        ((x-cnd7847
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7847
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7849
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7848
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7849 x7848)))))))
                     g7842)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7850
                       (letrec*
                        ((x-cnd7851
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7851
                          a
                          (letrec*
                           ((x7852
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7852)))))))
                     g7850)))
                 (mk-list
                  (lambda (n x)
                    (letrec*
                     ((g7853
                       (letrec*
                        ((x-cnd7854
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (< n 0))))
                        (if x-cnd7854
                          empty
                          (letrec*
                           ((x7855
                             (letrec*
                              ((x7856
                                (begin
                                  (write '(funapp 1359 47))
                                  (display "\n")
                                  (- n 1))))
                              (begin
                                (write '(funapp 1359 57))
                                (display "\n")
                                (mk-list x7856 x)))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (cons x x7855)))))))
                     g7853)))
                 (mem
                  (lambda (x xs)
                    (letrec*
                     ((g7857
                       (letrec*
                        ((x-cnd7858
                          (begin
                            (write '(funapp 1367 37))
                            (display "\n")
                            (empty? xs))))
                        (if x-cnd7858
                          #f
                          (letrec*
                           ((val7258
                             (letrec*
                              ((x7859
                                (begin
                                  (write '(funapp 1371 55))
                                  (display "\n")
                                  (car xs))))
                              (begin
                                (write '(funapp 1371 66))
                                (display "\n")
                                (= x x7859)))))
                           (letrec*
                            ((g7860
                              (if val7258
                                val7258
                                (letrec*
                                 ((x7861
                                   (begin
                                     (write '(funapp 1376 50))
                                     (display "\n")
                                     (cdr xs))))
                                 (begin
                                   (write '(funapp 1376 61))
                                   (display "\n")
                                   (mem x x7861))))))
                            g7860))))))
                     g7857))))
                (letrec*
                 ((g7862
                   (begin
                     (write '(funapp 1381 20))
                     (display "\n")
                     ((lambda (j7331 k7332 f7333)
                        (letrec*
                         ((g7864
                           (lambda (g7329 g7330)
                             (letrec*
                              ((g7865
                                (letrec*
                                 ((x7334
                                   (begin
                                     (write '(funapp 1388 40))
                                     (display "\n")
                                     (integer?/c j7331 k7332 g7329)))
                                  (x7335
                                   (begin
                                     (write '(funapp 1389 40))
                                     (display "\n")
                                     (integer?/c j7331 k7332 g7330))))
                                 (letrec*
                                  ((g7866
                                    (letrec*
                                     ((x7868
                                       (begin
                                         (write '(funapp 1394 38))
                                         (display "\n")
                                         ((lambda (_ x)
                                            (letrec*
                                             ((g7869
                                               (letrec*
                                                ((x7874
                                                  (begin
                                                    (write '(funapp 1398 53))
                                                    (display "\n")
                                                    (listof integer?/c))))
                                                (begin
                                                  (write '(funapp 1399 45))
                                                  (display "\n")
                                                  (and/c
                                                   x7874
                                                   (lambda (g7336 g7337 g7338)
                                                     (letrec*
                                                      ((g7870
                                                        (letrec*
                                                         ((x-cnd7871
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1406
                                                                54))
                                                             (display "\n")
                                                             ((lambda (l)
                                                                (letrec*
                                                                 ((g7872
                                                                   (letrec*
                                                                    ((val7259
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1411
                                                                           63))
                                                                        (display
                                                                         "\n")
                                                                        (empty?
                                                                         l))))
                                                                    (letrec*
                                                                     ((g7873
                                                                       (if val7259
                                                                         val7259
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1416
                                                                              66))
                                                                           (display
                                                                            "\n")
                                                                           (member
                                                                            x
                                                                            l)))))
                                                                     g7873))))
                                                                 g7872))
                                                              g7338))))
                                                         (if x-cnd7871
                                                           g7338
                                                           (begin
                                                             (write
                                                              '(blame
                                                                g7336
                                                                1424
                                                                53))
                                                             (display "\n")
                                                             (error
                                                              (format
                                                               "contract violation, blaming ~a~n"
                                                               g7336)))))))
                                                      g7870)))))))
                                             g7869))
                                          x7334
                                          x7335)))
                                      (x7867
                                       (begin
                                         (write '(funapp 1439 44))
                                         (display "\n")
                                         (f7333 x7334 x7335))))
                                     (begin
                                       (write '(funapp 1440 36))
                                       (display "\n")
                                       (x7868 j7331 k7332 x7867)))))
                                  g7866))))
                              g7865))))
                         g7864))
                      (begin (write '(funapp 1444 20)) (display "\n") 'module)
                      (begin
                        (write '(funapp 1445 20))
                        (display "\n")
                        'importer)
                      mk-list)))
                  (g7863
                   (letrec*
                    ((x7877
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        ((lambda (j7341 k7342 f7343)
                           (letrec*
                            ((g7878
                              (lambda (g7339 g7340)
                                (letrec*
                                 ((g7879
                                   (letrec*
                                    ((x7880
                                      (letrec*
                                       ((x7883
                                         (begin
                                           (write '(funapp 1459 46))
                                           (display "\n")
                                           (integer?/c j7341 k7342 g7339)))
                                        (x7881
                                         (letrec*
                                          ((x7882
                                            (begin
                                              (write '(funapp 1462 49))
                                              (display "\n")
                                              (listof integer?/c))))
                                          (begin
                                            (write '(funapp 1463 41))
                                            (display "\n")
                                            (x7882 j7341 k7342 g7340)))))
                                       (begin
                                         (write '(funapp 1464 38))
                                         (display "\n")
                                         (f7343 x7883 x7881)))))
                                    (begin
                                      (write '(funapp 1465 35))
                                      (display "\n")
                                      (boolean?/c j7341 k7342 x7880)))))
                                 g7879))))
                            g7878))
                         (begin
                           (write '(funapp 1468 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1469 23))
                           (display "\n")
                           'importer)
                         mem)))
                     (x7876 (input))
                     (x7875 (input)))
                    (begin
                      (write '(funapp 1473 21))
                      (display "\n")
                      (x7877 x7876 x7875)))))
                 g7863))))
             g7357))))
         g7355)))
      g7354))))
