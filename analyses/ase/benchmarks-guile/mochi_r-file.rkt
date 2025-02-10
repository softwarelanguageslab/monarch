(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7342 #t)) g7342)))
    (meta (lambda (v) (letrec* ((g7343 v)) g7343)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7344
          (letrec*
           ((g7345
             (letrec*
              ((x-e7346 lst))
              (letrec*
               ((v1742 x-e7346))
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
                   ((x-cnd7347
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7347
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
           g7345)))
        g7344)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7348 (lambda (v) (letrec* ((g7349 v)) g7349)))) g7348)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7350
          (letrec*
           ((x7351 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7351)))))
        g7350))))
   (letrec*
    ((g7352
      (letrec*
       ((g7353
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
           ((g7354 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7355
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7356
                     (lambda (k j lst)
                       (letrec*
                        ((g7357
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7358
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7358))
                             lst))))
                        g7357))))
                   g7356)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7360
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7359)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7362
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7361)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7364
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7363)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7367 #t)) g7367)) g7270))))
                      (if x-cnd7366
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7365)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7370 #t)) g7370)) g7273))))
                      (if x-cnd7369
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7368)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7372
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7371)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7374
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7373)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7376
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7375)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7378
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
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
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7381
                             (begin
                               (write '(funapp 153 42))
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
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7384
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7388
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7389))))
                               (x7385
                                (letrec*
                                 ((x7387
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7386
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7387 k j x7386)))))
                              (begin
                                (write '(funapp 176 31))
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
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7392)))))
                   g7391)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7395
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7396)))))
                              g7395))
                           g7288))))
                      (if x-cnd7394
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7393)))
               (meta (lambda (v) (letrec* ((g7397 v)) g7397)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7399
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7400
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7402
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7403 x7402)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7401)))))
                           g7400))))
                      g7399))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7398
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7398)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7405
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7408
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7409 x7408)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7404)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7411
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7414
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7415 x7414)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7410)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7417
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7420
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7421 x7420)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7416)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7423
                        (lambda (g7309)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7426)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7422)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7428
                        (lambda (g7313)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7431)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7427)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7433
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7436
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7437 x7436)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7432)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7439
                        (lambda (g7322)
                          (letrec*
                           ((g7440
                             (letrec*
                              ((x7441
                                (letrec*
                                 ((x7442
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7442)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7441)))))
                           g7440))))
                      g7439))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7438
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7438)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7444
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7445
                             (letrec*
                              ((x7446
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7447
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7448 x7447)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7446)))))
                           g7445))))
                      g7444))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7443
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7443)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7449
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
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
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7452)))))
                      (begin
                        (write '(funapp 382 23))
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
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7456))))
                    (g7454
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7457))))
                    (g7455
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7458
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7461
                           (letrec*
                            ((x7462
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7462))))
                          (x7459
                           (letrec*
                            ((x7460
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7460)))))
                         (begin
                           (write '(funapp 398 26))
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
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7468)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7467)))))
                      (begin
                        (write '(funapp 414 23))
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7472)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7471)))))
                      (begin
                        (write '(funapp 425 23))
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
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7476))))
                    (g7474
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7477))))
                    (g7475
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
                       ((g7478
                         (begin
                           (write '(funapp 439 32))
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
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7482)))))
                      (begin
                        (write '(funapp 448 23))
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7486)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7485)))))
                      (begin
                        (write '(funapp 459 23))
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
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7489))))
                    (g7488
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7490
                        #f
                        (letrec*
                         ((x-cnd7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7492 k)))))
                         (if x-cnd7491
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
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
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
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
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7498))))
                    (g7497
                     (letrec*
                      ((x-cnd7499
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7499
                        ""
                        (letrec*
                         ((x7502
                           (letrec*
                            ((x7503
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7503))))
                          (x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7501)))))
                         (begin
                           (write '(funapp 496 26))
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
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7508))))
                    (g7506
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7509
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
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
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7513)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7512)))))
                      (begin
                        (write '(funapp 519 23))
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
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7517))))
                    (g7515
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7518))))
                    (g7516
                     (letrec*
                      ((x-cnd7519
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7519
                        x
                        (letrec*
                         ((x7521
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7520
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7521 x7520)))))))
                   g7516)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7522
                     (begin (write '(funapp 535 49)) (display "\n") '())))
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
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7525)))))
                      (if x-cnd7524
                        (letrec*
                         ((x7526 #\z))
                         (begin
                           (write '(funapp 544 48))
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
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7529))))
                    (g7528
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7530
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
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
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
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
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7535 10)))))
                            (letrec*
                             ((g7536
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7537
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
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
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7540)))))
                      (begin
                        (write '(funapp 597 23))
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
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7543))))
                    (g7542
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7542)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7544 #f)) g7544)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
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
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7549))))
                    (g7548
                     (letrec*
                      ((x-cnd7550
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7550
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7548)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7552
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7553
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7553
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7554
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7555
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7555
                                       (letrec*
                                        ((x-cnd7556
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7556
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7557
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7558
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7558
                                             (letrec*
                                              ((x-cnd7559
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7559
                                                (letrec*
                                                 ((x-cnd7560
                                                   (letrec*
                                                    ((x7562
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7561
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7562 x7561)))))
                                                 (if x-cnd7560
                                                   (letrec*
                                                    ((x7564
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7563
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7564 x7563)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7565
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7566
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7566
                                                (letrec*
                                                 ((x-cnd7567
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7567
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7568
                                                       (letrec*
                                                        ((x-cnd7569
                                                          (letrec*
                                                           ((x7570
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
                                                             (= x7570 n)))))
                                                        (if x-cnd7569
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7571
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
                                                                    ((g7572
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7573
                                                                           (letrec*
                                                                            ((x7575
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
                                                                             (x7574
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
                                                                               x7575
                                                                               x7574)))))
                                                                         (if x-cnd7573
                                                                           (letrec*
                                                                            ((x7576
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
                                                                               x7576)))
                                                                           #f)))))
                                                                    g7572))))
                                                                g7571))))
                                                           (letrec*
                                                            ((g7577
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7577))
                                                          #f))))
                                                     g7568))
                                                   #f))
                                                #f)))))
                                         g7565)))))
                                   g7557)))))
                             g7554)))))
                       g7552))))
                   g7551)))
               (cdaaar
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7581)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7580)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (caaddr
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7585)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7584)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7583)))))
                   g7582)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7586
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7586)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7589))))
                    (g7588
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7590
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7591 (if val7252 val7252 #f)))
                             g7591)))))
                       g7590))))
                   g7588)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7596))))
                    (g7594
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
                       ((g7597
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7598 res))
                       g7598))))
                   g7594)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7599
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7599)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7605
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7605))))
                   g7602)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7612)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7615)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7614)))))
                   g7613)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7624)))))
                   g7621)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7628)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7630)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7632
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7632)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7636
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7636)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7644))))
                          (x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7642)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7643 x7641)))))))
                   g7638)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7648)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7647)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7646)))))
                   g7645)))
               (cddadr
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7651)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7656)))))
                   g7654)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7660)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7659)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7658)))))
                   g7657)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7666
                        (letrec*
                         ((g7667
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7667)
                        (letrec*
                         ((x-cnd7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7669)))))
                         (if x-cnd7668
                           (letrec*
                            ((g7670
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7671)))))
                            g7670)
                           (letrec*
                            ((x-cnd7672
                              (letrec*
                               ((x7673
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7673)))))
                            (if x-cnd7672
                              (letrec*
                               ((g7674
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7675
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7676 x7675)))))
                               g7674)
                              (letrec*
                               ((x-cnd7677
                                 (letrec*
                                  ((x7678
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7678)))))
                               (if x-cnd7677
                                 (letrec*
                                  ((g7679
                                    (letrec*
                                     ((x7682
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7681
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7680
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7682 x7681 x7680)))))
                                  g7679)
                                 (letrec*
                                  ((x-cnd7683
                                    (letrec*
                                     ((x7684
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7684)))))
                                  (if x-cnd7683
                                    (letrec*
                                     ((g7685
                                       (letrec*
                                        ((x7689
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7688
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7689 x7688 x7687 x7686)))))
                                     g7685)
                                    (letrec*
                                     ((x-cnd7690
                                       (letrec*
                                        ((x7691
                                          (letrec*
                                           ((x7692
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7692)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7691)))))
                                     (if x-cnd7690
                                       (letrec*
                                        ((g7693
                                          (letrec*
                                           ((x7699
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7695)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7699
                                              x7698
                                              x7697
                                              x7696
                                              x7694)))))
                                        g7693)
                                       (letrec*
                                        ((x-cnd7700
                                          (letrec*
                                           ((x7701
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7702)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7701)))))
                                        (if x-cnd7700
                                          (letrec*
                                           ((g7703
                                             (letrec*
                                              ((x7711
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7710
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7706
                                                (letrec*
                                                 ((x7707
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7707))))
                                               (x7704
                                                (letrec*
                                                 ((x7705
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7705)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7711
                                                 x7710
                                                 x7709
                                                 x7708
                                                 x7706
                                                 x7704)))))
                                           g7703)
                                          (letrec*
                                           ((x-cnd7712
                                             (letrec*
                                              ((x7713
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7714)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7713)))))
                                           (if x-cnd7712
                                             (letrec*
                                              ((g7715
                                                (letrec*
                                                 ((x7725
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7724
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7720
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7721))))
                                                  (x7718
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7719))))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7717)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7725
                                                    x7724
                                                    x7723
                                                    x7722
                                                    x7720
                                                    x7718
                                                    x7716)))))
                                              g7715)
                                             (letrec*
                                              ((g7726
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7726)))))))))))))))))))
                   g7663)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7729))))
                    (g7728
                     (letrec*
                      ((x-cnd7730
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7730
                        #f
                        (letrec*
                         ((x-cnd7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7732 e)))))
                         (if x-cnd7731
                           l
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7733)))))))))
                   g7728)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7742
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7742)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7744)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7747
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7747))))
                   g7746)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7751
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7752)))
                           #f))))
                      (letrec*
                       ((g7753
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7753))))
                   g7750)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7757)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7755)))))
                   g7754)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x-cnd7759
                        (letrec*
                         ((x7760 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7760 c)))))
                      (if x-cnd7759
                        (letrec*
                         ((x7761 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7761)))
                        #f))))
                   g7758)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        #f
                        (letrec*
                         ((x-cnd7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7767 k)))))
                         (if x-cnd7766
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7768)))))))))
                   g7763)))
               (not (lambda (x) (letrec* ((g7769 (if x #f #t))) g7769)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7770
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7770)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        #f
                        (letrec*
                         ((x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7776 e)))))
                         (if x-cnd7775
                           l
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7777)))))))))
                   g7772)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7785
                             (letrec*
                              ((x-cnd7786
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7786
                                0
                                (letrec*
                                 ((x7787
                                   (letrec*
                                    ((x7788
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7788)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7787)))))))
                           g7785))))
                      (letrec*
                       ((g7789
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7789))))
                   g7783)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7795
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7795))))
                   g7792)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7797)))))
                   g7796)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (letrec*
                         ((x7800
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7799)))))
                   g7798)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7804
                        #f
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7806 k)))))
                         (if x-cnd7805
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7807)))))))))
                   g7802)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7809)))))
                   g7808)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7815)))))
                   g7812)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7817
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7817))))
                   g7816)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7823
                        #t
                        (letrec*
                         ((x-cnd7824
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7824
                           (letrec*
                            ((g7825
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7827))))
                             (g7826
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7828)))))
                            g7826)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7820)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7831))))
                    (g7830
                     (letrec*
                      ((x-cnd7832
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7832
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7830)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7838
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7838))))
                   g7835)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7840
                        (letrec*
                         ((x7841
                           (letrec*
                            ((x7842
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7842)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7841)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7840)))))
                   g7839)))
               (newline (lambda () (letrec* ((g7843 #f)) g7843)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (letrec*
                         ((x7847
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7847))))
                       (x7845
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7846 x7845)))))
                   g7844)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7851)))))
                   g7849)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x7858
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7859)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7860
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7862
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7861
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7862 x7861)))))))
                   g7855)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x-cnd7864
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7864
                        a
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7865)))))))
                   g7863)))
               (STATE/C
                (lambda (g7334 g7335 g7336)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1429 25))
                          (display "\n")
                          ((lambda (v7333)
                             (letrec*
                              ((g7868
                                (letrec*
                                 ((x-cnd7869
                                   (begin
                                     (write '(funapp 1433 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1433 48))
                                        (display "\n")
                                        'init)
                                      v7333))))
                                 (if x-cnd7869
                                   #t
                                   (letrec*
                                    ((x-cnd7870
                                      (begin
                                        (write '(funapp 1437 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1437 51))
                                           (display "\n")
                                           'opened)
                                         v7333))))
                                    (if x-cnd7870
                                      #t
                                      (letrec*
                                       ((x-cnd7871
                                         (begin
                                           (write '(funapp 1441 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1441 54))
                                              (display "\n")
                                              'closed)
                                            v7333))))
                                       (if x-cnd7871
                                         #t
                                         (begin
                                           (write '(funapp 1444 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1444 44))
                                              (display "\n")
                                              'ignore)
                                            v7333))))))))))
                              g7868))
                           g7336))))
                      (if x-cnd7867
                        g7336
                        (begin
                          (write '(blame g7334 1449 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7334)))))))
                   g7866)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7872
                     (begin (write '(funapp 1460 50)) (display "\n") (loop))))
                   g7872)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x-cnd7874
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1466 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7874
                        (begin
                          (write '(funapp 1467 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1467 44))
                          (display "\n")
                          'ignore)))))
                   g7873)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7875
                     (if x
                       (begin
                         (write '(funapp 1471 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7875)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x-cnd7877
                        (begin
                          (write '(funapp 1477 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1477 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7877
                        (letrec*
                         ((g7878
                           (begin
                             (write '(funapp 1479 41))
                             (display "\n")
                             'closed)))
                         g7878)
                        (letrec*
                         ((x-cnd7879
                           (begin
                             (write '(funapp 1481 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1481 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd7879
                           (letrec*
                            ((g7880
                              (begin
                                (write '(funapp 1483 44))
                                (display "\n")
                                'ignore)))
                            g7880)
                           (letrec*
                            ((g7881
                              (begin
                                (write '(funapp 1484 45))
                                (display "\n")
                                (loop)))
                             (g7882 0))
                            g7882)))))))
                   g7876)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g7883
                     (if x
                       (begin
                         (write '(funapp 1488 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g7883)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1492 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1492 61))
                        (display "\n")
                        (close_ y x7886))))
                    (g7885
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (begin
                             (write '(funapp 1496 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1496 57))
                           (display "\n")
                           (read_ y x7888)))))
                      (begin
                        (write '(funapp 1497 23))
                        (display "\n")
                        (f x y x7887)))))
                   g7885)))
               (next
                (lambda (st)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1504 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1504 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd7890
                        (begin
                          (write '(funapp 1505 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1505 44))
                          (display "\n")
                          'ignore)))))
                   g7889)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1512 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd7892
                        (letrec*
                         ((x7893
                           (begin
                             (write '(funapp 1514 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1514 54))
                           (display "\n")
                           (f x #t x7893)))
                        (begin
                          (write '(funapp 1515 25))
                          (display "\n")
                          (f x #f st))))))
                   g7891)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1522 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd7896
                        (begin
                          (write '(funapp 1523 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1523 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1523 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1523 63))
                             (display "\n")
                             'init))))))
                    (g7895
                     (begin (write '(funapp 1524 27)) (display "\n") 'unit)))
                   g7895))))
              (letrec*
               ((g7897
                 (letrec*
                  ((x7900
                    (begin
                      (write '(funapp 1530 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7901
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7902
                                 (letrec*
                                  ((x7903
                                    (letrec*
                                     ((x7905
                                       (begin
                                         (write '(funapp 1539 44))
                                         (display "\n")
                                         (integer?/c j7339 k7340 g7337)))
                                      (x7904
                                       (begin
                                         (write '(funapp 1540 44))
                                         (display "\n")
                                         (integer?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 1541 36))
                                       (display "\n")
                                       (f7341 x7905 x7904)))))
                                  (begin
                                    (write '(funapp 1542 33))
                                    (display "\n")
                                    (any/c j7339 k7340 x7903)))))
                               g7902))))
                          g7901))
                       (begin (write '(funapp 1545 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1546 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7899 (input))
                   (x7898 (input)))
                  (begin
                    (write '(funapp 1550 19))
                    (display "\n")
                    (x7900 x7899 x7898)))))
               g7897))))
           g7355))))
       g7353)))
    g7352)))
