(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7351 #t)) g7351)))
    (meta (lambda (v) (letrec* ((g7352 v)) g7352)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7353
          (letrec*
           ((g7354
             (letrec*
              ((x-e7355 lst))
              (letrec*
               ((v1742 x-e7355))
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
                   ((x-cnd7356
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7356
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
           g7354)))
        g7353)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7357 (lambda (v) (letrec* ((g7358 v)) g7358)))) g7357)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7359
          (letrec*
           ((x7360 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7360)))))
        g7359))))
   (letrec*
    ((g7361
      (letrec*
       ((g7362
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
           ((g7363 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7364
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7365
                     (lambda (k j lst)
                       (letrec*
                        ((g7366
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7367
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7367))
                             lst))))
                        g7366))))
                   g7365)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7369
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7368)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7371
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7370)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7373
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7372)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7376 #t)) g7376)) g7270))))
                      (if x-cnd7375
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7374)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7379 #t)) g7379)) g7273))))
                      (if x-cnd7378
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7377)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7381
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7380)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7383
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7382)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7385
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7384)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7387
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7386)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7388
                     (lambda (k j v)
                       (letrec*
                        ((g7389
                          (letrec*
                           ((x-cnd7390
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7390
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7389))))
                   g7388)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7391
                     (lambda (k j v)
                       (letrec*
                        ((g7392
                          (letrec*
                           ((x-cnd7393
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7393
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7398))))
                               (x7394
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7395
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7396 k j x7395)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7397 x7394)))))))
                        g7392))))
                   g7391)))
               (any? (lambda (v) (letrec* ((g7399 #t)) g7399)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7400
                     (letrec*
                      ((x7401
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7401)))))
                   g7400)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7402
                     (letrec*
                      ((x-cnd7403
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7404
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7405)))))
                              g7404))
                           g7288))))
                      (if x-cnd7403
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7402)))
               (meta (lambda (v) (letrec* ((g7406 v)) g7406)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7408
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7411
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7412 x7411)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7407)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7414
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7417
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7418 x7417)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7413)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7420
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7423
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7424 x7423)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7419)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7426
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7429
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7430 x7429)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7425)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7432
                        (lambda (g7309)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7435)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7431)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7437
                        (lambda (g7313)
                          (letrec*
                           ((g7438
                             (letrec*
                              ((x7439
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7440)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7439)))))
                           g7438))))
                      g7437))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7436
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7436)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7442
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7443
                             (letrec*
                              ((x7444
                                (letrec*
                                 ((x7446
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7445
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7446 x7445)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7444)))))
                           g7443))))
                      g7442))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7441
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7441)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7448
                        (lambda (g7322)
                          (letrec*
                           ((g7449
                             (letrec*
                              ((x7450
                                (letrec*
                                 ((x7451
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7451)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7450)))))
                           g7449))))
                      g7448))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7447
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7447)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7453
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7454
                             (letrec*
                              ((x7455
                                (letrec*
                                 ((x7457
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7456
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7457 x7456)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7455)))))
                           g7454))))
                      g7453))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7452
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7452)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7458
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7458)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7460
                        (letrec*
                         ((x7461
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7461)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7460)))))
                   g7459)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7465))))
                    (g7463
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7466))))
                    (g7464
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7467
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7470
                           (letrec*
                            ((x7471
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7471))))
                          (x7468
                           (letrec*
                            ((x7469
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7469)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7470 x7468)))))))
                   g7464)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7475
                        (letrec*
                         ((x7476
                           (letrec*
                            ((x7477
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7477)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7476)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7475)))))
                   g7474)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7479
                        (letrec*
                         ((x7480
                           (letrec*
                            ((x7481
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7481)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7480)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7479)))))
                   g7478)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7485))))
                    (g7483
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7486))))
                    (g7484
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
                       ((g7487
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7488 res))
                       g7488))))
                   g7484)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7490
                        (letrec*
                         ((x7491
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7491)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7490)))))
                   g7489)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7493
                        (letrec*
                         ((x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7495)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7494)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7493)))))
                   g7492)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7498))))
                    (g7497
                     (letrec*
                      ((x-cnd7499
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7499
                        #f
                        (letrec*
                         ((x-cnd7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7501 k)))))
                         (if x-cnd7500
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7502)))))))))
                   g7497)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7504)))))
                   g7503)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7507))))
                    (g7506
                     (letrec*
                      ((x-cnd7508
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7508
                        ""
                        (letrec*
                         ((x7511
                           (letrec*
                            ((x7512
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7512))))
                          (x7509
                           (letrec*
                            ((x7510
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7510)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7511 x7509)))))))
                   g7506)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7516))))
                    (g7514
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7517))))
                    (g7515
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7518
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7518))))
                   g7515)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x7520
                        (letrec*
                         ((x7521
                           (letrec*
                            ((x7522
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7522)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7521)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7520)))))
                   g7519)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7526))))
                    (g7524
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7527))))
                    (g7525
                     (letrec*
                      ((x-cnd7528
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7528
                        x
                        (letrec*
                         ((x7530
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7529
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7530 x7529)))))))
                   g7525)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7531
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7531)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x-cnd7533
                        (letrec*
                         ((x7534 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7534)))))
                      (if x-cnd7533
                        (letrec*
                         ((x7535 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7535)))
                        #f))))
                   g7532)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7538))))
                    (g7537
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7539
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7540 (if val7243 val7243 #f)))
                             g7540)))))
                       g7539))))
                   g7537)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7542
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7542 9)))))
                      (letrec*
                       ((g7543
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7544
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7544 10)))))
                            (letrec*
                             ((g7545
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7546
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7546 32))))))
                             g7545)))))
                       g7543))))
                   g7541)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7548
                        (letrec*
                         ((x7549
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7549)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7548)))))
                   g7547)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7552))))
                    (g7551
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7551)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7553 #f)) g7553)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x7555
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7555)))))
                   g7554)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7556
                     (letrec*
                      ((x7558
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7558))))
                    (g7557
                     (letrec*
                      ((x-cnd7559
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7559
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7557)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7560
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7561
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7562
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7562
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7563
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7564
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7564
                                       (letrec*
                                        ((x-cnd7565
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7565
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7566
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7567
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7567
                                             (letrec*
                                              ((x-cnd7568
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7568
                                                (letrec*
                                                 ((x-cnd7569
                                                   (letrec*
                                                    ((x7571
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7570
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7571 x7570)))))
                                                 (if x-cnd7569
                                                   (letrec*
                                                    ((x7573
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7572
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7573 x7572)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7574
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7575
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7575
                                                (letrec*
                                                 ((x-cnd7576
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7576
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7577
                                                       (letrec*
                                                        ((x-cnd7578
                                                          (letrec*
                                                           ((x7579
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
                                                             (= x7579 n)))))
                                                        (if x-cnd7578
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7580
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
                                                                    ((g7581
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7582
                                                                           (letrec*
                                                                            ((x7584
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
                                                                             (x7583
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
                                                                               x7584
                                                                               x7583)))))
                                                                         (if x-cnd7582
                                                                           (letrec*
                                                                            ((x7585
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
                                                                               x7585)))
                                                                           #f)))))
                                                                    g7581))))
                                                                g7580))))
                                                           (letrec*
                                                            ((g7586
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7586))
                                                          #f))))
                                                     g7577))
                                                   #f))
                                                #f)))))
                                         g7574)))))
                                   g7566)))))
                             g7563)))))
                       g7561))))
                   g7560)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7588
                        (letrec*
                         ((x7589
                           (letrec*
                            ((x7590
                              (begin
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7590)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7589)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7588)))))
                   g7587)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (letrec*
                         ((x7593
                           (letrec*
                            ((x7594
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7594)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7593)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7592)))))
                   g7591)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7595
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7595)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7598))))
                    (g7597
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7599
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7600 (if val7252 val7252 #f)))
                             g7600)))))
                       g7599))))
                   g7597)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7605))))
                    (g7603
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
                       ((g7606
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7607 res))
                       g7607))))
                   g7603)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7608
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7608)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7614
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7614))))
                   g7611)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7621)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7619)))))
                   g7618)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7624)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7633)))))
                   g7630)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7637)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7639)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7641
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7641)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7643)))))
                   g7642)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7645
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7645)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7649
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7653))))
                          (x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7651)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7652 x7650)))))))
                   g7647)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7657)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7655)))))
                   g7654)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7659
                        (letrec*
                         ((x7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7661)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7660)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7659)))))
                   g7658)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7665)))))
                   g7663)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7669)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7668)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7667)))))
                   g7666)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x-cnd7675
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7675
                        (letrec*
                         ((g7676
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7676)
                        (letrec*
                         ((x-cnd7677
                           (letrec*
                            ((x7678
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7678)))))
                         (if x-cnd7677
                           (letrec*
                            ((g7679
                              (letrec*
                               ((x7680
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7680)))))
                            g7679)
                           (letrec*
                            ((x-cnd7681
                              (letrec*
                               ((x7682
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7682)))))
                            (if x-cnd7681
                              (letrec*
                               ((g7683
                                 (letrec*
                                  ((x7685
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7684
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7685 x7684)))))
                               g7683)
                              (letrec*
                               ((x-cnd7686
                                 (letrec*
                                  ((x7687
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7687)))))
                               (if x-cnd7686
                                 (letrec*
                                  ((g7688
                                    (letrec*
                                     ((x7691
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7690
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7689
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7691 x7690 x7689)))))
                                  g7688)
                                 (letrec*
                                  ((x-cnd7692
                                    (letrec*
                                     ((x7693
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7693)))))
                                  (if x-cnd7692
                                    (letrec*
                                     ((g7694
                                       (letrec*
                                        ((x7698
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7697
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7696
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7695
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7698 x7697 x7696 x7695)))))
                                     g7694)
                                    (letrec*
                                     ((x-cnd7699
                                       (letrec*
                                        ((x7700
                                          (letrec*
                                           ((x7701
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7701)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7700)))))
                                     (if x-cnd7699
                                       (letrec*
                                        ((g7702
                                          (letrec*
                                           ((x7708
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7707
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7706
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7703
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7704)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7708
                                              x7707
                                              x7706
                                              x7705
                                              x7703)))))
                                        g7702)
                                       (letrec*
                                        ((x-cnd7709
                                          (letrec*
                                           ((x7710
                                             (letrec*
                                              ((x7711
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7711)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7710)))))
                                        (if x-cnd7709
                                          (letrec*
                                           ((g7712
                                             (letrec*
                                              ((x7720
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7719
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7718
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7717
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7715
                                                (letrec*
                                                 ((x7716
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7716))))
                                               (x7713
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7714)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7720
                                                 x7719
                                                 x7718
                                                 x7717
                                                 x7715
                                                 x7713)))))
                                           g7712)
                                          (letrec*
                                           ((x-cnd7721
                                             (letrec*
                                              ((x7722
                                                (letrec*
                                                 ((x7723
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7723)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7722)))))
                                           (if x-cnd7721
                                             (letrec*
                                              ((g7724
                                                (letrec*
                                                 ((x7734
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7733
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7732
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7731
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7729
                                                   (letrec*
                                                    ((x7730
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7730))))
                                                  (x7727
                                                   (letrec*
                                                    ((x7728
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7728))))
                                                  (x7725
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7726)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7734
                                                    x7733
                                                    x7732
                                                    x7731
                                                    x7729
                                                    x7727
                                                    x7725)))))
                                              g7724)
                                             (letrec*
                                              ((g7735
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7735)))))))))))))))))))
                   g7672)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7738))))
                    (g7737
                     (letrec*
                      ((x-cnd7739
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7739
                        #f
                        (letrec*
                         ((x-cnd7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7741 e)))))
                         (if x-cnd7740
                           l
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7742)))))))))
                   g7737)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7746)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7745)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7750)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7749)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7751
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7751)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7754))))
                    (g7753
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7753)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7756
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7756))))
                   g7755)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7760
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7761)))
                           #f))))
                      (letrec*
                       ((g7762
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7762))))
                   g7759)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x-cnd7768
                        (letrec*
                         ((x7769 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7769 c)))))
                      (if x-cnd7768
                        (letrec*
                         ((x7770 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7770)))
                        #f))))
                   g7767)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        #f
                        (letrec*
                         ((x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7776 k)))))
                         (if x-cnd7775
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7777)))))))))
                   g7772)))
               (not (lambda (x) (letrec* ((g7778 (if x #f #t))) g7778)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7779)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        #f
                        (letrec*
                         ((x-cnd7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7785 e)))))
                         (if x-cnd7784
                           l
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7786)))))))))
                   g7781)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7790)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7789)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7794
                             (letrec*
                              ((x-cnd7795
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7795
                                0
                                (letrec*
                                 ((x7796
                                   (letrec*
                                    ((x7797
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7797)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7796)))))))
                           g7794))))
                      (letrec*
                       ((g7798
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7798))))
                   g7792)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7804
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7804))))
                   g7801)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7806)))))
                   g7805)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7809)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7808)))))
                   g7807)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7813
                        #f
                        (letrec*
                         ((x-cnd7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7815 k)))))
                         (if x-cnd7814
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7816)))))))))
                   g7811)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7818)))))
                   g7817)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7824)))))
                   g7821)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7826
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7826))))
                   g7825)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x-cnd7832
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7832
                        #t
                        (letrec*
                         ((x-cnd7833
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7833
                           (letrec*
                            ((g7834
                              (letrec*
                               ((x7836
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7836))))
                             (g7835
                              (letrec*
                               ((x7837
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7837)))))
                            g7835)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7829)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x-cnd7841
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7841
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7839)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7847
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7847))))
                   g7844)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7851)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7850)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7849)))))
                   g7848)))
               (newline (lambda () (letrec* ((g7852 #f)) g7852)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7856))))
                       (x7854
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7855 x7854)))))
                   g7853)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7860)))))
                   g7858)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7865))))
                    (g7862
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7866))))
                    (g7863
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7868)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7867))))
                    (g7864
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7869
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7870
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7871 x7870)))))))
                   g7864)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7873
                        a
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7874)))))))
                   g7872)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7876
                        z
                        (letrec*
                         ((x7879
                           (begin
                             (write '(funapp 1432 34))
                             (display "\n")
                             (car xs)))
                          (x7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1434 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1434 56))
                              (display "\n")
                              (foldr f z x7878)))))
                         (begin
                           (write '(funapp 1435 26))
                           (display "\n")
                           (f x7879 x7877)))))))
                   g7875)))
               (map
                (lambda (f xs)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7884
                           (begin
                             (write '(funapp 1444 34))
                             (display "\n")
                             (x ys)))
                          (x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1445 51))
                                (display "\n")
                                (f x))))
                            (begin
                              (write '(funapp 1445 59))
                              (display "\n")
                              (cons x7883 ys)))))
                         (begin
                           (write '(funapp 1446 26))
                           (display "\n")
                           (λ x7884 x7882)))))
                      (begin
                        (write '(funapp 1447 23))
                        (display "\n")
                        (foldr x7881 empty xs)))))
                   g7880))))
              (letrec*
               ((g7885
                 (letrec*
                  ((x7890
                    (begin
                      (write '(funapp 1453 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7891
                            (lambda (g7331 g7332 g7333)
                              (letrec*
                               ((g7892
                                 (letrec*
                                  ((x7893
                                    (letrec*
                                     ((x7897
                                       (begin
                                         (write '(funapp 1463 38))
                                         (display "\n")
                                         ((lambda (j7339 k7340 f7341)
                                            (letrec*
                                             ((g7898
                                               (lambda (g7337 g7338)
                                                 (letrec*
                                                  ((g7899
                                                    (letrec*
                                                     ((x7900
                                                       (letrec*
                                                        ((x7902
                                                          (begin
                                                            (write
                                                             '(funapp 1473 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7339
                                                             k7340
                                                             g7337)))
                                                         (x7901
                                                          (begin
                                                            (write
                                                             '(funapp 1478 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7339
                                                             k7340
                                                             g7338))))
                                                        (begin
                                                          (write
                                                           '(funapp 1482 53))
                                                          (display "\n")
                                                          (f7341
                                                           x7902
                                                           x7901)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1483 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7339
                                                        k7340
                                                        x7900)))))
                                                  g7899))))
                                             g7898))
                                          j7334
                                          k7335
                                          g7331)))
                                      (x7896
                                       (begin
                                         (write '(funapp 1489 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7332)))
                                      (x7894
                                       (letrec*
                                        ((x7895
                                          (begin
                                            (write '(funapp 1492 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1493 39))
                                          (display "\n")
                                          (x7895 j7334 k7335 g7333)))))
                                     (begin
                                       (write '(funapp 1494 36))
                                       (display "\n")
                                       (f7336 x7897 x7896 x7894)))))
                                  (begin
                                    (write '(funapp 1495 33))
                                    (display "\n")
                                    (any/c j7334 k7335 x7893)))))
                               g7892))))
                          g7891))
                       (begin (write '(funapp 1498 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1499 21))
                         (display "\n")
                         'importer)
                       foldr)))
                   (x7889 (input))
                   (x7888 (input))
                   (x7887 (input)))
                  (begin
                    (write '(funapp 1504 19))
                    (display "\n")
                    (x7890 x7889 x7888 x7887))))
                (g7886
                 (letrec*
                  ((x7905
                    (begin
                      (write '(funapp 1508 21))
                      (display "\n")
                      ((lambda (j7344 k7345 f7346)
                         (letrec*
                          ((g7906
                            (lambda (g7342 g7343)
                              (letrec*
                               ((g7907
                                 (letrec*
                                  ((x7916
                                    (begin
                                      (write '(funapp 1515 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7908
                                    (letrec*
                                     ((x7911
                                       (begin
                                         (write '(funapp 1519 38))
                                         (display "\n")
                                         ((lambda (j7348 k7349 f7350)
                                            (letrec*
                                             ((g7912
                                               (lambda (g7347)
                                                 (letrec*
                                                  ((g7913
                                                    (letrec*
                                                     ((x7914
                                                       (letrec*
                                                        ((x7915
                                                          (begin
                                                            (write
                                                             '(funapp 1529 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7348
                                                             k7349
                                                             g7347))))
                                                        (begin
                                                          (write
                                                           '(funapp 1533 53))
                                                          (display "\n")
                                                          (f7350 x7915)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1534 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7348
                                                        k7349
                                                        x7914)))))
                                                  g7913))))
                                             g7912))
                                          j7344
                                          k7345
                                          g7342)))
                                      (x7909
                                       (letrec*
                                        ((x7910
                                          (begin
                                            (write '(funapp 1542 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1543 39))
                                          (display "\n")
                                          (x7910 j7344 k7345 g7343)))))
                                     (begin
                                       (write '(funapp 1544 36))
                                       (display "\n")
                                       (f7346 x7911 x7909)))))
                                  (begin
                                    (write '(funapp 1545 33))
                                    (display "\n")
                                    (x7916 j7344 k7345 x7908)))))
                               g7907))))
                          g7906))
                       (begin (write '(funapp 1548 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1549 21))
                         (display "\n")
                         'importer)
                       map)))
                   (x7904 (input))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1553 19))
                    (display "\n")
                    (x7905 x7904 x7903)))))
               g7886))))
           g7364))))
       g7362)))
    g7361)))
