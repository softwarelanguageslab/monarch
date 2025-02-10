(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7341 #t)) g7341)))
    (meta (lambda (v) (letrec* ((g7342 v)) g7342)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7343
          (letrec*
           ((g7344
             (letrec*
              ((x-e7345 lst))
              (letrec*
               ((v1742 x-e7345))
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
                   ((x-cnd7346
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7346
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
           g7344)))
        g7343)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7347 (lambda (v) (letrec* ((g7348 v)) g7348)))) g7347)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7349
          (letrec*
           ((x7350 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7350)))))
        g7349))))
   (letrec*
    ((g7351
      (letrec*
       ((g7352
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
           ((g7353 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7354
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7355
                     (lambda (k j lst)
                       (letrec*
                        ((g7356
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7357
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7357))
                             lst))))
                        g7356))))
                   g7355)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7359
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7358)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7361
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7360)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7363
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7362)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7366 #t)) g7366)) g7270))))
                      (if x-cnd7365
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7364)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7369 #t)) g7369)) g7273))))
                      (if x-cnd7368
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7367)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7371
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7370)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7373
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7372)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7375
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7374)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7377
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7376)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7378
                     (lambda (k j v)
                       (letrec*
                        ((g7379
                          (letrec*
                           ((x-cnd7380
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7380
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7379))))
                   g7378)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7381
                     (lambda (k j v)
                       (letrec*
                        ((g7382
                          (letrec*
                           ((x-cnd7383
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7383
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7387
                                (letrec*
                                 ((x7388
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7388))))
                               (x7384
                                (letrec*
                                 ((x7386
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7385
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7386 k j x7385)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7387 x7384)))))))
                        g7382))))
                   g7381)))
               (any? (lambda (v) (letrec* ((g7389 #t)) g7389)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x7391
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7391)))))
                   g7390)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x-cnd7393
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7394
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7395)))))
                              g7394))
                           g7288))))
                      (if x-cnd7393
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7392)))
               (meta (lambda (v) (letrec* ((g7396 v)) g7396)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7398
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7399
                             (letrec*
                              ((x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7401
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7402 x7401)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7400)))))
                           g7399))))
                      g7398))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7397
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7397)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7404
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7405
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7407
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7408 x7407)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7406)))))
                           g7405))))
                      g7404))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7403
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7403)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7410
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7411
                             (letrec*
                              ((x7412
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7413
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7414 x7413)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7412)))))
                           g7411))))
                      g7410))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7409
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7409)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7416
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7417
                             (letrec*
                              ((x7418
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7419
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7420 x7419)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7418)))))
                           g7417))))
                      g7416))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7415
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7415)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7422
                        (lambda (g7309)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7425)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7421)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7427
                        (lambda (g7313)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7430)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7426)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7432
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7436
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7435
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7436 x7435)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7431)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7438
                        (lambda (g7322)
                          (letrec*
                           ((g7439
                             (letrec*
                              ((x7440
                                (letrec*
                                 ((x7441
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7441)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7440)))))
                           g7439))))
                      g7438))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7437
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7437)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7443
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7444
                             (letrec*
                              ((x7445
                                (letrec*
                                 ((x7447
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7446
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7447 x7446)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7445)))))
                           g7444))))
                      g7443))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7442
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7442)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7448
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7448)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7450
                        (letrec*
                         ((x7451
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7451)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7450)))))
                   g7449)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7455
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7455))))
                    (g7453
                     (letrec*
                      ((x7456
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7456))))
                    (g7454
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7457
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7460
                           (letrec*
                            ((x7461
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7461))))
                          (x7458
                           (letrec*
                            ((x7459
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7459)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7460 x7458)))))))
                   g7454)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7463
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7463)))))
                   g7462)))
               (cadadr
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7467)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7466)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7465)))))
                   g7464)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x7469
                        (letrec*
                         ((x7470
                           (letrec*
                            ((x7471
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7471)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7470)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7469)))))
                   g7468)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7475
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7475))))
                    (g7473
                     (letrec*
                      ((x7476
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7476))))
                    (g7474
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
                       ((g7477
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7478 res))
                       g7478))))
                   g7474)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (letrec*
                         ((x7481
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7481)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7480)))))
                   g7479)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7483
                        (letrec*
                         ((x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7485)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7484)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7483)))))
                   g7482)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7488))))
                    (g7487
                     (letrec*
                      ((x-cnd7489
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7489
                        #f
                        (letrec*
                         ((x-cnd7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7491 k)))))
                         (if x-cnd7490
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7492)))))))))
                   g7487)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7494)))))
                   g7493)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7495
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7497))))
                    (g7496
                     (letrec*
                      ((x-cnd7498
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7498
                        ""
                        (letrec*
                         ((x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7502))))
                          (x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7500)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7501 x7499)))))))
                   g7496)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7506))))
                    (g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7508
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7508))))
                   g7505)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7509
                     (letrec*
                      ((x7510
                        (letrec*
                         ((x7511
                           (letrec*
                            ((x7512
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7512)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7511)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7510)))))
                   g7509)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7516))))
                    (g7514
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7517))))
                    (g7515
                     (letrec*
                      ((x-cnd7518
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7518
                        x
                        (letrec*
                         ((x7520
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7519
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7520 x7519)))))))
                   g7515)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7521
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7521)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7522
                     (letrec*
                      ((x-cnd7523
                        (letrec*
                         ((x7524 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7524)))))
                      (if x-cnd7523
                        (letrec*
                         ((x7525 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7525)))
                        #f))))
                   g7522)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x7528
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7528))))
                    (g7527
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7529
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7530 (if val7243 val7243 #f)))
                             g7530)))))
                       g7529))))
                   g7527)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7532
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7532 9)))))
                      (letrec*
                       ((g7533
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7534
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7534 10)))))
                            (letrec*
                             ((g7535
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7536
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7536 32))))))
                             g7535)))))
                       g7533))))
                   g7531)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7538
                        (letrec*
                         ((x7539
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7539)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7538)))))
                   g7537)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7542))))
                    (g7541
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7541)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7543 #f)) g7543)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7545)))))
                   g7544)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7546
                     (letrec*
                      ((x7548
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7548))))
                    (g7547
                     (letrec*
                      ((x-cnd7549
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7549
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7547)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7551
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7552
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7552
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7553
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7554
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7554
                                       (letrec*
                                        ((x-cnd7555
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7555
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7556
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7557
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7557
                                             (letrec*
                                              ((x-cnd7558
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7558
                                                (letrec*
                                                 ((x-cnd7559
                                                   (letrec*
                                                    ((x7561
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7560
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7561 x7560)))))
                                                 (if x-cnd7559
                                                   (letrec*
                                                    ((x7563
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7562
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7563 x7562)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7564
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7565
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7565
                                                (letrec*
                                                 ((x-cnd7566
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7566
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7567
                                                       (letrec*
                                                        ((x-cnd7568
                                                          (letrec*
                                                           ((x7569
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
                                                             (= x7569 n)))))
                                                        (if x-cnd7568
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7570
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
                                                                    ((g7571
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7572
                                                                           (letrec*
                                                                            ((x7574
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
                                                                             (x7573
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
                                                                               x7574
                                                                               x7573)))))
                                                                         (if x-cnd7572
                                                                           (letrec*
                                                                            ((x7575
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
                                                                               x7575)))
                                                                           #f)))))
                                                                    g7571))))
                                                                g7570))))
                                                           (letrec*
                                                            ((g7576
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7576))
                                                          #f))))
                                                     g7567))
                                                   #f))
                                                #f)))))
                                         g7564)))))
                                   g7556)))))
                             g7553)))))
                       g7551))))
                   g7550)))
               (cdaaar
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7580)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7579)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7578)))))
                   g7577)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7584)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7583)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7582)))))
                   g7581)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7585
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7585)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7588))))
                    (g7587
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7589
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7590 (if val7252 val7252 #f)))
                             g7590)))))
                       g7589))))
                   g7587)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7595))))
                    (g7593
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
                       ((g7596
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7597 res))
                       g7597))))
                   g7593)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7598
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7598)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7604
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7604))))
                   g7601)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7611)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7623)))))
                   g7620)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7629)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7631
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7631)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7635
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7635)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7639
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7643))))
                          (x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7641)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7642 x7640)))))))
                   g7637)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7645)))))
                   g7644)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7650)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7649)))))
                   g7648)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7655)))))
                   g7653)))
               (caadar
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7659)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7658)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7657)))))
                   g7656)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7665
                        (letrec*
                         ((g7666
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7666)
                        (letrec*
                         ((x-cnd7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7668)))))
                         (if x-cnd7667
                           (letrec*
                            ((g7669
                              (letrec*
                               ((x7670
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7670)))))
                            g7669)
                           (letrec*
                            ((x-cnd7671
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7672)))))
                            (if x-cnd7671
                              (letrec*
                               ((g7673
                                 (letrec*
                                  ((x7675
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7674
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7675 x7674)))))
                               g7673)
                              (letrec*
                               ((x-cnd7676
                                 (letrec*
                                  ((x7677
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7677)))))
                               (if x-cnd7676
                                 (letrec*
                                  ((g7678
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7680
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7681 x7680 x7679)))))
                                  g7678)
                                 (letrec*
                                  ((x-cnd7682
                                    (letrec*
                                     ((x7683
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7683)))))
                                  (if x-cnd7682
                                    (letrec*
                                     ((g7684
                                       (letrec*
                                        ((x7688
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7688 x7687 x7686 x7685)))))
                                     g7684)
                                    (letrec*
                                     ((x-cnd7689
                                       (letrec*
                                        ((x7690
                                          (letrec*
                                           ((x7691
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7691)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7690)))))
                                     (if x-cnd7689
                                       (letrec*
                                        ((g7692
                                          (letrec*
                                           ((x7698
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7694)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7698
                                              x7697
                                              x7696
                                              x7695
                                              x7693)))))
                                        g7692)
                                       (letrec*
                                        ((x-cnd7699
                                          (letrec*
                                           ((x7700
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7701)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7700)))))
                                        (if x-cnd7699
                                          (letrec*
                                           ((g7702
                                             (letrec*
                                              ((x7710
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7706))))
                                               (x7703
                                                (letrec*
                                                 ((x7704
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7704)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7710
                                                 x7709
                                                 x7708
                                                 x7707
                                                 x7705
                                                 x7703)))))
                                           g7702)
                                          (letrec*
                                           ((x-cnd7711
                                             (letrec*
                                              ((x7712
                                                (letrec*
                                                 ((x7713
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7713)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7712)))))
                                           (if x-cnd7711
                                             (letrec*
                                              ((g7714
                                                (letrec*
                                                 ((x7724
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7720))))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7718))))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7716)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7724
                                                    x7723
                                                    x7722
                                                    x7721
                                                    x7719
                                                    x7717
                                                    x7715)))))
                                              g7714)
                                             (letrec*
                                              ((g7725
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7725)))))))))))))))))))
                   g7662)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7728))))
                    (g7727
                     (letrec*
                      ((x-cnd7729
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7729
                        #f
                        (letrec*
                         ((x-cnd7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7731 e)))))
                         (if x-cnd7730
                           l
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7732)))))))))
                   g7727)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (cadddr
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7741)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7744))))
                    (g7743
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7743)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7746
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7746))))
                   g7745)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7750
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7751)))
                           #f))))
                      (letrec*
                       ((g7752
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7752))))
                   g7749)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7756)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7755)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x-cnd7758
                        (letrec*
                         ((x7759 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7759 c)))))
                      (if x-cnd7758
                        (letrec*
                         ((x7760 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7760)))
                        #f))))
                   g7757)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        #f
                        (letrec*
                         ((x-cnd7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7766 k)))))
                         (if x-cnd7765
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7767)))))))))
                   g7762)))
               (not (lambda (x) (letrec* ((g7768 (if x #f #t))) g7768)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7769)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        #f
                        (letrec*
                         ((x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7775 e)))))
                         (if x-cnd7774
                           l
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7776)))))))))
                   g7771)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7784
                             (letrec*
                              ((x-cnd7785
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7785
                                0
                                (letrec*
                                 ((x7786
                                   (letrec*
                                    ((x7787
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7787)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7786)))))))
                           g7784))))
                      (letrec*
                       ((g7788
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7788))))
                   g7782)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7794
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7794))))
                   g7791)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7796)))))
                   g7795)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7798)))))
                   g7797)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7803
                        #f
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7805 k)))))
                         (if x-cnd7804
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7806)))))))))
                   g7801)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7814)))))
                   g7811)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7816
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7816))))
                   g7815)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7822
                        #t
                        (letrec*
                         ((x-cnd7823
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7823
                           (letrec*
                            ((g7824
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7826))))
                             (g7825
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7827)))))
                            g7825)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7819)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7831
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7829)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7837
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7837))))
                   g7834)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7839
                        (letrec*
                         ((x7840
                           (letrec*
                            ((x7841
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7841)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7840)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7839)))))
                   g7838)))
               (newline (lambda () (letrec* ((g7842 #f)) g7842)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (letrec*
                         ((x7846
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7846))))
                       (x7844
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7845 x7844)))))
                   g7843)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7849))))
                    (g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7850)))))
                   g7848)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7858)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7859
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7860
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7861 x7860)))))))
                   g7854)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7863
                        a
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7864)))))))
                   g7862)))
               (lock (lambda (st) (letrec* ((g7865 1)) g7865)))
               (unlock (lambda (st) (letrec* ((g7866 0)) g7866)))
               (f
                (lambda (n st)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x-cnd7868
                        (begin
                          (write '(funapp 1430 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7868
                        (begin
                          (write '(funapp 1431 37))
                          (display "\n")
                          (lock st))
                        st))))
                   g7867)))
               (g
                (lambda (n st)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1438 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7870
                        (begin
                          (write '(funapp 1439 37))
                          (display "\n")
                          (unlock st))
                        st))))
                   g7869)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (f n 0))))
                      (begin
                        (write '(funapp 1444 55))
                        (display "\n")
                        (g n x7872)))))
                   g7871))))
              (letrec*
               ((g7873
                 (letrec*
                  ((x7875
                    (begin
                      (write '(funapp 1450 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7876
                            (lambda (g7331)
                              (letrec*
                               ((g7877
                                 (letrec*
                                  ((x7878
                                    (letrec*
                                     ((x7879
                                       (begin
                                         (write '(funapp 1459 44))
                                         (display "\n")
                                         (integer?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 1460 36))
                                       (display "\n")
                                       (f7334 x7879)))))
                                  (begin
                                    (write '(funapp 1461 33))
                                    (display "\n")
                                    ((lambda (g7338 g7339 g7340)
                                       (letrec*
                                        ((g7880
                                          (letrec*
                                           ((x-cnd7881
                                             (begin
                                               (write '(funapp 1466 42))
                                               (display "\n")
                                               ((lambda (v7337)
                                                  (letrec*
                                                   ((g7882
                                                     (begin
                                                       (write
                                                        '(funapp 1468 54))
                                                       (display "\n")
                                                       (eq? 0 v7337))))
                                                   g7882))
                                                g7340))))
                                           (if x-cnd7881
                                             g7340
                                             (begin
                                               (write '(blame g7338 1473 41))
                                               (display "\n")
                                               (error
                                                (format
                                                 "contract violation, blaming ~a~%"
                                                 g7338)))))))
                                        g7880))
                                     j7332
                                     k7333
                                     x7878)))))
                               g7877))))
                          g7876))
                       (begin (write '(funapp 1482 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1483 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7874 (input)))
                  (begin
                    (write '(funapp 1486 19))
                    (display "\n")
                    (x7875 x7874)))))
               g7873))))
           g7354))))
       g7352)))
    g7351)))
