(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7338 #t)) g7338)))
    (meta (lambda (v) (letrec* ((g7339 v)) g7339)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7340
          (letrec*
           ((g7341
             (letrec*
              ((x-e7342 lst))
              (letrec*
               ((v1742 x-e7342))
               (cond
                ((begin (write '(funapp 21 18)) (display "\n") (null? v1742))
                 (letrec* () #f))
                ((begin (write '(funapp 22 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 24 24)) (display "\n") (car v1742)))
                   (vs
                    (begin
                      (write '(funapp 24 41))
                      (display "\n")
                      (cdr v1742))))
                  (letrec*
                   ((x-cnd7343
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7343
                     #t
                     (begin
                       (write '(funapp 27 37))
                       (display "\n")
                       (member v vs))))))
                (else
                 (begin
                   (write '(funapp 28 23))
                   (display "\n")
                   (error "no match found"))))))))
           g7341)))
        g7340)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7344 (lambda (v) (letrec* ((g7345 v)) g7345)))) g7344)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7346
          (letrec*
           ((x7347 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7347)))))
        g7346))))
   (letrec*
    ((g7348
      (letrec*
       ((g7349
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
           ((g7350 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7351
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7352
                     (lambda (k j lst)
                       (letrec*
                        ((g7353
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7354
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7354))
                             lst))))
                        g7353))))
                   g7352)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7356
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7355)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7358
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7357)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7360
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7359)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7363 #t)) g7363)) g7270))))
                      (if x-cnd7362
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7361)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7366 #t)) g7366)) g7273))))
                      (if x-cnd7365
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7364)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7368
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7367)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7370
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7369)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7372
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7371)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7374
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7373)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7375
                     (lambda (k j v)
                       (letrec*
                        ((g7376
                          (letrec*
                           ((x-cnd7377
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7377
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7376))))
                   g7375)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7378
                     (lambda (k j v)
                       (letrec*
                        ((g7379
                          (letrec*
                           ((x-cnd7380
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7380
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7384
                                (letrec*
                                 ((x7385
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7385))))
                               (x7381
                                (letrec*
                                 ((x7383
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7382
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7383 k j x7382)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7384 x7381)))))))
                        g7379))))
                   g7378)))
               (any? (lambda (v) (letrec* ((g7386 #t)) g7386)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x7388
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7388)))))
                   g7387)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7391
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7392)))))
                              g7391))
                           g7288))))
                      (if x-cnd7390
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7389)))
               (meta (lambda (v) (letrec* ((g7393 v)) g7393)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7395
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7396
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7398
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7399 x7398)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7397)))))
                           g7396))))
                      g7395))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7394
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7394)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7401
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7404
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7405 x7404)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7403)))))
                           g7402))))
                      g7401))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7400
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7400)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7407
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7410
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7411 x7410)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7409)))))
                           g7408))))
                      g7407))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7406
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7406)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7413
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7414
                             (letrec*
                              ((x7415
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7416
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7417 x7416)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7415)))))
                           g7414))))
                      g7413))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7412
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7412)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7419
                        (lambda (g7309)
                          (letrec*
                           ((g7420
                             (letrec*
                              ((x7421
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7422)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7421)))))
                           g7420))))
                      g7419))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7418
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7418)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7424
                        (lambda (g7313)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7427)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7426)))))
                           g7425))))
                      g7424))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7423
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7423)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7429
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7433
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7432
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7433 x7432)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7431)))))
                           g7430))))
                      g7429))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7428
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7428)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7435
                        (lambda (g7322)
                          (letrec*
                           ((g7436
                             (letrec*
                              ((x7437
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7438)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7437)))))
                           g7436))))
                      g7435))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7434
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7434)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7440
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7441
                             (letrec*
                              ((x7442
                                (letrec*
                                 ((x7444
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7443
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7444 x7443)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7442)))))
                           g7441))))
                      g7440))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7439
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7439)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7445
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7445)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x7447
                        (letrec*
                         ((x7448
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7448)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7447)))))
                   g7446)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7452))))
                    (g7450
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7453))))
                    (g7451
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7454
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7457
                           (letrec*
                            ((x7458
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7458))))
                          (x7455
                           (letrec*
                            ((x7456
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7456)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7457 x7455)))))))
                   g7451)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7460)))))
                   g7459)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7462
                        (letrec*
                         ((x7463
                           (letrec*
                            ((x7464
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7464)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7463)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7462)))))
                   g7461)))
               (cdadar
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7468)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7467)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7466)))))
                   g7465)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7472))))
                    (g7470
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7473))))
                    (g7471
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 436 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 437 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7474
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7475 res))
                       g7475))))
                   g7471)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7477
                        (letrec*
                         ((x7478
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7478)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7477)))))
                   g7476)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (letrec*
                         ((x7481
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7482)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7481)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7480)))))
                   g7479)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7485))))
                    (g7484
                     (letrec*
                      ((x-cnd7486
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7486
                        #f
                        (letrec*
                         ((x-cnd7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7488 k)))))
                         (if x-cnd7487
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7489)))))))))
                   g7484)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7491)))))
                   g7490)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7494))))
                    (g7493
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7495
                        ""
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7499))))
                          (x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7497)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7498 x7496)))))))
                   g7493)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7505
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7505))))
                   g7502)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7507
                        (letrec*
                         ((x7508
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7509)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7508)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7507)))))
                   g7506)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7515
                        x
                        (letrec*
                         ((x7517
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7516
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7517 x7516)))))))
                   g7512)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7518
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7518)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x-cnd7520
                        (letrec*
                         ((x7521 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7521)))))
                      (if x-cnd7520
                        (letrec*
                         ((x7522 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7522)))
                        #f))))
                   g7519)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x7525
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7525))))
                    (g7524
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7526
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7527 (if val7243 val7243 #f)))
                             g7527)))))
                       g7526))))
                   g7524)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7529
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7529 9)))))
                      (letrec*
                       ((g7530
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7531
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7531 10)))))
                            (letrec*
                             ((g7532
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7533
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7533 32))))))
                             g7532)))))
                       g7530))))
                   g7528)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (letrec*
                         ((x7536
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7536)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7539))))
                    (g7538
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7538)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7540 #f)) g7540)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7542)))))
                   g7541)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7545))))
                    (g7544
                     (letrec*
                      ((x-cnd7546
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7546
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7544)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7548
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7549
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7549
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7550
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7551
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7551
                                       (letrec*
                                        ((x-cnd7552
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7552
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7553
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7554
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7554
                                             (letrec*
                                              ((x-cnd7555
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7555
                                                (letrec*
                                                 ((x-cnd7556
                                                   (letrec*
                                                    ((x7558
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7557
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7558 x7557)))))
                                                 (if x-cnd7556
                                                   (letrec*
                                                    ((x7560
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7559
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7560 x7559)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7561
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7562
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7562
                                                (letrec*
                                                 ((x-cnd7563
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7563
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7564
                                                       (letrec*
                                                        ((x-cnd7565
                                                          (letrec*
                                                           ((x7566
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  695
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 697 60))
                                                             (display "\n")
                                                             (= x7566 n)))))
                                                        (if x-cnd7565
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7567
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          706
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7568
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7569
                                                                           (letrec*
                                                                            ((x7571
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   715
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7570
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   719
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 722
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7571
                                                                               x7570)))))
                                                                         (if x-cnd7569
                                                                           (letrec*
                                                                            ((x7572
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   728
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 731
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7572)))
                                                                           #f)))))
                                                                    g7568))))
                                                                g7567))))
                                                           (letrec*
                                                            ((g7573
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7573))
                                                          #f))))
                                                     g7564))
                                                   #f))
                                                #f)))))
                                         g7561)))))
                                   g7553)))))
                             g7550)))))
                       g7548))))
                   g7547)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (letrec*
                         ((x7576
                           (letrec*
                            ((x7577
                              (begin
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7577)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7576)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7575)))))
                   g7574)))
               (caaddr
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7581)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7580)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7579)))))
                   g7578)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7582
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7582)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7585))))
                    (g7584
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7586
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7587 (if val7252 val7252 #f)))
                             g7587)))))
                       g7586))))
                   g7584)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 798 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 799 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7593
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7594 res))
                       g7594))))
                   g7590)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7595
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7595)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7601
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7601))))
                   g7598)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7620)))))
                   g7617)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7626)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7628
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7628)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7632
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7632)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7636
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7640))))
                          (x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7638)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7639 x7637)))))))
                   g7634)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (cddadr
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7648)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7647)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7646)))))
                   g7645)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7652)))))
                   g7650)))
               (caadar
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7656)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7662
                        (letrec*
                         ((g7663
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7663)
                        (letrec*
                         ((x-cnd7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7665)))))
                         (if x-cnd7664
                           (letrec*
                            ((g7666
                              (letrec*
                               ((x7667
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7667)))))
                            g7666)
                           (letrec*
                            ((x-cnd7668
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7669)))))
                            (if x-cnd7668
                              (letrec*
                               ((g7670
                                 (letrec*
                                  ((x7672
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7671
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7672 x7671)))))
                               g7670)
                              (letrec*
                               ((x-cnd7673
                                 (letrec*
                                  ((x7674
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7674)))))
                               (if x-cnd7673
                                 (letrec*
                                  ((g7675
                                    (letrec*
                                     ((x7678
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7678 x7677 x7676)))))
                                  g7675)
                                 (letrec*
                                  ((x-cnd7679
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7680)))))
                                  (if x-cnd7679
                                    (letrec*
                                     ((g7681
                                       (letrec*
                                        ((x7685
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7685 x7684 x7683 x7682)))))
                                     g7681)
                                    (letrec*
                                     ((x-cnd7686
                                       (letrec*
                                        ((x7687
                                          (letrec*
                                           ((x7688
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7688)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7687)))))
                                     (if x-cnd7686
                                       (letrec*
                                        ((g7689
                                          (letrec*
                                           ((x7695
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7691)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7695
                                              x7694
                                              x7693
                                              x7692
                                              x7690)))))
                                        g7689)
                                       (letrec*
                                        ((x-cnd7696
                                          (letrec*
                                           ((x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7698)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7697)))))
                                        (if x-cnd7696
                                          (letrec*
                                           ((g7699
                                             (letrec*
                                              ((x7707
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7702
                                                (letrec*
                                                 ((x7703
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7703))))
                                               (x7700
                                                (letrec*
                                                 ((x7701
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7701)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7707
                                                 x7706
                                                 x7705
                                                 x7704
                                                 x7702
                                                 x7700)))))
                                           g7699)
                                          (letrec*
                                           ((x-cnd7708
                                             (letrec*
                                              ((x7709
                                                (letrec*
                                                 ((x7710
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7710)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7709)))))
                                           (if x-cnd7708
                                             (letrec*
                                              ((g7711
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7717))))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7715))))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7713)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7721
                                                    x7720
                                                    x7719
                                                    x7718
                                                    x7716
                                                    x7714
                                                    x7712)))))
                                              g7711)
                                             (letrec*
                                              ((g7722
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7722)))))))))))))))))))
                   g7659)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7725))))
                    (g7724
                     (letrec*
                      ((x-cnd7726
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7726
                        #f
                        (letrec*
                         ((x-cnd7727
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7728 e)))))
                         (if x-cnd7727
                           l
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7729)))))))))
                   g7724)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (cadddr
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7738)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7741))))
                    (g7740
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7740)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7743
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7743))))
                   g7742)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7747
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7748)))
                           #f))))
                      (letrec*
                       ((g7749
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7749))))
                   g7746)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7753)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x-cnd7755
                        (letrec*
                         ((x7756 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7756 c)))))
                      (if x-cnd7755
                        (letrec*
                         ((x7757 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7757)))
                        #f))))
                   g7754)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        #f
                        (letrec*
                         ((x-cnd7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7763 k)))))
                         (if x-cnd7762
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7764)))))))))
                   g7759)))
               (not (lambda (x) (letrec* ((g7765 (if x #f #t))) g7765)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7766)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x-cnd7770
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7770
                        #f
                        (letrec*
                         ((x-cnd7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7772 e)))))
                         (if x-cnd7771
                           l
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7773)))))))))
                   g7768)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7776)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7781
                             (letrec*
                              ((x-cnd7782
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7782
                                0
                                (letrec*
                                 ((x7783
                                   (letrec*
                                    ((x7784
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7784)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7783)))))))
                           g7781))))
                      (letrec*
                       ((g7785
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7785))))
                   g7779)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7791
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7791))))
                   g7788)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7793)))))
                   g7792)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7795)))))
                   g7794)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7800
                        #f
                        (letrec*
                         ((x-cnd7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7802 k)))))
                         (if x-cnd7801
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7803)))))))))
                   g7798)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7805)))))
                   g7804)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7811)))))
                   g7808)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7813
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7813))))
                   g7812)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x-cnd7819
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7819
                        #t
                        (letrec*
                         ((x-cnd7820
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7820
                           (letrec*
                            ((g7821
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7823))))
                             (g7822
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7824)))))
                            g7822)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7816)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7827))))
                    (g7826
                     (letrec*
                      ((x-cnd7828
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7828
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7826)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7834
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7834))))
                   g7831)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7838)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7837)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7836)))))
                   g7835)))
               (newline (lambda () (letrec* ((g7839 #f)) g7839)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (letrec*
                         ((x7843
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7843))))
                       (x7841
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7842 x7841)))))
                   g7840)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7847)))))
                   g7845)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7855)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7856
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7857
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7858 x7857)))))))
                   g7851)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7860
                        a
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7861)))))))
                   g7859)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7863
                        empty
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1432 34))
                             (display "\n")
                             (car l)))
                          (x7864
                           (letrec*
                            ((x7865
                              (letrec*
                               ((x7866
                                 (begin
                                   (write '(funapp 1435 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1435 64))
                                 (display "\n")
                                 (cdr x7866)))))
                            (begin
                              (write '(funapp 1436 29))
                              (display "\n")
                              (recursive-div2 x7865)))))
                         (begin
                           (write '(funapp 1437 26))
                           (display "\n")
                           (cons x7867 x7864)))))))
                   g7862)))
               (even-list/c
                (lambda (g7331 g7332 g7333)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1445 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7870
                                (letrec*
                                 ((x7871
                                   (letrec*
                                    ((x7872
                                      (begin
                                        (write '(funapp 1451 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1452 35))
                                      (display "\n")
                                      (cons/c any/c x7872)))))
                                 (begin
                                   (write '(funapp 1453 32))
                                   (display "\n")
                                   (or/c null? x7871)))))
                              g7870))
                           g7333))))
                      (if x-cnd7869
                        g7333
                        (begin
                          (write '(blame g7331 1458 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7331)))))))
                   g7868))))
              (letrec*
               ((g7873
                 (letrec*
                  ((x7875
                    (begin
                      (write '(funapp 1469 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7876
                            (lambda (g7334)
                              (letrec*
                               ((g7877
                                 (letrec*
                                  ((x7881
                                    (begin
                                      (write '(funapp 1476 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7878
                                    (letrec*
                                     ((x7879
                                       (letrec*
                                        ((x7880
                                          (begin
                                            (write '(funapp 1481 47))
                                            (display "\n")
                                            (even-list/c))))
                                        (begin
                                          (write '(funapp 1482 39))
                                          (display "\n")
                                          (x7880 j7335 k7336 g7334)))))
                                     (begin
                                       (write '(funapp 1483 36))
                                       (display "\n")
                                       (f7337 x7879)))))
                                  (begin
                                    (write '(funapp 1484 33))
                                    (display "\n")
                                    (x7881 j7335 k7336 x7878)))))
                               g7877))))
                          g7876))
                       (begin (write '(funapp 1487 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1488 21))
                         (display "\n")
                         'importer)
                       recursive-div2)))
                   (x7874 (input)))
                  (begin
                    (write '(funapp 1491 19))
                    (display "\n")
                    (x7875 x7874)))))
               g7873))))
           g7351))))
       g7349)))
    g7348)))
