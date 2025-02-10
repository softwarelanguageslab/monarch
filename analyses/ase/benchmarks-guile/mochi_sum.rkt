(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7336 #t)) g7336)))
    (meta (lambda (v) (letrec* ((g7337 v)) g7337)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7338
          (letrec*
           ((g7339
             (letrec*
              ((x-e7340 lst))
              (letrec*
               ((v1742 x-e7340))
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
                   ((x-cnd7341
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7341
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
           g7339)))
        g7338)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7342 (lambda (v) (letrec* ((g7343 v)) g7343)))) g7342)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7344
          (letrec*
           ((x7345 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7345)))))
        g7344))))
   (letrec*
    ((g7346
      (letrec*
       ((g7347
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
           ((g7348 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7349
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7350
                     (lambda (k j lst)
                       (letrec*
                        ((g7351
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7352
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7352))
                             lst))))
                        g7351))))
                   g7350)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7354
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7353)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7356
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7355)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7358
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7357)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7361 #t)) g7361)) g7270))))
                      (if x-cnd7360
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7359)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7364 #t)) g7364)) g7273))))
                      (if x-cnd7363
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7362)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7366
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7365)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7368
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7367)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7370
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7369)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7372
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7371)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7373
                     (lambda (k j v)
                       (letrec*
                        ((g7374
                          (letrec*
                           ((x-cnd7375
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7375
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7374))))
                   g7373)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7376
                     (lambda (k j v)
                       (letrec*
                        ((g7377
                          (letrec*
                           ((x-cnd7378
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7378
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7382
                                (letrec*
                                 ((x7383
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7383))))
                               (x7379
                                (letrec*
                                 ((x7381
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7380
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7381 k j x7380)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7382 x7379)))))))
                        g7377))))
                   g7376)))
               (any? (lambda (v) (letrec* ((g7384 #t)) g7384)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x7386
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7386)))))
                   g7385)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7389
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7390)))))
                              g7389))
                           g7288))))
                      (if x-cnd7388
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7387)))
               (meta (lambda (v) (letrec* ((g7391 v)) g7391)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7393
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7394
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7397
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7396
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7397 x7396)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7395)))))
                           g7394))))
                      g7393))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7392
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7392)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7399
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7400
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7402
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7403 x7402)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7401)))))
                           g7400))))
                      g7399))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7398
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7398)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7405
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7408
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7409 x7408)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7404)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7411
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7414
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7415 x7414)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7410)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7417
                        (lambda (g7309)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7420)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7416)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7422
                        (lambda (g7313)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7425)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7421)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7427
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7430
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7431 x7430)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7426)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7433
                        (lambda (g7322)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7436
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7436)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7432)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7438
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7439
                             (letrec*
                              ((x7440
                                (letrec*
                                 ((x7442
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7441
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7442 x7441)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7440)))))
                           g7439))))
                      g7438))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7437
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7437)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7443
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7443)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x7445
                        (letrec*
                         ((x7446
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7446)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7445)))))
                   g7444)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x7450
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7450))))
                    (g7448
                     (letrec*
                      ((x7451
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7451))))
                    (g7449
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7452
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7455
                           (letrec*
                            ((x7456
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7456))))
                          (x7453
                           (letrec*
                            ((x7454
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7454)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7455 x7453)))))))
                   g7449)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7458
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7458)))))
                   g7457)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7460
                        (letrec*
                         ((x7461
                           (letrec*
                            ((x7462
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7462)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7461)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7460)))))
                   g7459)))
               (cdadar
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7466)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7465)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7464)))))
                   g7463)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7470
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7470))))
                    (g7468
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7471))))
                    (g7469
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
                       ((g7472
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7473 res))
                       g7473))))
                   g7469)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7475
                        (letrec*
                         ((x7476
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7476)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7475)))))
                   g7474)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7478
                        (letrec*
                         ((x7479
                           (letrec*
                            ((x7480
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7480)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7479)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7478)))))
                   g7477)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7483))))
                    (g7482
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7484
                        #f
                        (letrec*
                         ((x-cnd7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7486 k)))))
                         (if x-cnd7485
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7487)))))))))
                   g7482)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7489)))))
                   g7488)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7492))))
                    (g7491
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7493
                        ""
                        (letrec*
                         ((x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7497))))
                          (x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7495)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7496 x7494)))))))
                   g7491)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7502))))
                    (g7500
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7503
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7503))))
                   g7500)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7505
                        (letrec*
                         ((x7506
                           (letrec*
                            ((x7507
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7507)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7506)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7505)))))
                   g7504)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7512))))
                    (g7510
                     (letrec*
                      ((x-cnd7513
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7513
                        x
                        (letrec*
                         ((x7515
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7514
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7515 x7514)))))))
                   g7510)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7516
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7516)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x-cnd7518
                        (letrec*
                         ((x7519 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7519)))))
                      (if x-cnd7518
                        (letrec*
                         ((x7520 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7520)))
                        #f))))
                   g7517)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7523))))
                    (g7522
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7524
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7525 (if val7243 val7243 #f)))
                             g7525)))))
                       g7524))))
                   g7522)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7527
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7527 9)))))
                      (letrec*
                       ((g7528
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7529
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7529 10)))))
                            (letrec*
                             ((g7530
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7531
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7531 32))))))
                             g7530)))))
                       g7528))))
                   g7526)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7533
                        (letrec*
                         ((x7534
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7534)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7533)))))
                   g7532)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7537
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7537))))
                    (g7536
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7536)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7538 #f)) g7538)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7540)))))
                   g7539)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7543))))
                    (g7542
                     (letrec*
                      ((x-cnd7544
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7544
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7542)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7546
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7547
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7547
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7548
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7549
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7549
                                       (letrec*
                                        ((x-cnd7550
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7550
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7551
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7552
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7552
                                             (letrec*
                                              ((x-cnd7553
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7553
                                                (letrec*
                                                 ((x-cnd7554
                                                   (letrec*
                                                    ((x7556
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7555
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7556 x7555)))))
                                                 (if x-cnd7554
                                                   (letrec*
                                                    ((x7558
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7557
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7558 x7557)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7559
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7560
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7560
                                                (letrec*
                                                 ((x-cnd7561
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7561
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7562
                                                       (letrec*
                                                        ((x-cnd7563
                                                          (letrec*
                                                           ((x7564
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
                                                             (= x7564 n)))))
                                                        (if x-cnd7563
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7565
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
                                                                    ((g7566
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7567
                                                                           (letrec*
                                                                            ((x7569
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
                                                                             (x7568
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
                                                                               x7569
                                                                               x7568)))))
                                                                         (if x-cnd7567
                                                                           (letrec*
                                                                            ((x7570
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
                                                                               x7570)))
                                                                           #f)))))
                                                                    g7566))))
                                                                g7565))))
                                                           (letrec*
                                                            ((g7571
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7571))
                                                          #f))))
                                                     g7562))
                                                   #f))
                                                #f)))))
                                         g7559)))))
                                   g7551)))))
                             g7548)))))
                       g7546))))
                   g7545)))
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7575)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7574)))))
                      (begin
                        (write '(funapp 757 23))
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7579)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7578)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7577)))))
                   g7576)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7580
                     (begin
                       (write '(funapp 770 53))
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
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7583))))
                    (g7582
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7584
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7585 (if val7252 val7252 #f)))
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
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7589))))
                    (g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7590))))
                    (g7588
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
                       ((g7591
                         (begin
                           (write '(funapp 801 32))
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
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7593)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7599
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
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
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 823 23))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7606)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 834 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 843 23))
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
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 851 23))
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
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
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
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7622)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 870 23))
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
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7625))))
                    (g7624
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7624)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7626
                     (begin
                       (write '(funapp 878 53))
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
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7630
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7630)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7638))))
                          (x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7636)))))
                         (begin
                           (write '(funapp 900 26))
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 911 23))
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7646)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7645)))))
                      (begin
                        (write '(funapp 922 23))
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
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7654)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7653)))))
                      (begin
                        (write '(funapp 939 23))
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
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7660
                        (letrec*
                         ((g7661
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7661)
                        (letrec*
                         ((x-cnd7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7663)))))
                         (if x-cnd7662
                           (letrec*
                            ((g7664
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7665)))))
                            g7664)
                           (letrec*
                            ((x-cnd7666
                              (letrec*
                               ((x7667
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7667)))))
                            (if x-cnd7666
                              (letrec*
                               ((g7668
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7669
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7670 x7669)))))
                               g7668)
                              (letrec*
                               ((x-cnd7671
                                 (letrec*
                                  ((x7672
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7672)))))
                               (if x-cnd7671
                                 (letrec*
                                  ((g7673
                                    (letrec*
                                     ((x7676
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7676 x7675 x7674)))))
                                  g7673)
                                 (letrec*
                                  ((x-cnd7677
                                    (letrec*
                                     ((x7678
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7678)))))
                                  (if x-cnd7677
                                    (letrec*
                                     ((g7679
                                       (letrec*
                                        ((x7683
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7683 x7682 x7681 x7680)))))
                                     g7679)
                                    (letrec*
                                     ((x-cnd7684
                                       (letrec*
                                        ((x7685
                                          (letrec*
                                           ((x7686
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7686)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7685)))))
                                     (if x-cnd7684
                                       (letrec*
                                        ((g7687
                                          (letrec*
                                           ((x7693
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7688
                                             (letrec*
                                              ((x7689
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7689)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7693
                                              x7692
                                              x7691
                                              x7690
                                              x7688)))))
                                        g7687)
                                       (letrec*
                                        ((x-cnd7694
                                          (letrec*
                                           ((x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7696)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7695)))))
                                        (if x-cnd7694
                                          (letrec*
                                           ((g7697
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7700
                                                (letrec*
                                                 ((x7701
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7701))))
                                               (x7698
                                                (letrec*
                                                 ((x7699
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7699)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7705
                                                 x7704
                                                 x7703
                                                 x7702
                                                 x7700
                                                 x7698)))))
                                           g7697)
                                          (letrec*
                                           ((x-cnd7706
                                             (letrec*
                                              ((x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7708)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7707)))))
                                           (if x-cnd7706
                                             (letrec*
                                              ((g7709
                                                (letrec*
                                                 ((x7719
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7715))))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7713))))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7711)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7719
                                                    x7718
                                                    x7717
                                                    x7716
                                                    x7714
                                                    x7712
                                                    x7710)))))
                                              g7709)
                                             (letrec*
                                              ((g7720
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7720)))))))))))))))))))
                   g7657)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7723))))
                    (g7722
                     (letrec*
                      ((x-cnd7724
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7724
                        #f
                        (letrec*
                         ((x-cnd7725
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7726 e)))))
                         (if x-cnd7725
                           l
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7727)))))))))
                   g7722)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7730)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (cadddr
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7735)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7734)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7733)))))
                   g7732)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7736)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7739))))
                    (g7738
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7738)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7741
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7741))))
                   g7740)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7745
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7746)))
                           #f))))
                      (letrec*
                       ((g7747
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7747))))
                   g7744)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7751)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7750)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x-cnd7753
                        (letrec*
                         ((x7754 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7754 c)))))
                      (if x-cnd7753
                        (letrec*
                         ((x7755 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7755)))
                        #f))))
                   g7752)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (letrec*
                      ((x-cnd7759
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7759
                        #f
                        (letrec*
                         ((x-cnd7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7761 k)))))
                         (if x-cnd7760
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7762)))))))))
                   g7757)))
               (not (lambda (x) (letrec* ((g7763 (if x #f #t))) g7763)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7764
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7764)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        #f
                        (letrec*
                         ((x-cnd7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7770 e)))))
                         (if x-cnd7769
                           l
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7771)))))))))
                   g7766)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7779
                             (letrec*
                              ((x-cnd7780
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7780
                                0
                                (letrec*
                                 ((x7781
                                   (letrec*
                                    ((x7782
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7782)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7781)))))))
                           g7779))))
                      (letrec*
                       ((g7783
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7783))))
                   g7777)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7789
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7789))))
                   g7786)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7791)))))
                   g7790)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7800 k)))))
                         (if x-cnd7799
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7801)))))))))
                   g7796)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7809)))))
                   g7806)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7811
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7811))))
                   g7810)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7817
                        #t
                        (letrec*
                         ((x-cnd7818
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7818
                           (letrec*
                            ((g7819
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7821))))
                             (g7820
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7822)))))
                            g7820)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7814)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7826
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7824)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7832
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7832))))
                   g7829)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (letrec*
                         ((x7835
                           (letrec*
                            ((x7836
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7836)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7835)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7834)))))
                   g7833)))
               (newline (lambda () (letrec* ((g7837 #f)) g7837)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (letrec*
                         ((x7841
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7841))))
                       (x7839
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7840 x7839)))))
                   g7838)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7845)))))
                   g7843)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7853)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7854
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7855
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7856 x7855)))))))
                   g7849)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7858
                        a
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7859)))))))
                   g7857)))
               (sum
                (lambda (n)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7861
                        0
                        (letrec*
                         ((x7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1432 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1432 61))
                              (display "\n")
                              (sum x7863)))))
                         (begin
                           (write '(funapp 1433 26))
                           (display "\n")
                           (+ n x7862)))))))
                   g7860))))
              (letrec*
               ((g7864
                 (begin
                   (write '(funapp 1437 18))
                   (display "\n")
                   ((lambda (j7332 k7333 f7334)
                      (letrec*
                       ((g7865
                         (lambda (g7331)
                           (letrec*
                            ((g7866
                              (letrec*
                               ((x7335
                                 (begin
                                   (write '(funapp 1444 38))
                                   (display "\n")
                                   (integer?/c j7332 k7333 g7331))))
                               (letrec*
                                ((g7867
                                  (letrec*
                                   ((x7869
                                     (begin
                                       (write '(funapp 1449 36))
                                       (display "\n")
                                       ((lambda (n)
                                          (letrec*
                                           ((g7870
                                             (letrec*
                                              ((x7871
                                                (begin
                                                  (write '(funapp 1453 51))
                                                  (display "\n")
                                                  (>=/c n))))
                                              (begin
                                                (write '(funapp 1454 43))
                                                (display "\n")
                                                (and/c integer?/c x7871)))))
                                           g7870))
                                        x7335)))
                                    (x7868
                                     (begin
                                       (write '(funapp 1457 42))
                                       (display "\n")
                                       (f7334 x7335))))
                                   (begin
                                     (write '(funapp 1458 34))
                                     (display "\n")
                                     (x7869 j7332 k7333 x7868)))))
                                g7867))))
                            g7866))))
                       g7865))
                    (begin (write '(funapp 1462 18)) (display "\n") 'module)
                    (begin (write '(funapp 1463 18)) (display "\n") 'importer)
                    sum))))
               g7864))))
           g7349))))
       g7347)))
    g7346)))
