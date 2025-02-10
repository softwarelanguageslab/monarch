(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7350
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7350
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
           ((x7354 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7354)))))
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
           ((g7357 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7358
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7359
                     (lambda (k j lst)
                       (letrec*
                        ((g7360
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7361
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7361))
                             lst))))
                        g7360))))
                   g7359)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7363
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7362)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7365
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7364)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7367
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7366)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7370 #t)) g7370)) g7270))))
                      (if x-cnd7369
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7368)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7373 #t)) g7373)) g7273))))
                      (if x-cnd7372
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7371)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7375
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7374)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7377
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7376)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7379
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7378)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7381
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7380)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7382
                     (lambda (k j v)
                       (letrec*
                        ((g7383
                          (letrec*
                           ((x-cnd7384
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7384
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7383))))
                   g7382)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7385
                     (lambda (k j v)
                       (letrec*
                        ((g7386
                          (letrec*
                           ((x-cnd7387
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7387
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7391
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7392))))
                               (x7388
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7389
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7390 k j x7389)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7391 x7388)))))))
                        g7386))))
                   g7385)))
               (any? (lambda (v) (letrec* ((g7393 #t)) g7393)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7394
                     (letrec*
                      ((x7395
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7395)))))
                   g7394)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7396
                     (letrec*
                      ((x-cnd7397
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7398
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7399)))))
                              g7398))
                           g7288))))
                      (if x-cnd7397
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7396)))
               (meta (lambda (v) (letrec* ((g7400 v)) g7400)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7402
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7403
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7405
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7406 x7405)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7404)))))
                           g7403))))
                      g7402))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7401
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7401)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7408
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7411
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7412 x7411)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7407)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7414
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7417
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7418 x7417)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7413)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7420
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7423
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7424 x7423)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7419)))))
               (car
                (begin
                  (write '(funapp 278 17))
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
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7429)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7425)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7431
                        (lambda (g7313)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7434)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7430)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7436
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7439
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7440 x7439)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7435)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7442
                        (lambda (g7322)
                          (letrec*
                           ((g7443
                             (letrec*
                              ((x7444
                                (letrec*
                                 ((x7445
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7445)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7444)))))
                           g7443))))
                      g7442))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7441
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7441)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7447
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7448
                             (letrec*
                              ((x7449
                                (letrec*
                                 ((x7451
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7450
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7451 x7450)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7449)))))
                           g7448))))
                      g7447))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7446
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7446)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7452
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7452)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7454
                        (letrec*
                         ((x7455
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7455)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7454)))))
                   g7453)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7459))))
                    (g7457
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7460))))
                    (g7458
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7461
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7464
                           (letrec*
                            ((x7465
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7465))))
                          (x7462
                           (letrec*
                            ((x7463
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7463)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7464 x7462)))))))
                   g7458)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7467)))))
                   g7466)))
               (cadadr
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7471)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7470)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7469)))))
                   g7468)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (letrec*
                         ((x7474
                           (letrec*
                            ((x7475
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7475)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7474)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7480))))
                    (g7478
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
                       ((g7481
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7482 res))
                       g7482))))
                   g7478)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (letrec*
                         ((x7485
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7485)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7484)))))
                   g7483)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7489)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7488)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7487)))))
                   g7486)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7492))))
                    (g7491
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7493
                        #f
                        (letrec*
                         ((x-cnd7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7495 k)))))
                         (if x-cnd7494
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7496)))))))))
                   g7491)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7498)))))
                   g7497)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7501))))
                    (g7500
                     (letrec*
                      ((x-cnd7502
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7502
                        ""
                        (letrec*
                         ((x7505
                           (letrec*
                            ((x7506
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7506))))
                          (x7503
                           (letrec*
                            ((x7504
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7504)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7505 x7503)))))))
                   g7500)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7512
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7512))))
                   g7509)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7514
                        (letrec*
                         ((x7515
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7516)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7515)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7514)))))
                   g7513)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7520))))
                    (g7518
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7521))))
                    (g7519
                     (letrec*
                      ((x-cnd7522
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7522
                        x
                        (letrec*
                         ((x7524
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7523
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7524 x7523)))))))
                   g7519)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7525
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7525)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x-cnd7527
                        (letrec*
                         ((x7528 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7528)))))
                      (if x-cnd7527
                        (letrec*
                         ((x7529 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7529)))
                        #f))))
                   g7526)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7533
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7534 (if val7243 val7243 #f)))
                             g7534)))))
                       g7533))))
                   g7531)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7536
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7536 9)))))
                      (letrec*
                       ((g7537
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7538
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7538 10)))))
                            (letrec*
                             ((g7539
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7540
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7540 32))))))
                             g7539)))))
                       g7537))))
                   g7535)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7542
                        (letrec*
                         ((x7543
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7543)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7542)))))
                   g7541)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7546))))
                    (g7545
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7545)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7547 #f)) g7547)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7549
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7549)))))
                   g7548)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7552))))
                    (g7551
                     (letrec*
                      ((x-cnd7553
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7553
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7551)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7555
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7556
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7556
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7557
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7558
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7558
                                       (letrec*
                                        ((x-cnd7559
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7559
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7560
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7561
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7561
                                             (letrec*
                                              ((x-cnd7562
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7562
                                                (letrec*
                                                 ((x-cnd7563
                                                   (letrec*
                                                    ((x7565
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7564
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7565 x7564)))))
                                                 (if x-cnd7563
                                                   (letrec*
                                                    ((x7567
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7566
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7567 x7566)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7568
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7569
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7569
                                                (letrec*
                                                 ((x-cnd7570
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7570
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7571
                                                       (letrec*
                                                        ((x-cnd7572
                                                          (letrec*
                                                           ((x7573
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
                                                             (= x7573 n)))))
                                                        (if x-cnd7572
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7574
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
                                                                    ((g7575
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7576
                                                                           (letrec*
                                                                            ((x7578
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
                                                                             (x7577
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
                                                                               x7578
                                                                               x7577)))))
                                                                         (if x-cnd7576
                                                                           (letrec*
                                                                            ((x7579
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
                                                                               x7579)))
                                                                           #f)))))
                                                                    g7575))))
                                                                g7574))))
                                                           (letrec*
                                                            ((g7580
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7580))
                                                          #f))))
                                                     g7571))
                                                   #f))
                                                #f)))))
                                         g7568)))))
                                   g7560)))))
                             g7557)))))
                       g7555))))
                   g7554)))
               (cdaaar
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7584)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7583)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (caaddr
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7588)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7587)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7586)))))
                   g7585)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7589
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7589)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7592))))
                    (g7591
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7593
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7594 (if val7252 val7252 #f)))
                             g7594)))))
                       g7593))))
                   g7591)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7599))))
                    (g7597
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
                       ((g7600
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7601 res))
                       g7601))))
                   g7597)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7602
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7602)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7608
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7608))))
                   g7605)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7615)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7627)))))
                   g7624)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7631)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7633)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7635
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7635)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7637)))))
                   g7636)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7639
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7639)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7647))))
                          (x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7645)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7646 x7644)))))))
                   g7641)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7649)))))
                   g7648)))
               (cddadr
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7654)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7653)))))
                   g7652)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7659)))))
                   g7657)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7663)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7662)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7661)))))
                   g7660)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7669
                        (letrec*
                         ((g7670
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7670)
                        (letrec*
                         ((x-cnd7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7672)))))
                         (if x-cnd7671
                           (letrec*
                            ((g7673
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7674)))))
                            g7673)
                           (letrec*
                            ((x-cnd7675
                              (letrec*
                               ((x7676
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7676)))))
                            (if x-cnd7675
                              (letrec*
                               ((g7677
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7678
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7679 x7678)))))
                               g7677)
                              (letrec*
                               ((x-cnd7680
                                 (letrec*
                                  ((x7681
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7681)))))
                               (if x-cnd7680
                                 (letrec*
                                  ((g7682
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7683
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7685 x7684 x7683)))))
                                  g7682)
                                 (letrec*
                                  ((x-cnd7686
                                    (letrec*
                                     ((x7687
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7687)))))
                                  (if x-cnd7686
                                    (letrec*
                                     ((g7688
                                       (letrec*
                                        ((x7692
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7691
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7690
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7689
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7692 x7691 x7690 x7689)))))
                                     g7688)
                                    (letrec*
                                     ((x-cnd7693
                                       (letrec*
                                        ((x7694
                                          (letrec*
                                           ((x7695
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7695)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7694)))))
                                     (if x-cnd7693
                                       (letrec*
                                        ((g7696
                                          (letrec*
                                           ((x7702
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7698)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7702
                                              x7701
                                              x7700
                                              x7699
                                              x7697)))))
                                        g7696)
                                       (letrec*
                                        ((x-cnd7703
                                          (letrec*
                                           ((x7704
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7705)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7704)))))
                                        (if x-cnd7703
                                          (letrec*
                                           ((g7706
                                             (letrec*
                                              ((x7714
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7713
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7712
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7711
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7709
                                                (letrec*
                                                 ((x7710
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7710))))
                                               (x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7708)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7714
                                                 x7713
                                                 x7712
                                                 x7711
                                                 x7709
                                                 x7707)))))
                                           g7706)
                                          (letrec*
                                           ((x-cnd7715
                                             (letrec*
                                              ((x7716
                                                (letrec*
                                                 ((x7717
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7717)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7716)))))
                                           (if x-cnd7715
                                             (letrec*
                                              ((g7718
                                                (letrec*
                                                 ((x7728
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7727
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7726
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7725
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7723
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7724))))
                                                  (x7721
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7722))))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7720)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7728
                                                    x7727
                                                    x7726
                                                    x7725
                                                    x7723
                                                    x7721
                                                    x7719)))))
                                              g7718)
                                             (letrec*
                                              ((g7729
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7729)))))))))))))))))))
                   g7666)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7732))))
                    (g7731
                     (letrec*
                      ((x-cnd7733
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7733
                        #f
                        (letrec*
                         ((x-cnd7734
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7735 e)))))
                         (if x-cnd7734
                           l
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7736)))))))))
                   g7731)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (cadddr
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7745
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7745)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7748))))
                    (g7747
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7747)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7750
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7750))))
                   g7749)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7754
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7755)))
                           #f))))
                      (letrec*
                       ((g7756
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7756))))
                   g7753)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7760)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7759)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7758)))))
                   g7757)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x-cnd7762
                        (letrec*
                         ((x7763 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7763 c)))))
                      (if x-cnd7762
                        (letrec*
                         ((x7764 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7764)))
                        #f))))
                   g7761)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        #f
                        (letrec*
                         ((x-cnd7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7770 k)))))
                         (if x-cnd7769
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7771)))))))))
                   g7766)))
               (not (lambda (x) (letrec* ((g7772 (if x #f #t))) g7772)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7773
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7773)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x-cnd7777
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7777
                        #f
                        (letrec*
                         ((x-cnd7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7779 e)))))
                         (if x-cnd7778
                           l
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7780)))))))))
                   g7775)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7788
                             (letrec*
                              ((x-cnd7789
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7789
                                0
                                (letrec*
                                 ((x7790
                                   (letrec*
                                    ((x7791
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7791)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7790)))))))
                           g7788))))
                      (letrec*
                       ((g7792
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7792))))
                   g7786)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7798
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7798))))
                   g7795)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7800)))))
                   g7799)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (letrec*
                         ((x7803
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7803)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7802)))))
                   g7801)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7806))))
                    (g7805
                     (letrec*
                      ((x-cnd7807
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7807
                        #f
                        (letrec*
                         ((x-cnd7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7809 k)))))
                         (if x-cnd7808
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7810)))))))))
                   g7805)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7812)))))
                   g7811)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7818)))))
                   g7815)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7820
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7820))))
                   g7819)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7826
                        #t
                        (letrec*
                         ((x-cnd7827
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7827
                           (letrec*
                            ((g7828
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7830))))
                             (g7829
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7831)))))
                            g7829)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7823)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7834))))
                    (g7833
                     (letrec*
                      ((x-cnd7835
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7835
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7833)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7839))))
                    (g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7841
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7841))))
                   g7838)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7843
                        (letrec*
                         ((x7844
                           (letrec*
                            ((x7845
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7845)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7844)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7843)))))
                   g7842)))
               (newline (lambda () (letrec* ((g7846 #f)) g7846)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7850))))
                       (x7848
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7849 x7848)))))
                   g7847)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7854)))))
                   g7852)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7859))))
                    (g7856
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7860))))
                    (g7857
                     (letrec*
                      ((x7861
                        (letrec*
                         ((x7862
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7862)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7861))))
                    (g7858
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7863
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7864
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7865 x7864)))))))
                   g7858)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7867
                        a
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7868)))))))
                   g7866)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7870
                        ys
                        (letrec*
                         ((x7873
                           (begin
                             (write '(funapp 1432 34))
                             (display "\n")
                             (car xs)))
                          (x7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1434 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1434 56))
                              (display "\n")
                              (mappend x7872 ys)))))
                         (begin
                           (write '(funapp 1435 26))
                           (display "\n")
                           (cons x7873 x7871)))))))
                   g7869)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1442 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7875
                        empty
                        (letrec*
                         ((x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1446 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1446 62))
                              (display "\n")
                              (f x7879))))
                          (x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1448 56))
                              (display "\n")
                              (map-append f x7877)))))
                         (begin
                           (write '(funapp 1449 26))
                           (display "\n")
                           (mappend x7878 x7876)))))))
                   g7874))))
              (letrec*
               ((g7880
                 (letrec*
                  ((x7884
                    (begin
                      (write '(funapp 1455 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7885
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7886
                                 (letrec*
                                  ((x7896
                                    (begin
                                      (write '(funapp 1462 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7887
                                    (letrec*
                                     ((x7890
                                       (begin
                                         (write '(funapp 1466 38))
                                         (display "\n")
                                         ((lambda (j7337 k7338 f7339)
                                            (letrec*
                                             ((g7891
                                               (lambda (g7336)
                                                 (letrec*
                                                  ((g7892
                                                    (letrec*
                                                     ((x7895
                                                       (begin
                                                         (write
                                                          '(funapp 1473 58))
                                                         (display "\n")
                                                         (listof any/c)))
                                                      (x7893
                                                       (letrec*
                                                        ((x7894
                                                          (begin
                                                            (write
                                                             '(funapp 1477 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7337
                                                             k7338
                                                             g7336))))
                                                        (begin
                                                          (write
                                                           '(funapp 1481 53))
                                                          (display "\n")
                                                          (f7339 x7894)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1482 50))
                                                       (display "\n")
                                                       (x7895
                                                        j7337
                                                        k7338
                                                        x7893)))))
                                                  g7892))))
                                             g7891))
                                          j7333
                                          k7334
                                          g7331)))
                                      (x7888
                                       (letrec*
                                        ((x7889
                                          (begin
                                            (write '(funapp 1490 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1491 39))
                                          (display "\n")
                                          (x7889 j7333 k7334 g7332)))))
                                     (begin
                                       (write '(funapp 1492 36))
                                       (display "\n")
                                       (f7335 x7890 x7888)))))
                                  (begin
                                    (write '(funapp 1493 33))
                                    (display "\n")
                                    (x7896 j7333 k7334 x7887)))))
                               g7886))))
                          g7885))
                       (begin (write '(funapp 1496 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1497 21))
                         (display "\n")
                         'importer)
                       map-append)))
                   (x7883 (input))
                   (x7882 (input)))
                  (begin
                    (write '(funapp 1501 19))
                    (display "\n")
                    (x7884 x7883 x7882))))
                (g7881
                 (letrec*
                  ((x7899
                    (begin
                      (write '(funapp 1505 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7900
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7901
                                 (letrec*
                                  ((x7907
                                    (begin
                                      (write '(funapp 1512 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7902
                                    (letrec*
                                     ((x7905
                                       (letrec*
                                        ((x7906
                                          (begin
                                            (write '(funapp 1517 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1518 39))
                                          (display "\n")
                                          (x7906 j7342 k7343 g7340))))
                                      (x7903
                                       (letrec*
                                        ((x7904
                                          (begin
                                            (write '(funapp 1521 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1522 39))
                                          (display "\n")
                                          (x7904 j7342 k7343 g7341)))))
                                     (begin
                                       (write '(funapp 1523 36))
                                       (display "\n")
                                       (f7344 x7905 x7903)))))
                                  (begin
                                    (write '(funapp 1524 33))
                                    (display "\n")
                                    (x7907 j7342 k7343 x7902)))))
                               g7901))))
                          g7900))
                       (begin (write '(funapp 1527 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1528 21))
                         (display "\n")
                         'importer)
                       mappend)))
                   (x7898 (input))
                   (x7897 (input)))
                  (begin
                    (write '(funapp 1532 19))
                    (display "\n")
                    (x7899 x7898 x7897)))))
               g7881))))
           g7358))))
       g7356)))
    g7355)))
