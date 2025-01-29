(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7328 #t)) g7328)))
      (meta (lambda (v) (letrec* ((g7329 v)) g7329)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7330
            (letrec*
             ((g7331
               (letrec*
                ((x-e7332 lst))
                (letrec*
                 ((v1742 x-e7332))
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
                     ((x-cnd7333
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7333
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
             g7331)))
          g7330)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7334 (lambda (v) (letrec* ((g7335 v)) g7335)))) g7334)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7336
            (letrec*
             ((x7337 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7337)))))
          g7336))))
     (letrec*
      ((g7338
        (letrec*
         ((g7339
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
             ((g7340 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7341
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7259 g7260 g7261)
                    (letrec*
                     ((g7342
                       (letrec*
                        ((x-cnd7343
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7261))))
                        (if x-cnd7343
                          g7261
                          (begin
                            (write '(blame g7259 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7259)))))))
                     g7342)))
                 (boolean?/c
                  (lambda (g7262 g7263 g7264)
                    (letrec*
                     ((g7344
                       (letrec*
                        ((x-cnd7345
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7264))))
                        (if x-cnd7345
                          g7264
                          (begin
                            (write '(blame g7262 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7262)))))))
                     g7344)))
                 (number?/c
                  (lambda (g7265 g7266 g7267)
                    (letrec*
                     ((g7346
                       (letrec*
                        ((x-cnd7347
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7267))))
                        (if x-cnd7347
                          g7267
                          (begin
                            (write '(blame g7265 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7265)))))))
                     g7346)))
                 (any/c
                  (lambda (g7268 g7269 g7270)
                    (letrec*
                     ((g7348
                       (letrec*
                        ((x-cnd7349
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7350 #t)) g7350))
                             g7270))))
                        (if x-cnd7349
                          g7270
                          (begin
                            (write '(blame g7268 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7268)))))))
                     g7348)))
                 (any?/c
                  (lambda (g7271 g7272 g7273)
                    (letrec*
                     ((g7351
                       (letrec*
                        ((x-cnd7352
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7353 #t)) g7353))
                             g7273))))
                        (if x-cnd7352
                          g7273
                          (begin
                            (write '(blame g7271 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7271)))))))
                     g7351)))
                 (cons?/c
                  (lambda (g7274 g7275 g7276)
                    (letrec*
                     ((g7354
                       (letrec*
                        ((x-cnd7355
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7276))))
                        (if x-cnd7355
                          g7276
                          (begin
                            (write '(blame g7274 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7274)))))))
                     g7354)))
                 (pair?/c
                  (lambda (g7277 g7278 g7279)
                    (letrec*
                     ((g7356
                       (letrec*
                        ((x-cnd7357
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7279))))
                        (if x-cnd7357
                          g7279
                          (begin
                            (write '(blame g7277 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7277)))))))
                     g7356)))
                 (integer?/c
                  (lambda (g7280 g7281 g7282)
                    (letrec*
                     ((g7358
                       (letrec*
                        ((x-cnd7359
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7282))))
                        (if x-cnd7359
                          g7282
                          (begin
                            (write '(blame g7280 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7280)))))))
                     g7358)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7360
                       (lambda (k j v)
                         (letrec*
                          ((g7361
                            (letrec*
                             ((x-cnd7362
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7362
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7361))))
                     g7360)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7363
                       (lambda (k j v)
                         (letrec*
                          ((g7364
                            (letrec*
                             ((x-cnd7365
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7365
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7369
                                  (letrec*
                                   ((x7370
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7370))))
                                 (x7366
                                  (letrec*
                                   ((x7368
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7367
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7368 k j x7367)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7369 x7366)))))))
                          g7364))))
                     g7363)))
                 (any? (lambda (v) (letrec* ((g7371 #t)) g7371)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7372
                       (letrec*
                        ((x7373
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7373)))))
                     g7372)))
                 (nonzero?/c
                  (lambda (g7283 g7284 g7285)
                    (letrec*
                     ((g7374
                       (letrec*
                        ((x-cnd7375
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7376
                                  (letrec*
                                   ((x7377
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7377)))))
                                g7376))
                             g7285))))
                        (if x-cnd7375
                          g7285
                          (begin
                            (write '(blame g7283 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7283)))))))
                     g7374)))
                 (meta (lambda (v) (letrec* ((g7378 v)) g7378)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7288 k7289 f7290)
                       (letrec*
                        ((g7380
                          (lambda (g7286 g7287)
                            (letrec*
                             ((g7381
                               (letrec*
                                ((x7382
                                  (letrec*
                                   ((x7384
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7286)))
                                    (x7383
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7287))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7290 x7384 x7383)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7288 k7289 x7382)))))
                             g7381))))
                        g7380))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7379
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7379)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7293 k7294 f7295)
                       (letrec*
                        ((g7386
                          (lambda (g7291 g7292)
                            (letrec*
                             ((g7387
                               (letrec*
                                ((x7388
                                  (letrec*
                                   ((x7390
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7291)))
                                    (x7389
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7292))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7295 x7390 x7389)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7293 k7294 x7388)))))
                             g7387))))
                        g7386))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7385
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7385)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7298 k7299 f7300)
                       (letrec*
                        ((g7392
                          (lambda (g7296 g7297)
                            (letrec*
                             ((g7393
                               (letrec*
                                ((x7394
                                  (letrec*
                                   ((x7396
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7296)))
                                    (x7395
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7297))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7300 x7396 x7395)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7298 k7299 x7394)))))
                             g7393))))
                        g7392))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7391
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7391)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7303 k7304 f7305)
                       (letrec*
                        ((g7398
                          (lambda (g7301 g7302)
                            (letrec*
                             ((g7399
                               (letrec*
                                ((x7400
                                  (letrec*
                                   ((x7402
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7301)))
                                    (x7401
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7302))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7305 x7402 x7401)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7303 k7304 x7400)))))
                             g7399))))
                        g7398))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7397
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7397)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7307 k7308 f7309)
                       (letrec*
                        ((g7404
                          (lambda (g7306)
                            (letrec*
                             ((g7405
                               (letrec*
                                ((x7406
                                  (letrec*
                                   ((x7407
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7307 k7308 g7306))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7309 x7407)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7307 k7308 x7406)))))
                             g7405))))
                        g7404))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7403
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7403)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7311 k7312 f7313)
                       (letrec*
                        ((g7409
                          (lambda (g7310)
                            (letrec*
                             ((g7410
                               (letrec*
                                ((x7411
                                  (letrec*
                                   ((x7412
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7311 k7312 g7310))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7313 x7412)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7311 k7312 x7411)))))
                             g7410))))
                        g7409))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7408
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7408)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7316 k7317 f7318)
                       (letrec*
                        ((g7414
                          (lambda (g7314 g7315)
                            (letrec*
                             ((g7415
                               (letrec*
                                ((x7416
                                  (letrec*
                                   ((x7418
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7314)))
                                    (x7417
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7315))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7318 x7418 x7417)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7316 k7317 x7416)))))
                             g7415))))
                        g7414))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7413
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7413)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7320 k7321 f7322)
                       (letrec*
                        ((g7420
                          (lambda (g7319)
                            (letrec*
                             ((g7421
                               (letrec*
                                ((x7422
                                  (letrec*
                                   ((x7423
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7320 k7321 g7319))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7322 x7423)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7320 k7321 x7422)))))
                             g7421))))
                        g7420))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7419
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7419)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7325 k7326 f7327)
                       (letrec*
                        ((g7425
                          (lambda (g7323 g7324)
                            (letrec*
                             ((g7426
                               (letrec*
                                ((x7427
                                  (letrec*
                                   ((x7429
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7325 k7326 g7323)))
                                    (x7428
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7325 k7326 g7324))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7327 x7429 x7428)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7325 k7326 x7427)))))
                             g7426))))
                        g7425))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7424
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7424)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7430
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7430)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7431
                       (letrec*
                        ((x7432
                          (letrec*
                           ((x7433
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7433)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7432)))))
                     g7431)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7434
                       (letrec*
                        ((x7437
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7437))))
                      (g7435
                       (letrec*
                        ((x7438
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7438))))
                      (g7436
                       (letrec*
                        ((x-cnd7439
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7439
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7442
                             (letrec*
                              ((x7443
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7443))))
                            (x7440
                             (letrec*
                              ((x7441
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7441)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7442 x7440)))))))
                     g7436)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7444
                       (letrec*
                        ((x7445
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7445)))))
                     g7444)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7446
                       (letrec*
                        ((x7447
                          (letrec*
                           ((x7448
                             (letrec*
                              ((x7449
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7449)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7448)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7447)))))
                     g7446)))
                 (cdadar
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
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7453)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7452)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7451)))))
                     g7450)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7454
                       (letrec*
                        ((x7457
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7457))))
                      (g7455
                       (letrec*
                        ((x7458
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7458))))
                      (g7456
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
                         ((g7459
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7460 res))
                         g7460))))
                     g7456)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7461
                       (letrec*
                        ((x7462
                          (letrec*
                           ((x7463
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7463)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7462)))))
                     g7461)))
                 (cdaadr
                  (lambda (x)
                    (letrec*
                     ((g7464
                       (letrec*
                        ((x7465
                          (letrec*
                           ((x7466
                             (letrec*
                              ((x7467
                                (begin
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7467)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7466)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7465)))))
                     g7464)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7468
                       (letrec*
                        ((x7470
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7470))))
                      (g7469
                       (letrec*
                        ((x-cnd7471
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7471
                          #f
                          (letrec*
                           ((x-cnd7472
                             (letrec*
                              ((x7473
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7473 k)))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7474
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7474)))))))))
                     g7469)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7475
                       (letrec*
                        ((x7476
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7476)))))
                     g7475)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7477
                       (letrec*
                        ((x7479
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7479))))
                      (g7478
                       (letrec*
                        ((x-cnd7480
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7480
                          ""
                          (letrec*
                           ((x7483
                             (letrec*
                              ((x7484
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7484))))
                            (x7481
                             (letrec*
                              ((x7482
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7482)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7483 x7481)))))))
                     g7478)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7485
                       (letrec*
                        ((x7488
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7488))))
                      (g7486
                       (letrec*
                        ((x7489
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7489))))
                      (g7487
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7490
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7490))))
                     g7487)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7491
                       (letrec*
                        ((x7492
                          (letrec*
                           ((x7493
                             (letrec*
                              ((x7494
                                (begin
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7494)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7493)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7492)))))
                     g7491)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7495
                       (letrec*
                        ((x7498
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7498))))
                      (g7496
                       (letrec*
                        ((x7499
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7499))))
                      (g7497
                       (letrec*
                        ((x-cnd7500
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7500
                          x
                          (letrec*
                           ((x7502
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7501
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7502 x7501)))))))
                     g7497)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7503
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7503)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7504
                       (letrec*
                        ((x-cnd7505
                          (letrec*
                           ((x7506 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7506)))))
                        (if x-cnd7505
                          (letrec*
                           ((x7507 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7507)))
                          #f))))
                     g7504)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7508
                       (letrec*
                        ((x7510
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7510))))
                      (g7509
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7511
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7512 (if val7243 val7243 #f)))
                               g7512)))))
                         g7511))))
                     g7509)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7513
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7514
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7514 9)))))
                        (letrec*
                         ((g7515
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7516
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7516 10)))))
                              (letrec*
                               ((g7517
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7518
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7518 32))))))
                               g7517)))))
                         g7515))))
                     g7513)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7519
                       (letrec*
                        ((x7520
                          (letrec*
                           ((x7521
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7521)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7520)))))
                     g7519)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7522
                       (letrec*
                        ((x7524
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7524))))
                      (g7523
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7523)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7525 #f)) g7525)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7526
                       (letrec*
                        ((x7527
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7527)))))
                     g7526)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7528
                       (letrec*
                        ((x7530
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7530))))
                      (g7529
                       (letrec*
                        ((x-cnd7531
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7531
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7529)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7532
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7533
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7535
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7534
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7535 x7534)))))
                              (letrec*
                               ((g7536
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7539
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7538
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7537
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7539 x7538 x7537)))))
                                    (letrec*
                                     ((g7540
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7548
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7547
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7544
                                               (letrec*
                                                ((x7546
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7545
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7546 x7545))))
                                              (x7541
                                               (letrec*
                                                ((x7543
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7542
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7543 x7542)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7548
                                                    x7547
                                                    x7544
                                                    x7541)))))
                                          (letrec*
                                           ((g7549
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7565
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7564
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7550
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7551
                                                      (letrec*
                                                       ((x7562
                                                         (letrec*
                                                          ((x7563
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
                                                            (= x7563 n))))
                                                        (x7552
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7553
                                                                 (letrec*
                                                                  ((x7560
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7554
                                                                    (letrec*
                                                                     ((x7557
                                                                       (letrec*
                                                                        ((x7559
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
                                                                         (x7558
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
                                                                           x7559
                                                                           x7558))))
                                                                      (x7555
                                                                       (letrec*
                                                                        ((x7556
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
                                                                           x7556)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7557
                                                                            x7555)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7560
                                                                        x7554)))))
                                                               g7553))))
                                                          (letrec*
                                                           ((g7561
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7561))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7562 x7552)))))
                                                    g7551))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7565 x7564 x7550))))))
                                           g7549)))))
                                     g7540)))))
                               g7536)))))
                         g7533))))
                     g7532)))
                 (cdaaar
                  (lambda (x)
                    (letrec*
                     ((g7566
                       (letrec*
                        ((x7567
                          (letrec*
                           ((x7568
                             (letrec*
                              ((x7569
                                (begin
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7569)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7568)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7567)))))
                     g7566)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7573)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7572)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7571)))))
                     g7570)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7574
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7574)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7575
                       (letrec*
                        ((x7577
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7577))))
                      (g7576
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7578
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7579 (if val7251 val7251 #f)))
                               g7579)))))
                         g7578))))
                     g7576)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7580
                       (letrec*
                        ((x7583
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7583))))
                      (g7581
                       (letrec*
                        ((x7584
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7584))))
                      (g7582
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
                         ((g7585
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7586 res))
                         g7586))))
                     g7582)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7587
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7587)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7588
                       (letrec*
                        ((x7591
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7591))))
                      (g7589
                       (letrec*
                        ((x7592
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7592))))
                      (g7590
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7593
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7593))))
                     g7590)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7594
                       (letrec*
                        ((x7595
                          (letrec*
                           ((x7596
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7596)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7595)))))
                     g7594)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7597
                       (letrec*
                        ((x7598
                          (letrec*
                           ((x7599
                             (letrec*
                              ((x7600
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7600)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7599)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7598)))))
                     g7597)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7601
                       (letrec*
                        ((x7602
                          (letrec*
                           ((x7603
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7603)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7602)))))
                     g7601)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7604
                       (letrec*
                        ((x7605
                          (letrec*
                           ((x7606
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7606)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7605)))))
                     g7604)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x7610
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7610))))
                      (g7608
                       (letrec*
                        ((x7611
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7611))))
                      (g7609
                       (letrec*
                        ((x7612
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7612)))))
                     g7609)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
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
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7616)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7615)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7614)))))
                     g7613)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7617
                       (letrec*
                        ((x7619
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7619))))
                      (g7618
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7618)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7620
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7620)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7621
                       (letrec*
                        ((x7622
                          (letrec*
                           ((x7623
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7623)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7622)))))
                     g7621)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7624
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7624)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7625
                       (letrec*
                        ((x7627
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7627))))
                      (g7626
                       (letrec*
                        ((x-cnd7628
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7628
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7631
                             (letrec*
                              ((x7632
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7632))))
                            (x7629
                             (letrec*
                              ((x7630
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7630)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7631 x7629)))))))
                     g7626)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7633
                       (letrec*
                        ((x7634
                          (letrec*
                           ((x7635
                             (letrec*
                              ((x7636
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7636)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7635)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7634)))))
                     g7633)))
                 (cddadr
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
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7640)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7639)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7638)))))
                     g7637)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7641
                       (letrec*
                        ((x7643
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7643))))
                      (g7642
                       (letrec*
                        ((x7644
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7644)))))
                     g7642)))
                 (caadar
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
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7648)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7647)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7646)))))
                     g7645)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7649
                       (letrec*
                        ((x7652
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7652))))
                      (g7650
                       (letrec*
                        ((x7653
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7653))))
                      (g7651
                       (if cnd
                         (letrec*
                          ((g7654
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7654)
                         (if cnd
                           (letrec*
                            ((g7655
                              (letrec*
                               ((x7656
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7656)))))
                            g7655)
                           (if cnd
                             (letrec*
                              ((g7657
                                (letrec*
                                 ((x7659
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7658
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7659 x7658)))))
                              g7657)
                             (if cnd
                               (letrec*
                                ((g7660
                                  (letrec*
                                   ((x7663
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7662
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7661
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7663 x7662 x7661)))))
                                g7660)
                               (if cnd
                                 (letrec*
                                  ((g7664
                                    (letrec*
                                     ((x7668
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7667
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7666
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7665
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7668 x7667 x7666 x7665)))))
                                  g7664)
                                 (if cnd
                                   (letrec*
                                    ((g7669
                                      (letrec*
                                       ((x7675
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7674
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7673
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7672
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7670
                                         (letrec*
                                          ((x7671
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7671)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7675
                                          x7674
                                          x7673
                                          x7672
                                          x7670)))))
                                    g7669)
                                   (if cnd
                                     (letrec*
                                      ((g7676
                                        (letrec*
                                         ((x7684
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7683
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7682
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7681
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7679
                                           (letrec*
                                            ((x7680
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7680))))
                                          (x7677
                                           (letrec*
                                            ((x7678
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7678)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7684
                                            x7683
                                            x7682
                                            x7681
                                            x7679
                                            x7677)))))
                                      g7676)
                                     (if cnd
                                       (letrec*
                                        ((g7685
                                          (letrec*
                                           ((x7695
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7691))))
                                            (x7688
                                             (letrec*
                                              ((x7689
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7689))))
                                            (x7686
                                             (letrec*
                                              ((x7687
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7687)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7695
                                              x7694
                                              x7693
                                              x7692
                                              x7690
                                              x7688
                                              x7686)))))
                                        g7685)
                                       (letrec*
                                        ((g7696
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7696)))))))))))
                     g7651)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7697
                       (letrec*
                        ((x7699
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7699))))
                      (g7698
                       (letrec*
                        ((x-cnd7700
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7700
                          #f
                          (letrec*
                           ((x-cnd7701
                             (letrec*
                              ((x7702
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7702 e)))))
                           (if x-cnd7701
                             l
                             (letrec*
                              ((x7703
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7703)))))))))
                     g7698)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7704
                       (letrec*
                        ((x7705
                          (letrec*
                           ((x7706
                             (letrec*
                              ((x7707
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7707)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7706)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7705)))))
                     g7704)))
                 (cadddr
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
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7711)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7710)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7709)))))
                     g7708)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7712
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7712)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7713
                       (letrec*
                        ((x7715
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7715))))
                      (g7714
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7714)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7716
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7717
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7717))))
                     g7716)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7719
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7719)))))
                     g7718)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7720
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7723
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7721
                             (letrec*
                              ((x7722
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7722)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7723 x7721)))))
                        (letrec*
                         ((g7724
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7724))))
                     g7720)))
                 (cddaar
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
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7728)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7727)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7726)))))
                     g7725)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((x-cnd7730
                          (letrec*
                           ((x7731 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7731 c)))))
                        (if x-cnd7730
                          (letrec*
                           ((x7732 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7732)))
                          #f))))
                     g7729)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((x7735
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x7735))))
                      (g7734
                       (letrec*
                        ((x-cnd7736
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7736
                          #f
                          (letrec*
                           ((x-cnd7737
                             (letrec*
                              ((x7738
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x7738 k)))))
                           (if x-cnd7737
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7739
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x7739)))))))))
                     g7734)))
                 (not (lambda (x) (letrec* ((g7740 (if x #f #t))) g7740)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g7741
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g7741)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x7744
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x7744))))
                      (g7743
                       (letrec*
                        ((x-cnd7745
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7745
                          #f
                          (letrec*
                           ((x-cnd7746
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x7747 e)))))
                           (if x-cnd7746
                             l
                             (letrec*
                              ((x7748
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x7748)))))))))
                     g7743)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g7749
                       (letrec*
                        ((x7750
                          (letrec*
                           ((x7751
                             (letrec*
                              ((x7752
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x7752)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x7751)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x7750)))))
                     g7749)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g7753
                       (letrec*
                        ((x7755
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x7755))))
                      (g7754
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g7756
                               (letrec*
                                ((x-cnd7757
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd7757
                                  0
                                  (letrec*
                                   ((x7758
                                     (letrec*
                                      ((x7759
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x7759)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x7758)))))))
                             g7756))))
                        (letrec*
                         ((g7760
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g7760))))
                     g7754)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7761
                       (letrec*
                        ((x7764
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x7764))))
                      (g7762
                       (letrec*
                        ((x7765
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x7765))))
                      (g7763
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g7766
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7766))))
                     g7763)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7767
                       (letrec*
                        ((x7768
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x7768)))))
                     g7767)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x7770
                          (letrec*
                           ((x7771
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x7771)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x7770)))))
                     g7769)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g7772
                       (letrec*
                        ((x7774
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x7774))))
                      (g7773
                       (letrec*
                        ((x-cnd7775
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7775
                          #f
                          (letrec*
                           ((x-cnd7776
                             (letrec*
                              ((x7777
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x7777 k)))))
                           (if x-cnd7776
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7778
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x7778)))))))))
                     g7773)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g7779
                       (letrec*
                        ((x7780
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x7780)))))
                     g7779)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7781
                       (letrec*
                        ((x7784
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x7784))))
                      (g7782
                       (letrec*
                        ((x7785
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x7785))))
                      (g7783
                       (letrec*
                        ((x7786
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x7786)))))
                     g7783)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7787
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g7788
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7788))))
                     g7787)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g7789
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x7792))))
                      (g7790
                       (letrec*
                        ((x7793
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x7793))))
                      (g7791
                       (letrec*
                        ((x-cnd7794
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7794
                          #t
                          (letrec*
                           ((x-cnd7795
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd7795
                             (letrec*
                              ((g7796
                                (letrec*
                                 ((x7798
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x7798))))
                               (g7797
                                (letrec*
                                 ((x7799
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x7799)))))
                              g7797)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g7791)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g7800
                       (letrec*
                        ((x7802
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x7802))))
                      (g7801
                       (letrec*
                        ((x-cnd7803
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7803
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g7801)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7804
                       (letrec*
                        ((x7807
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x7807))))
                      (g7805
                       (letrec*
                        ((x7808
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x7808))))
                      (g7806
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g7809
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g7809))))
                     g7806)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g7810
                       (letrec*
                        ((x7811
                          (letrec*
                           ((x7812
                             (letrec*
                              ((x7813
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x7813)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x7812)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x7811)))))
                     g7810)))
                 (newline (lambda () (letrec* ((g7814 #f)) g7814)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g7815
                       (letrec*
                        ((x7817
                          (letrec*
                           ((x7818
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x7818))))
                         (x7816
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x7817 x7816)))))
                     g7815)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g7819
                       (letrec*
                        ((x7821
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x7821))))
                      (g7820
                       (letrec*
                        ((x7822
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x7822)))))
                     g7820)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g7823
                       (letrec*
                        ((x7827
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x7827))))
                      (g7824
                       (letrec*
                        ((x7828
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x7828))))
                      (g7825
                       (letrec*
                        ((x7829
                          (letrec*
                           ((x7830
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x7830)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x7829))))
                      (g7826
                       (letrec*
                        ((x-cnd7831
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd7831
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x7833
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x7832
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x7833 x7832)))))))
                     g7826)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g7834
                       (letrec*
                        ((x-cnd7835
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd7835
                          a
                          (letrec*
                           ((x7836
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x7836)))))))
                     g7834)))
                 (phi
                  (letrec*
                   ((x7860
                     (begin (write '(funapp 1351 28)) (display "\n") (x1)))
                    (x7837
                     (letrec*
                      ((x7859
                        (begin (write '(funapp 1354 31)) (display "\n") (x2)))
                       (x7838
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1357 34))
                             (display "\n")
                             (x3)))
                          (x7839
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1360 37))
                                (display "\n")
                                (x4)))
                             (x7840
                              (letrec*
                               ((x7856
                                 (begin
                                   (write '(funapp 1363 40))
                                   (display "\n")
                                   (x5)))
                                (x7841
                                 (letrec*
                                  ((x7855
                                    (begin
                                      (write '(funapp 1366 43))
                                      (display "\n")
                                      (x6)))
                                   (x7842
                                    (letrec*
                                     ((x7854
                                       (begin
                                         (write '(funapp 1369 46))
                                         (display "\n")
                                         (x7)))
                                      (x7843
                                       (letrec*
                                        ((x-cnd7844
                                          (begin
                                            (write '(funapp 1372 53))
                                            (display "\n")
                                            (or x1 x2))))
                                        (if x-cnd7844
                                          (letrec*
                                           ((x-cnd7845
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1377 55))
                                                  (display "\n")
                                                  (not x2)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1378 55))
                                                  (display "\n")
                                                  (not x3))))
                                              (begin
                                                (write '(funapp 1379 47))
                                                (display "\n")
                                                (or x1 x7847 x7846)))))
                                           (if x-cnd7845
                                             (letrec*
                                              ((x-cnd7848
                                                (begin
                                                  (write '(funapp 1382 59))
                                                  (display "\n")
                                                  (or x3 x4))))
                                              (if x-cnd7848
                                                (letrec*
                                                 ((x-cnd7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1387 61))
                                                        (display "\n")
                                                        (not x4))))
                                                    (begin
                                                      (write '(funapp 1388 53))
                                                      (display "\n")
                                                      (or x7850 x1)))))
                                                 (if x-cnd7849
                                                   (letrec*
                                                    ((x-cnd7851
                                                      (letrec*
                                                       ((x7853
                                                         (begin
                                                           (write
                                                            '(funapp 1393 64))
                                                           (display "\n")
                                                           (not x2)))
                                                        (x7852
                                                         (begin
                                                           (write
                                                            '(funapp 1394 64))
                                                           (display "\n")
                                                           (not x3))))
                                                       (begin
                                                         (write
                                                          '(funapp 1395 56))
                                                         (display "\n")
                                                         (or x7853 x7852)))))
                                                    (if x-cnd7851
                                                      (begin
                                                        (write
                                                         '(funapp 1397 55))
                                                        (display "\n")
                                                        (or x4 x2))
                                                      #f))
                                                   #f))
                                                #f))
                                             #f))
                                          #f))))
                                     (begin
                                       (write '(funapp 1403 38))
                                       (display "\n")
                                       (λ x7854 x7843)))))
                                  (begin
                                    (write '(funapp 1404 35))
                                    (display "\n")
                                    (λ x7855 x7842)))))
                               (begin
                                 (write '(funapp 1405 32))
                                 (display "\n")
                                 (λ x7856 x7841)))))
                            (begin
                              (write '(funapp 1406 29))
                              (display "\n")
                              (λ x7857 x7840)))))
                         (begin
                           (write '(funapp 1407 26))
                           (display "\n")
                           (λ x7858 x7839)))))
                      (begin
                        (write '(funapp 1408 23))
                        (display "\n")
                        (λ x7859 x7838)))))
                   (begin
                     (write '(funapp 1409 20))
                     (display "\n")
                     (λ x7860 x7837))))
                 (try
                  (letrec*
                   ((x7863
                     (begin (write '(funapp 1412 28)) (display "\n") (f)))
                    (x7861
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1415 33))
                          (display "\n")
                          (f #t))))
                      (letrec*
                       ((g7862
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 60))
                             (display "\n")
                             (f #f)))))
                       g7862))))
                   (begin
                     (write '(funapp 1417 20))
                     (display "\n")
                     (λ x7863 x7861))))
                 (sat-solve-7
                  (letrec*
                   ((x7892
                     (begin (write '(funapp 1420 28)) (display "\n") (p)))
                    (x7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7891
                           (begin
                             (write '(funapp 1425 34))
                             (display "\n")
                             (n1)))
                          (x7866
                           (letrec*
                            ((x7867
                              (letrec*
                               ((x7890
                                 (begin
                                   (write '(funapp 1430 40))
                                   (display "\n")
                                   (n2)))
                                (x7868
                                 (letrec*
                                  ((x7869
                                    (letrec*
                                     ((x7889
                                       (begin
                                         (write '(funapp 1435 46))
                                         (display "\n")
                                         (n3)))
                                      (x7870
                                       (letrec*
                                        ((x7871
                                          (letrec*
                                           ((x7888
                                             (begin
                                               (write '(funapp 1440 52))
                                               (display "\n")
                                               (n4)))
                                            (x7872
                                             (letrec*
                                              ((x7873
                                                (letrec*
                                                 ((x7887
                                                   (begin
                                                     (write '(funapp 1445 58))
                                                     (display "\n")
                                                     (n5)))
                                                  (x7874
                                                   (letrec*
                                                    ((x7875
                                                      (letrec*
                                                       ((x7886
                                                         (begin
                                                           (write
                                                            '(funapp 1450 64))
                                                           (display "\n")
                                                           (n6)))
                                                        (x7876
                                                         (letrec*
                                                          ((x7877
                                                            (letrec*
                                                             ((x7885
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1455
                                                                    70))
                                                                 (display "\n")
                                                                 (n7)))
                                                              (x7878
                                                               (letrec*
                                                                ((x7879
                                                                  (letrec*
                                                                   ((x7880
                                                                     (letrec*
                                                                      ((x7881
                                                                        (letrec*
                                                                         ((x7882
                                                                           (letrec*
                                                                            ((x7883
                                                                              (letrec*
                                                                               ((x7884
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1469
                                                                                      82))
                                                                                   (display
                                                                                    "\n")
                                                                                   (p
                                                                                    n1))))
                                                                               (begin
                                                                                 (write
                                                                                  '(funapp
                                                                                    1471
                                                                                    80))
                                                                                 (display
                                                                                  "\n")
                                                                                 (x7884
                                                                                  n2)))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1473
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (x7883
                                                                               n3)))))
                                                                         (begin
                                                                           (write
                                                                            '(funapp
                                                                              1475
                                                                              74))
                                                                           (display
                                                                            "\n")
                                                                           (x7882
                                                                            n4)))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           1477
                                                                           71))
                                                                        (display
                                                                         "\n")
                                                                        (x7881
                                                                         n5)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1479
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (x7880
                                                                      n6)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1481
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (x7879
                                                                   n7)))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1482
                                                                  62))
                                                               (display "\n")
                                                               (λ x7885
                                                                 x7878)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1483 59))
                                                            (display "\n")
                                                            (try x7877)))))
                                                       (begin
                                                         (write
                                                          '(funapp 1484 56))
                                                         (display "\n")
                                                         (λ x7886 x7876)))))
                                                    (begin
                                                      (write '(funapp 1485 53))
                                                      (display "\n")
                                                      (try x7875)))))
                                                 (begin
                                                   (write '(funapp 1486 50))
                                                   (display "\n")
                                                   (λ x7887 x7874)))))
                                              (begin
                                                (write '(funapp 1487 47))
                                                (display "\n")
                                                (try x7873)))))
                                           (begin
                                             (write '(funapp 1488 44))
                                             (display "\n")
                                             (λ x7888 x7872)))))
                                        (begin
                                          (write '(funapp 1489 41))
                                          (display "\n")
                                          (try x7871)))))
                                     (begin
                                       (write '(funapp 1490 38))
                                       (display "\n")
                                       (λ x7889 x7870)))))
                                  (begin
                                    (write '(funapp 1491 35))
                                    (display "\n")
                                    (try x7869)))))
                               (begin
                                 (write '(funapp 1492 32))
                                 (display "\n")
                                 (λ x7890 x7868)))))
                            (begin
                              (write '(funapp 1493 29))
                              (display "\n")
                              (try x7867)))))
                         (begin
                           (write '(funapp 1494 26))
                           (display "\n")
                           (λ x7891 x7866)))))
                      (begin
                        (write '(funapp 1495 23))
                        (display "\n")
                        (try x7865)))))
                   (begin
                     (write '(funapp 1496 20))
                     (display "\n")
                     (λ x7892 x7864)))))
                (letrec*
                 ((g7893
                   (begin
                     (write '(funapp 1497 34))
                     (display "\n")
                     (sat-solve-7 phi))))
                 g7893))))
             g7341))))
         g7339)))
      g7338))))
