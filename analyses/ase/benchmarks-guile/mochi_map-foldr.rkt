(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7347 #t)) g7347)))
      (meta (lambda (v) (letrec* ((g7348 v)) g7348)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7349
            (letrec*
             ((g7350
               (letrec*
                ((x-e7351 lst))
                (letrec*
                 ((v1742 x-e7351))
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
                     ((x-cnd7352
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7352
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
             g7350)))
          g7349)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7353 (lambda (v) (letrec* ((g7354 v)) g7354)))) g7353)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7355
            (letrec*
             ((x7356 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7356)))))
          g7355))))
     (letrec*
      ((g7357
        (letrec*
         ((g7358
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
             ((g7359 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7360
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7258 g7259 g7260)
                    (letrec*
                     ((g7361
                       (letrec*
                        ((x-cnd7362
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7260))))
                        (if x-cnd7362
                          g7260
                          (begin
                            (write '(blame g7258 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7258)))))))
                     g7361)))
                 (boolean?/c
                  (lambda (g7261 g7262 g7263)
                    (letrec*
                     ((g7363
                       (letrec*
                        ((x-cnd7364
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7263))))
                        (if x-cnd7364
                          g7263
                          (begin
                            (write '(blame g7261 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7261)))))))
                     g7363)))
                 (number?/c
                  (lambda (g7264 g7265 g7266)
                    (letrec*
                     ((g7365
                       (letrec*
                        ((x-cnd7366
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7266))))
                        (if x-cnd7366
                          g7266
                          (begin
                            (write '(blame g7264 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7264)))))))
                     g7365)))
                 (any/c
                  (lambda (g7267 g7268 g7269)
                    (letrec*
                     ((g7367
                       (letrec*
                        ((x-cnd7368
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7369 #t)) g7369))
                             g7269))))
                        (if x-cnd7368
                          g7269
                          (begin
                            (write '(blame g7267 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7267)))))))
                     g7367)))
                 (any?/c
                  (lambda (g7270 g7271 g7272)
                    (letrec*
                     ((g7370
                       (letrec*
                        ((x-cnd7371
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7372 #t)) g7372))
                             g7272))))
                        (if x-cnd7371
                          g7272
                          (begin
                            (write '(blame g7270 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7270)))))))
                     g7370)))
                 (cons?/c
                  (lambda (g7273 g7274 g7275)
                    (letrec*
                     ((g7373
                       (letrec*
                        ((x-cnd7374
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7275))))
                        (if x-cnd7374
                          g7275
                          (begin
                            (write '(blame g7273 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7273)))))))
                     g7373)))
                 (pair?/c
                  (lambda (g7276 g7277 g7278)
                    (letrec*
                     ((g7375
                       (letrec*
                        ((x-cnd7376
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7278))))
                        (if x-cnd7376
                          g7278
                          (begin
                            (write '(blame g7276 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7276)))))))
                     g7375)))
                 (integer?/c
                  (lambda (g7279 g7280 g7281)
                    (letrec*
                     ((g7377
                       (letrec*
                        ((x-cnd7378
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7281))))
                        (if x-cnd7378
                          g7281
                          (begin
                            (write '(blame g7279 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7279)))))))
                     g7377)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7379
                       (lambda (k j v)
                         (letrec*
                          ((g7380
                            (letrec*
                             ((x-cnd7381
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7381
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7380))))
                     g7379)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7382
                       (lambda (k j v)
                         (letrec*
                          ((g7383
                            (letrec*
                             ((x-cnd7384
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7384
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7388
                                  (letrec*
                                   ((x7389
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7389))))
                                 (x7385
                                  (letrec*
                                   ((x7387
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7386
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7387 k j x7386)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7388 x7385)))))))
                          g7383))))
                     g7382)))
                 (any? (lambda (v) (letrec* ((g7390 #t)) g7390)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7391
                       (letrec*
                        ((x7392
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7392)))))
                     g7391)))
                 (nonzero?/c
                  (lambda (g7282 g7283 g7284)
                    (letrec*
                     ((g7393
                       (letrec*
                        ((x-cnd7394
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7395
                                  (letrec*
                                   ((x7396
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7396)))))
                                g7395))
                             g7284))))
                        (if x-cnd7394
                          g7284
                          (begin
                            (write '(blame g7282 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7282)))))))
                     g7393)))
                 (meta (lambda (v) (letrec* ((g7397 v)) g7397)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7287 k7288 f7289)
                       (letrec*
                        ((g7399
                          (lambda (g7285 g7286)
                            (letrec*
                             ((g7400
                               (letrec*
                                ((x7401
                                  (letrec*
                                   ((x7403
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7285)))
                                    (x7402
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7287 k7288 g7286))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7289 x7403 x7402)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7287 k7288 x7401)))))
                             g7400))))
                        g7399))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7398
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7398)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7292 k7293 f7294)
                       (letrec*
                        ((g7405
                          (lambda (g7290 g7291)
                            (letrec*
                             ((g7406
                               (letrec*
                                ((x7407
                                  (letrec*
                                   ((x7409
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7290)))
                                    (x7408
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7292 k7293 g7291))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7294 x7409 x7408)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7292 k7293 x7407)))))
                             g7406))))
                        g7405))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7404
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7404)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7297 k7298 f7299)
                       (letrec*
                        ((g7411
                          (lambda (g7295 g7296)
                            (letrec*
                             ((g7412
                               (letrec*
                                ((x7413
                                  (letrec*
                                   ((x7415
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7295)))
                                    (x7414
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7297 k7298 g7296))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7299 x7415 x7414)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7297 k7298 x7413)))))
                             g7412))))
                        g7411))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7410
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7410)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7302 k7303 f7304)
                       (letrec*
                        ((g7417
                          (lambda (g7300 g7301)
                            (letrec*
                             ((g7418
                               (letrec*
                                ((x7419
                                  (letrec*
                                   ((x7421
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7300)))
                                    (x7420
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7302 k7303 g7301))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7304 x7421 x7420)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7302 k7303 x7419)))))
                             g7418))))
                        g7417))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7416
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7416)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7306 k7307 f7308)
                       (letrec*
                        ((g7423
                          (lambda (g7305)
                            (letrec*
                             ((g7424
                               (letrec*
                                ((x7425
                                  (letrec*
                                   ((x7426
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7306 k7307 g7305))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7308 x7426)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7306 k7307 x7425)))))
                             g7424))))
                        g7423))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7422
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7422)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7310 k7311 f7312)
                       (letrec*
                        ((g7428
                          (lambda (g7309)
                            (letrec*
                             ((g7429
                               (letrec*
                                ((x7430
                                  (letrec*
                                   ((x7431
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7310 k7311 g7309))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7312 x7431)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7310 k7311 x7430)))))
                             g7429))))
                        g7428))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7427
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7427)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7315 k7316 f7317)
                       (letrec*
                        ((g7433
                          (lambda (g7313 g7314)
                            (letrec*
                             ((g7434
                               (letrec*
                                ((x7435
                                  (letrec*
                                   ((x7437
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7313)))
                                    (x7436
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7315 k7316 g7314))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7317 x7437 x7436)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7315 k7316 x7435)))))
                             g7434))))
                        g7433))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7432
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7432)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7319 k7320 f7321)
                       (letrec*
                        ((g7439
                          (lambda (g7318)
                            (letrec*
                             ((g7440
                               (letrec*
                                ((x7441
                                  (letrec*
                                   ((x7442
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7319 k7320 g7318))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7321 x7442)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7319 k7320 x7441)))))
                             g7440))))
                        g7439))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7438
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7438)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7324 k7325 f7326)
                       (letrec*
                        ((g7444
                          (lambda (g7322 g7323)
                            (letrec*
                             ((g7445
                               (letrec*
                                ((x7446
                                  (letrec*
                                   ((x7448
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7324 k7325 g7322)))
                                    (x7447
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7324 k7325 g7323))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7326 x7448 x7447)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7324 k7325 x7446)))))
                             g7445))))
                        g7444))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7443
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7443)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7449
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7449)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7450
                       (letrec*
                        ((x7451
                          (letrec*
                           ((x7452
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7452)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7451)))))
                     g7450)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7453
                       (letrec*
                        ((x7456
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7456))))
                      (g7454
                       (letrec*
                        ((x7457
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7457))))
                      (g7455
                       (letrec*
                        ((x-cnd7458
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7458
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7461
                             (letrec*
                              ((x7462
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7462))))
                            (x7459
                             (letrec*
                              ((x7460
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7460)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7461 x7459)))))))
                     g7455)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7463
                       (letrec*
                        ((x7464
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7464)))))
                     g7463)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7465
                       (letrec*
                        ((x7466
                          (letrec*
                           ((x7467
                             (letrec*
                              ((x7468
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7468)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7467)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7466)))))
                     g7465)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7472)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7471)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7470)))))
                     g7469)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7473
                       (letrec*
                        ((x7476
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7476))))
                      (g7474
                       (letrec*
                        ((x7477
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7477))))
                      (g7475
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
                         ((g7478
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7479 res))
                         g7479))))
                     g7475)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7480
                       (letrec*
                        ((x7481
                          (letrec*
                           ((x7482
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7482)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7481)))))
                     g7480)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7483
                       (letrec*
                        ((x7484
                          (letrec*
                           ((x7485
                             (letrec*
                              ((x7486
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7486)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7485)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7484)))))
                     g7483)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7487
                       (letrec*
                        ((x7489
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7489))))
                      (g7488
                       (letrec*
                        ((x-cnd7490
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7490
                          #f
                          (letrec*
                           ((x-cnd7491
                             (letrec*
                              ((x7492
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7492 k)))))
                           (if x-cnd7491
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7493
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7493)))))))))
                     g7488)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7494
                       (letrec*
                        ((x7495
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7495)))))
                     g7494)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7496
                       (letrec*
                        ((x7498
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7498))))
                      (g7497
                       (letrec*
                        ((x-cnd7499
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7499
                          ""
                          (letrec*
                           ((x7502
                             (letrec*
                              ((x7503
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7503))))
                            (x7500
                             (letrec*
                              ((x7501
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7501)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7502 x7500)))))))
                     g7497)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7504
                       (letrec*
                        ((x7507
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7507))))
                      (g7505
                       (letrec*
                        ((x7508
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7508))))
                      (g7506
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7509
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7509))))
                     g7506)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7510
                       (letrec*
                        ((x7511
                          (letrec*
                           ((x7512
                             (letrec*
                              ((x7513
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7513)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7512)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7511)))))
                     g7510)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7514
                       (letrec*
                        ((x7517
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7517))))
                      (g7515
                       (letrec*
                        ((x7518
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7518))))
                      (g7516
                       (letrec*
                        ((x-cnd7519
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7519
                          x
                          (letrec*
                           ((x7521
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7520
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7521 x7520)))))))
                     g7516)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7522
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7522)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7523
                       (letrec*
                        ((x-cnd7524
                          (letrec*
                           ((x7525 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7525)))))
                        (if x-cnd7524
                          (letrec*
                           ((x7526 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7526)))
                          #f))))
                     g7523)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7527
                       (letrec*
                        ((x7529
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7529))))
                      (g7528
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7530
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7531 (if val7243 val7243 #f)))
                               g7531)))))
                         g7530))))
                     g7528)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7533
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7533 9)))))
                        (letrec*
                         ((g7534
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7535
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7535 10)))))
                              (letrec*
                               ((g7536
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7537
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7537 32))))))
                               g7536)))))
                         g7534))))
                     g7532)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7538
                       (letrec*
                        ((x7539
                          (letrec*
                           ((x7540
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7540)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7539)))))
                     g7538)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7541
                       (letrec*
                        ((x7543
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7543))))
                      (g7542
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7542)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7544 #f)) g7544)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7545
                       (letrec*
                        ((x7546
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7546)))))
                     g7545)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7547
                       (letrec*
                        ((x7549
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7549))))
                      (g7548
                       (letrec*
                        ((x-cnd7550
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7550
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7548)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7551
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7552
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7554
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7553
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7554 x7553)))))
                              (letrec*
                               ((g7555
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7558
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7557
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7556
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7558 x7557 x7556)))))
                                    (letrec*
                                     ((g7559
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7567
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7566
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7563
                                               (letrec*
                                                ((x7565
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7564
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7565 x7564))))
                                              (x7560
                                               (letrec*
                                                ((x7562
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7561
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7562 x7561)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7567
                                                    x7566
                                                    x7563
                                                    x7560)))))
                                          (letrec*
                                           ((g7568
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7584
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7583
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7569
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7570
                                                      (letrec*
                                                       ((x7581
                                                         (letrec*
                                                          ((x7582
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
                                                            (= x7582 n))))
                                                        (x7571
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7572
                                                                 (letrec*
                                                                  ((x7579
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7573
                                                                    (letrec*
                                                                     ((x7576
                                                                       (letrec*
                                                                        ((x7578
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
                                                                         (x7577
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
                                                                           x7578
                                                                           x7577))))
                                                                      (x7574
                                                                       (letrec*
                                                                        ((x7575
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
                                                                           x7575)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7576
                                                                            x7574)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7579
                                                                        x7573)))))
                                                               g7572))))
                                                          (letrec*
                                                           ((g7580
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7580))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7581 x7571)))))
                                                    g7570))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7584 x7583 x7569))))))
                                           g7568)))))
                                     g7559)))))
                               g7555)))))
                         g7552))))
                     g7551)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7585
                       (letrec*
                        ((x7586
                          (letrec*
                           ((x7587
                             (letrec*
                              ((x7588
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7588)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7587)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7586)))))
                     g7585)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7589
                       (letrec*
                        ((x7590
                          (letrec*
                           ((x7591
                             (letrec*
                              ((x7592
                                (begin
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7592)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7591)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7590)))))
                     g7589)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7593
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7593)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7594
                       (letrec*
                        ((x7596
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7596))))
                      (g7595
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7597
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7598 (if val7251 val7251 #f)))
                               g7598)))))
                         g7597))))
                     g7595)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7599
                       (letrec*
                        ((x7602
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7602))))
                      (g7600
                       (letrec*
                        ((x7603
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7603))))
                      (g7601
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
                         ((g7604
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7605 res))
                         g7605))))
                     g7601)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7606
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7606)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7610
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7610))))
                      (g7608
                       (letrec*
                        ((x7611
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7611))))
                      (g7609
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7612
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7612))))
                     g7609)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x7614
                          (letrec*
                           ((x7615
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7615)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7614)))))
                     g7613)))
                 (cdaddr
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
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7619)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7618)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7617)))))
                     g7616)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7620
                       (letrec*
                        ((x7621
                          (letrec*
                           ((x7622
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7622)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7621)))))
                     g7620)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x7624
                          (letrec*
                           ((x7625
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7625)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7624)))))
                     g7623)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7626
                       (letrec*
                        ((x7629
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7629))))
                      (g7627
                       (letrec*
                        ((x7630
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7630))))
                      (g7628
                       (letrec*
                        ((x7631
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7631)))))
                     g7628)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
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
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7635)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7634)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7633)))))
                     g7632)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7636
                       (letrec*
                        ((x7638
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7638))))
                      (g7637
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7637)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7639
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7639)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7640
                       (letrec*
                        ((x7641
                          (letrec*
                           ((x7642
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7642)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7641)))))
                     g7640)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7643
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7643)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7644
                       (letrec*
                        ((x7646
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7646))))
                      (g7645
                       (letrec*
                        ((x-cnd7647
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7647
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7650
                             (letrec*
                              ((x7651
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7651))))
                            (x7648
                             (letrec*
                              ((x7649
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7649)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7650 x7648)))))))
                     g7645)))
                 (caaadr
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
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7655)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7654)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7653)))))
                     g7652)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7656
                       (letrec*
                        ((x7657
                          (letrec*
                           ((x7658
                             (letrec*
                              ((x7659
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7659)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7658)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7657)))))
                     g7656)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7660
                       (letrec*
                        ((x7662
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7662))))
                      (g7661
                       (letrec*
                        ((x7663
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7663)))))
                     g7661)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7664
                       (letrec*
                        ((x7665
                          (letrec*
                           ((x7666
                             (letrec*
                              ((x7667
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7667)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7666)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7665)))))
                     g7664)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7668
                       (letrec*
                        ((x7671
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7671))))
                      (g7669
                       (letrec*
                        ((x7672
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7672))))
                      (g7670
                       (if cnd
                         (letrec*
                          ((g7673
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7673)
                         (if cnd
                           (letrec*
                            ((g7674
                              (letrec*
                               ((x7675
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7675)))))
                            g7674)
                           (if cnd
                             (letrec*
                              ((g7676
                                (letrec*
                                 ((x7678
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7677
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7678 x7677)))))
                              g7676)
                             (if cnd
                               (letrec*
                                ((g7679
                                  (letrec*
                                   ((x7682
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7681
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7680
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7682 x7681 x7680)))))
                                g7679)
                               (if cnd
                                 (letrec*
                                  ((g7683
                                    (letrec*
                                     ((x7687
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7686
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7685
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7687 x7686 x7685 x7684)))))
                                  g7683)
                                 (if cnd
                                   (letrec*
                                    ((g7688
                                      (letrec*
                                       ((x7694
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7693
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7692
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7691
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7689
                                         (letrec*
                                          ((x7690
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7690)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7694
                                          x7693
                                          x7692
                                          x7691
                                          x7689)))))
                                    g7688)
                                   (if cnd
                                     (letrec*
                                      ((g7695
                                        (letrec*
                                         ((x7703
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7702
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7701
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7700
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7698
                                           (letrec*
                                            ((x7699
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7699))))
                                          (x7696
                                           (letrec*
                                            ((x7697
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7697)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7703
                                            x7702
                                            x7701
                                            x7700
                                            x7698
                                            x7696)))))
                                      g7695)
                                     (if cnd
                                       (letrec*
                                        ((g7704
                                          (letrec*
                                           ((x7714
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7713
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7712
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7711
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7709
                                             (letrec*
                                              ((x7710
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7710))))
                                            (x7707
                                             (letrec*
                                              ((x7708
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7708))))
                                            (x7705
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7706)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7714
                                              x7713
                                              x7712
                                              x7711
                                              x7709
                                              x7707
                                              x7705)))))
                                        g7704)
                                       (letrec*
                                        ((g7715
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7715)))))))))))
                     g7670)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7716
                       (letrec*
                        ((x7718
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7718))))
                      (g7717
                       (letrec*
                        ((x-cnd7719
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7719
                          #f
                          (letrec*
                           ((x-cnd7720
                             (letrec*
                              ((x7721
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7721 e)))))
                           (if x-cnd7720
                             l
                             (letrec*
                              ((x7722
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7722)))))))))
                     g7717)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7723
                       (letrec*
                        ((x7724
                          (letrec*
                           ((x7725
                             (letrec*
                              ((x7726
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7726)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7725)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7724)))))
                     g7723)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7727
                       (letrec*
                        ((x7728
                          (letrec*
                           ((x7729
                             (letrec*
                              ((x7730
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7730)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7729)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7728)))))
                     g7727)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7731
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7731)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7732
                       (letrec*
                        ((x7734
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7734))))
                      (g7733
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7733)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7735
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7736
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7736))))
                     g7735)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7737
                       (letrec*
                        ((x7738
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7738)))))
                     g7737)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7739
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7742
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7740
                             (letrec*
                              ((x7741
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7741)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7742 x7740)))))
                        (letrec*
                         ((g7743
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7743))))
                     g7739)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7744
                       (letrec*
                        ((x7745
                          (letrec*
                           ((x7746
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7747)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7746)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7745)))))
                     g7744)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7748
                       (letrec*
                        ((x-cnd7749
                          (letrec*
                           ((x7750 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7750 c)))))
                        (if x-cnd7749
                          (letrec*
                           ((x7751 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7751)))
                          #f))))
                     g7748)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7752
                       (letrec*
                        ((x7754
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7754))))
                      (g7753
                       (letrec*
                        ((x-cnd7755
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7755
                          #f
                          (letrec*
                           ((x-cnd7756
                             (letrec*
                              ((x7757
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7757 k)))))
                           (if x-cnd7756
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7758
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7758)))))))))
                     g7753)))
                 (not (lambda (x) (letrec* ((g7759 (if x #f #t))) g7759)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7760
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7760)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7761
                       (letrec*
                        ((x7763
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7763))))
                      (g7762
                       (letrec*
                        ((x-cnd7764
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7764
                          #f
                          (letrec*
                           ((x-cnd7765
                             (letrec*
                              ((x7766
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7766 e)))))
                           (if x-cnd7765
                             l
                             (letrec*
                              ((x7767
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7767)))))))))
                     g7762)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7768
                       (letrec*
                        ((x7769
                          (letrec*
                           ((x7770
                             (letrec*
                              ((x7771
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7771)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7770)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7769)))))
                     g7768)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7772
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7774))))
                      (g7773
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7775
                               (letrec*
                                ((x-cnd7776
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7776
                                  0
                                  (letrec*
                                   ((x7777
                                     (letrec*
                                      ((x7778
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7778)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7777)))))))
                             g7775))))
                        (letrec*
                         ((g7779
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7779))))
                     g7773)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7780
                       (letrec*
                        ((x7783
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7783))))
                      (g7781
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7784))))
                      (g7782
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7785
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7785))))
                     g7782)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7786
                       (letrec*
                        ((x7787
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7787)))))
                     g7786)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7788
                       (letrec*
                        ((x7789
                          (letrec*
                           ((x7790
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7790)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7789)))))
                     g7788)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7793))))
                      (g7792
                       (letrec*
                        ((x-cnd7794
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7794
                          #f
                          (letrec*
                           ((x-cnd7795
                             (letrec*
                              ((x7796
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7796 k)))))
                           (if x-cnd7795
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7797
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7797)))))))))
                     g7792)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7798
                       (letrec*
                        ((x7799
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7799)))))
                     g7798)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7800
                       (letrec*
                        ((x7803
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7803))))
                      (g7801
                       (letrec*
                        ((x7804
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7804))))
                      (g7802
                       (letrec*
                        ((x7805
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7805)))))
                     g7802)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7806
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7807
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7807))))
                     g7806)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7808
                       (letrec*
                        ((x7811
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7811))))
                      (g7809
                       (letrec*
                        ((x7812
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7812))))
                      (g7810
                       (letrec*
                        ((x-cnd7813
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7813
                          #t
                          (letrec*
                           ((x-cnd7814
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7814
                             (letrec*
                              ((g7815
                                (letrec*
                                 ((x7817
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7817))))
                               (g7816
                                (letrec*
                                 ((x7818
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7818)))))
                              g7816)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7810)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7819
                       (letrec*
                        ((x7821
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7821))))
                      (g7820
                       (letrec*
                        ((x-cnd7822
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7822
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7820)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7823
                       (letrec*
                        ((x7826
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7826))))
                      (g7824
                       (letrec*
                        ((x7827
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7827))))
                      (g7825
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7828
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7828))))
                     g7825)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7829
                       (letrec*
                        ((x7830
                          (letrec*
                           ((x7831
                             (letrec*
                              ((x7832
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7832)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7831)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7830)))))
                     g7829)))
                 (newline (lambda () (letrec* ((g7833 #f)) g7833)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7834
                       (letrec*
                        ((x7836
                          (letrec*
                           ((x7837
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7837))))
                         (x7835
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7836 x7835)))))
                     g7834)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7838
                       (letrec*
                        ((x7840
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7840))))
                      (g7839
                       (letrec*
                        ((x7841
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7841)))))
                     g7839)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7842
                       (letrec*
                        ((x7846
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7846))))
                      (g7843
                       (letrec*
                        ((x7847
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7847))))
                      (g7844
                       (letrec*
                        ((x7848
                          (letrec*
                           ((x7849
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7849)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7848))))
                      (g7845
                       (letrec*
                        ((x-cnd7850
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7850
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7852
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7851
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7852 x7851)))))))
                     g7845)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7853
                       (letrec*
                        ((x-cnd7854
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7854
                          a
                          (letrec*
                           ((x7855
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7855)))))))
                     g7853)))
                 (foldr
                  (lambda (f z xs)
                    (letrec*
                     ((g7856
                       (letrec*
                        ((x-cnd7857
                          (begin
                            (write '(funapp 1354 37))
                            (display "\n")
                            (empty? xs))))
                        (if x-cnd7857
                          z
                          (letrec*
                           ((x7860
                             (begin
                               (write '(funapp 1358 36))
                               (display "\n")
                               (car xs)))
                            (x7858
                             (letrec*
                              ((x7859
                                (begin
                                  (write '(funapp 1360 47))
                                  (display "\n")
                                  (cdr xs))))
                              (begin
                                (write '(funapp 1360 58))
                                (display "\n")
                                (foldr f z x7859)))))
                           (begin
                             (write '(funapp 1361 28))
                             (display "\n")
                             (f x7860 x7858)))))))
                     g7856)))
                 (map
                  (lambda (f xs)
                    (letrec*
                     ((g7861
                       (letrec*
                        ((x7862
                          (letrec*
                           ((x7865
                             (begin
                               (write '(funapp 1370 36))
                               (display "\n")
                               (x ys)))
                            (x7863
                             (letrec*
                              ((x7864
                                (begin
                                  (write '(funapp 1371 53))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1371 61))
                                (display "\n")
                                (cons x7864 ys)))))
                           (begin
                             (write '(funapp 1372 28))
                             (display "\n")
                             (λ x7865 x7863)))))
                        (begin
                          (write '(funapp 1373 25))
                          (display "\n")
                          (foldr x7862 empty xs)))))
                     g7861))))
                (letrec*
                 ((g7866
                   (letrec*
                    ((x7871
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        ((lambda (j7330 k7331 f7332)
                           (letrec*
                            ((g7872
                              (lambda (g7327 g7328 g7329)
                                (letrec*
                                 ((g7873
                                   (letrec*
                                    ((x7874
                                      (letrec*
                                       ((x7878
                                         (begin
                                           (write '(funapp 1389 40))
                                           (display "\n")
                                           ((lambda (j7335 k7336 f7337)
                                              (letrec*
                                               ((g7879
                                                 (lambda (g7333 g7334)
                                                   (letrec*
                                                    ((g7880
                                                      (letrec*
                                                       ((x7881
                                                         (letrec*
                                                          ((x7883
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1399
                                                                 57))
                                                              (display "\n")
                                                              (any/c
                                                               j7335
                                                               k7336
                                                               g7333)))
                                                           (x7882
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1404
                                                                 57))
                                                              (display "\n")
                                                              (any/c
                                                               j7335
                                                               k7336
                                                               g7334))))
                                                          (begin
                                                            (write
                                                             '(funapp 1408 55))
                                                            (display "\n")
                                                            (f7337
                                                             x7883
                                                             x7882)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1409 52))
                                                         (display "\n")
                                                         (any/c
                                                          j7335
                                                          k7336
                                                          x7881)))))
                                                    g7880))))
                                               g7879))
                                            j7330
                                            k7331
                                            g7327)))
                                        (x7877
                                         (begin
                                           (write '(funapp 1415 46))
                                           (display "\n")
                                           (any/c j7330 k7331 g7328)))
                                        (x7875
                                         (letrec*
                                          ((x7876
                                            (begin
                                              (write '(funapp 1418 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1419 41))
                                            (display "\n")
                                            (x7876 j7330 k7331 g7329)))))
                                       (begin
                                         (write '(funapp 1420 38))
                                         (display "\n")
                                         (f7332 x7878 x7877 x7875)))))
                                    (begin
                                      (write '(funapp 1421 35))
                                      (display "\n")
                                      (any/c j7330 k7331 x7874)))))
                                 g7873))))
                            g7872))
                         (begin
                           (write '(funapp 1424 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1425 23))
                           (display "\n")
                           'importer)
                         foldr)))
                     (x7870 (input))
                     (x7869 (input))
                     (x7868 (input)))
                    (begin
                      (write '(funapp 1430 21))
                      (display "\n")
                      (x7871 x7870 x7869 x7868))))
                  (g7867
                   (letrec*
                    ((x7886
                      (begin
                        (write '(funapp 1434 23))
                        (display "\n")
                        ((lambda (j7340 k7341 f7342)
                           (letrec*
                            ((g7887
                              (lambda (g7338 g7339)
                                (letrec*
                                 ((g7888
                                   (letrec*
                                    ((x7897
                                      (begin
                                        (write '(funapp 1441 43))
                                        (display "\n")
                                        (listof any/c)))
                                     (x7889
                                      (letrec*
                                       ((x7892
                                         (begin
                                           (write '(funapp 1445 40))
                                           (display "\n")
                                           ((lambda (j7344 k7345 f7346)
                                              (letrec*
                                               ((g7893
                                                 (lambda (g7343)
                                                   (letrec*
                                                    ((g7894
                                                      (letrec*
                                                       ((x7895
                                                         (letrec*
                                                          ((x7896
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1455
                                                                 57))
                                                              (display "\n")
                                                              (any/c
                                                               j7344
                                                               k7345
                                                               g7343))))
                                                          (begin
                                                            (write
                                                             '(funapp 1459 55))
                                                            (display "\n")
                                                            (f7346 x7896)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1460 52))
                                                         (display "\n")
                                                         (any/c
                                                          j7344
                                                          k7345
                                                          x7895)))))
                                                    g7894))))
                                               g7893))
                                            j7340
                                            k7341
                                            g7338)))
                                        (x7890
                                         (letrec*
                                          ((x7891
                                            (begin
                                              (write '(funapp 1468 49))
                                              (display "\n")
                                              (listof any/c))))
                                          (begin
                                            (write '(funapp 1469 41))
                                            (display "\n")
                                            (x7891 j7340 k7341 g7339)))))
                                       (begin
                                         (write '(funapp 1470 38))
                                         (display "\n")
                                         (f7342 x7892 x7890)))))
                                    (begin
                                      (write '(funapp 1471 35))
                                      (display "\n")
                                      (x7897 j7340 k7341 x7889)))))
                                 g7888))))
                            g7887))
                         (begin
                           (write '(funapp 1474 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 1475 23))
                           (display "\n")
                           'importer)
                         map)))
                     (x7885 (input))
                     (x7884 (input)))
                    (begin
                      (write '(funapp 1479 21))
                      (display "\n")
                      (x7886 x7885 x7884)))))
                 g7867))))
             g7360))))
         g7358)))
      g7357))))
