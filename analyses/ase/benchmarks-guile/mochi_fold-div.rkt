(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7345
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7345
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
           ((x7349 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7349)))))
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
           ((g7352 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7353
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7354
                     (lambda (k j lst)
                       (letrec*
                        ((g7355
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7356
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7356))
                             lst))))
                        g7355))))
                   g7354)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7358
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7357)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7360
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7359)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7362
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7361)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7365 #t)) g7365)) g7270))))
                      (if x-cnd7364
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7363)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7368 #t)) g7368)) g7273))))
                      (if x-cnd7367
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7366)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7370
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7369)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7372
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7371)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7374
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7373)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7376
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7375)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7377
                     (lambda (k j v)
                       (letrec*
                        ((g7378
                          (letrec*
                           ((x-cnd7379
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7379
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7378))))
                   g7377)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7380
                     (lambda (k j v)
                       (letrec*
                        ((g7381
                          (letrec*
                           ((x-cnd7382
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7382
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7386
                                (letrec*
                                 ((x7387
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7387))))
                               (x7383
                                (letrec*
                                 ((x7385
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7384
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7385 k j x7384)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7386 x7383)))))))
                        g7381))))
                   g7380)))
               (any? (lambda (v) (letrec* ((g7388 #t)) g7388)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x7390
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7390)))))
                   g7389)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x-cnd7392
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7393
                                (letrec*
                                 ((x7394
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7394)))))
                              g7393))
                           g7288))))
                      (if x-cnd7392
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7391)))
               (meta (lambda (v) (letrec* ((g7395 v)) g7395)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7397
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7398
                             (letrec*
                              ((x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7400
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7401 x7400)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7399)))))
                           g7398))))
                      g7397))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7396
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7396)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7403
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7406
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7407 x7406)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7405)))))
                           g7404))))
                      g7403))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7402
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7402)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7409
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7412
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7413 x7412)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7411)))))
                           g7410))))
                      g7409))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7408
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7408)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7415
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7416
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7419
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7418
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7419 x7418)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7417)))))
                           g7416))))
                      g7415))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7414
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7414)))))
               (car
                (begin
                  (write '(funapp 278 17))
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
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7424)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7423)))))
                           g7422))))
                      g7421))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7420
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7420)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7426
                        (lambda (g7313)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7429)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7425)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7431
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7434
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7435 x7434)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7430)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7437
                        (lambda (g7322)
                          (letrec*
                           ((g7438
                             (letrec*
                              ((x7439
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7440)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7439)))))
                           g7438))))
                      g7437))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7436
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7436)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7442
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7443
                             (letrec*
                              ((x7444
                                (letrec*
                                 ((x7446
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7445
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7446 x7445)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7444)))))
                           g7443))))
                      g7442))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7441
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7441)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7447
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7447)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x7449
                        (letrec*
                         ((x7450
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7450)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7449)))))
                   g7448)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x7454
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7454))))
                    (g7452
                     (letrec*
                      ((x7455
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7455))))
                    (g7453
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7456
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7459
                           (letrec*
                            ((x7460
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7460))))
                          (x7457
                           (letrec*
                            ((x7458
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7458)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7459 x7457)))))))
                   g7453)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7462
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7462)))))
                   g7461)))
               (cadadr
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7466)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7465)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7464)))))
                   g7463)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7468
                        (letrec*
                         ((x7469
                           (letrec*
                            ((x7470
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7470)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7469)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7468)))))
                   g7467)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7474
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7474))))
                    (g7472
                     (letrec*
                      ((x7475
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7475))))
                    (g7473
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
                       ((g7476
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7477 res))
                       g7477))))
                   g7473)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7479
                        (letrec*
                         ((x7480
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7480)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7479)))))
                   g7478)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (letrec*
                         ((x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7484)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7483)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7482)))))
                   g7481)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7487))))
                    (g7486
                     (letrec*
                      ((x-cnd7488
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7488
                        #f
                        (letrec*
                         ((x-cnd7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7490 k)))))
                         (if x-cnd7489
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7491)))))))))
                   g7486)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7493)))))
                   g7492)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7496))))
                    (g7495
                     (letrec*
                      ((x-cnd7497
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7497
                        ""
                        (letrec*
                         ((x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7501))))
                          (x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7499)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7500 x7498)))))))
                   g7495)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7506))))
                    (g7504
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7507
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7507))))
                   g7504)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7509
                        (letrec*
                         ((x7510
                           (letrec*
                            ((x7511
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7511)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7510)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7509)))))
                   g7508)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7515))))
                    (g7513
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7516))))
                    (g7514
                     (letrec*
                      ((x-cnd7517
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7517
                        x
                        (letrec*
                         ((x7519
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7518
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7519 x7518)))))))
                   g7514)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7520
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7520)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x-cnd7522
                        (letrec*
                         ((x7523 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7523)))))
                      (if x-cnd7522
                        (letrec*
                         ((x7524 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7524)))
                        #f))))
                   g7521)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7527))))
                    (g7526
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7528
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7529 (if val7243 val7243 #f)))
                             g7529)))))
                       g7528))))
                   g7526)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7531
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7531 9)))))
                      (letrec*
                       ((g7532
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7533
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7533 10)))))
                            (letrec*
                             ((g7534
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7535
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7535 32))))))
                             g7534)))))
                       g7532))))
                   g7530)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7537
                        (letrec*
                         ((x7538
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7538)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7537)))))
                   g7536)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7541))))
                    (g7540
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7540)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7542 #f)) g7542)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7544
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7544)))))
                   g7543)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7547
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7547))))
                    (g7546
                     (letrec*
                      ((x-cnd7548
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7548
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7546)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7549
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7550
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7551
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7551
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7552
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7553
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7553
                                       (letrec*
                                        ((x-cnd7554
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7554
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7555
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7556
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7556
                                             (letrec*
                                              ((x-cnd7557
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7557
                                                (letrec*
                                                 ((x-cnd7558
                                                   (letrec*
                                                    ((x7560
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7559
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7560 x7559)))))
                                                 (if x-cnd7558
                                                   (letrec*
                                                    ((x7562
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7561
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7562 x7561)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7563
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7564
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7564
                                                (letrec*
                                                 ((x-cnd7565
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7565
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7566
                                                       (letrec*
                                                        ((x-cnd7567
                                                          (letrec*
                                                           ((x7568
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
                                                             (= x7568 n)))))
                                                        (if x-cnd7567
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7569
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
                                                                    ((g7570
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7571
                                                                           (letrec*
                                                                            ((x7573
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
                                                                             (x7572
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
                                                                               x7573
                                                                               x7572)))))
                                                                         (if x-cnd7571
                                                                           (letrec*
                                                                            ((x7574
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
                                                                               x7574)))
                                                                           #f)))))
                                                                    g7570))))
                                                                g7569))))
                                                           (letrec*
                                                            ((g7575
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7575))
                                                          #f))))
                                                     g7566))
                                                   #f))
                                                #f)))))
                                         g7563)))))
                                   g7555)))))
                             g7552)))))
                       g7550))))
                   g7549)))
               (cdaaar
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7579)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7578)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7577)))))
                   g7576)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (letrec*
                         ((x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7583)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7582)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7581)))))
                   g7580)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7584
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7584)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7587))))
                    (g7586
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7588
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7589 (if val7252 val7252 #f)))
                             g7589)))))
                       g7588))))
                   g7586)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7594))))
                    (g7592
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
                       ((g7595
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7596 res))
                       g7596))))
                   g7592)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7597
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7597)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7603
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7603))))
                   g7600)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7622)))))
                   g7619)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7626)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7628)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7630
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7630)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7634
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7634)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7637))))
                    (g7636
                     (letrec*
                      ((x-cnd7638
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7638
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7642))))
                          (x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7640)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7641 x7639)))))))
                   g7636)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7646)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7644)))))
                   g7643)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7654)))))
                   g7652)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7658)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7656)))))
                   g7655)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7664
                        (letrec*
                         ((g7665
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7665)
                        (letrec*
                         ((x-cnd7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7667)))))
                         (if x-cnd7666
                           (letrec*
                            ((g7668
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7669)))))
                            g7668)
                           (letrec*
                            ((x-cnd7670
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7671)))))
                            (if x-cnd7670
                              (letrec*
                               ((g7672
                                 (letrec*
                                  ((x7674
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7673
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7674 x7673)))))
                               g7672)
                              (letrec*
                               ((x-cnd7675
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7676)))))
                               (if x-cnd7675
                                 (letrec*
                                  ((g7677
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7680 x7679 x7678)))))
                                  g7677)
                                 (letrec*
                                  ((x-cnd7681
                                    (letrec*
                                     ((x7682
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7682)))))
                                  (if x-cnd7681
                                    (letrec*
                                     ((g7683
                                       (letrec*
                                        ((x7687
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7687 x7686 x7685 x7684)))))
                                     g7683)
                                    (letrec*
                                     ((x-cnd7688
                                       (letrec*
                                        ((x7689
                                          (letrec*
                                           ((x7690
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7690)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7689)))))
                                     (if x-cnd7688
                                       (letrec*
                                        ((g7691
                                          (letrec*
                                           ((x7697
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7693)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7697
                                              x7696
                                              x7695
                                              x7694
                                              x7692)))))
                                        g7691)
                                       (letrec*
                                        ((x-cnd7698
                                          (letrec*
                                           ((x7699
                                             (letrec*
                                              ((x7700
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7700)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7699)))))
                                        (if x-cnd7698
                                          (letrec*
                                           ((g7701
                                             (letrec*
                                              ((x7709
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7704
                                                (letrec*
                                                 ((x7705
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7705))))
                                               (x7702
                                                (letrec*
                                                 ((x7703
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7703)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7709
                                                 x7708
                                                 x7707
                                                 x7706
                                                 x7704
                                                 x7702)))))
                                           g7701)
                                          (letrec*
                                           ((x-cnd7710
                                             (letrec*
                                              ((x7711
                                                (letrec*
                                                 ((x7712
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7712)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7711)))))
                                           (if x-cnd7710
                                             (letrec*
                                              ((g7713
                                                (letrec*
                                                 ((x7723
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7718
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7719))))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7717))))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7715)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7723
                                                    x7722
                                                    x7721
                                                    x7720
                                                    x7718
                                                    x7716
                                                    x7714)))))
                                              g7713)
                                             (letrec*
                                              ((g7724
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7724)))))))))))))))))))
                   g7661)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7727))))
                    (g7726
                     (letrec*
                      ((x-cnd7728
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7728
                        #f
                        (letrec*
                         ((x-cnd7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7730 e)))))
                         (if x-cnd7729
                           l
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7731)))))))))
                   g7726)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7735)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7734)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7738)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7740)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7743))))
                    (g7742
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7742)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7745
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7745))))
                   g7744)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7749
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7750)))
                           #f))))
                      (letrec*
                       ((g7751
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7751))))
                   g7748)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7755)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7754)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x-cnd7757
                        (letrec*
                         ((x7758 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7758 c)))))
                      (if x-cnd7757
                        (letrec*
                         ((x7759 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7759)))
                        #f))))
                   g7756)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (letrec*
                      ((x-cnd7763
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7763
                        #f
                        (letrec*
                         ((x-cnd7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7765 k)))))
                         (if x-cnd7764
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7766)))))))))
                   g7761)))
               (not (lambda (x) (letrec* ((g7767 (if x #f #t))) g7767)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7768
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7768)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7772
                        #f
                        (letrec*
                         ((x-cnd7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7774 e)))))
                         (if x-cnd7773
                           l
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7775)))))))))
                   g7770)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7783
                             (letrec*
                              ((x-cnd7784
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7784
                                0
                                (letrec*
                                 ((x7785
                                   (letrec*
                                    ((x7786
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7786)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7785)))))))
                           g7783))))
                      (letrec*
                       ((g7787
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7787))))
                   g7781)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7793
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7793))))
                   g7790)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7795)))))
                   g7794)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (letrec*
                         ((x7798
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7798)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7797)))))
                   g7796)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        #f
                        (letrec*
                         ((x-cnd7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7804 k)))))
                         (if x-cnd7803
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7805)))))))))
                   g7800)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7807)))))
                   g7806)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7813)))))
                   g7810)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7815
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7815))))
                   g7814)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7821
                        #t
                        (letrec*
                         ((x-cnd7822
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7822
                           (letrec*
                            ((g7823
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7825))))
                             (g7824
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7826)))))
                            g7824)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7818)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7829))))
                    (g7828
                     (letrec*
                      ((x-cnd7830
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7830
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7828)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7836
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7836))))
                   g7833)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (letrec*
                            ((x7840
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7840)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7839)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7838)))))
                   g7837)))
               (newline (lambda () (letrec* ((g7841 #f)) g7841)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7845))))
                       (x7843
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7844 x7843)))))
                   g7842)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7848))))
                    (g7847
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7849)))))
                   g7847)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x7856
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7857)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7858
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7859
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7860 x7859)))))))
                   g7853)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7862
                        a
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7863)))))))
                   g7861)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7865
                        z
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1432 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1432 61))
                              (display "\n")
                              (f z x7868))))
                          (x7866
                           (begin
                             (write '(funapp 1433 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1434 26))
                           (display "\n")
                           (foldl f x7867 x7866)))))))
                   g7864)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1441 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7870
                         (letrec*
                          ((x-cnd7871
                            (begin
                              (write '(funapp 1445 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7871
                            n
                            (begin
                              (write '(funapp 1446 43))
                              (display "\n")
                              (randpos rand))))))
                       g7870))))
                   g7869)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7873
                        empty
                        (letrec*
                         ((x7876
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (randpos rand)))
                          (x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1460 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1460 55))
                              (display "\n")
                              (mk-list rand x7875)))))
                         (begin
                           (write '(funapp 1461 26))
                           (display "\n")
                           (cons x7876 x7874)))))))
                   g7872)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1467 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1467 58))
                        (display "\n")
                        (foldl / m x7878)))))
                   g7877))))
              (letrec*
               ((g7879
                 (letrec*
                  ((x7883
                    (begin
                      (write '(funapp 1473 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7884
                            (lambda (g7331 g7332 g7333)
                              (letrec*
                               ((g7885
                                 (letrec*
                                  ((x7886
                                    (letrec*
                                     ((x7889
                                       (begin
                                         (write '(funapp 1483 38))
                                         (display "\n")
                                         ((lambda (j7337 k7338 f7339)
                                            (letrec*
                                             ((g7890
                                               (lambda ()
                                                 (letrec*
                                                  ((g7891
                                                    (letrec*
                                                     ((x7892
                                                       (begin
                                                         (write
                                                          '(funapp 1490 58))
                                                         (display "\n")
                                                         (f7339))))
                                                     (begin
                                                       (write
                                                        '(funapp 1491 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7337
                                                        k7338
                                                        x7892)))))
                                                  g7891))))
                                             g7890))
                                          j7334
                                          k7335
                                          g7331)))
                                      (x7888
                                       (begin
                                         (write '(funapp 1500 44))
                                         (display "\n")
                                         (integer?/c j7334 k7335 g7332)))
                                      (x7887
                                       (begin
                                         (write '(funapp 1501 44))
                                         (display "\n")
                                         (integer?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 1502 36))
                                       (display "\n")
                                       (f7336 x7889 x7888 x7887)))))
                                  (begin
                                    (write '(funapp 1503 33))
                                    (display "\n")
                                    (real?/c j7334 k7335 x7886)))))
                               g7885))))
                          g7884))
                       (begin (write '(funapp 1506 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1507 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7882 (input))
                   (x7881 (input))
                   (x7880 (input)))
                  (begin
                    (write '(funapp 1512 19))
                    (display "\n")
                    (x7883 x7882 x7881 x7880)))))
               g7879))))
           g7353))))
       g7351)))
    g7350)))
