(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7339 #t)) g7339)))
    (meta (lambda (v) (letrec* ((g7340 v)) g7340)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7341
          (letrec*
           ((g7342
             (letrec*
              ((x-e7343 lst))
              (letrec*
               ((v1742 x-e7343))
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
                   ((x-cnd7344
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7344
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
           g7342)))
        g7341)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7345 (lambda (v) (letrec* ((g7346 v)) g7346)))) g7345)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7347
          (letrec*
           ((x7348 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7348)))))
        g7347))))
   (letrec*
    ((g7349
      (letrec*
       ((g7350
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
           ((g7351 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7352
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7353
                     (lambda (k j lst)
                       (letrec*
                        ((g7354
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7355
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7355))
                             lst))))
                        g7354))))
                   g7353)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7357
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7356)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7359
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7358)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7361
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7360)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7364 #t)) g7364)) g7270))))
                      (if x-cnd7363
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7362)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7367 #t)) g7367)) g7273))))
                      (if x-cnd7366
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7365)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7369
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7368)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7371
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7370)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7373
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7372)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7374
                     (lambda (k j v)
                       (letrec*
                        ((g7375
                          (letrec*
                           ((x-cnd7376
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7376
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7375))))
                   g7374)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7377
                     (lambda (k j v)
                       (letrec*
                        ((g7378
                          (letrec*
                           ((x-cnd7379
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7379
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7383
                                (letrec*
                                 ((x7384
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7384))))
                               (x7380
                                (letrec*
                                 ((x7382
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7381
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7382 k j x7381)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7383 x7380)))))))
                        g7378))))
                   g7377)))
               (any? (lambda (v) (letrec* ((g7385 #t)) g7385)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x7387
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7387)))))
                   g7386)))
               (nonzero?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7390
                                (letrec*
                                 ((x7391
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7391)))))
                              g7390))
                           g7285))))
                      (if x-cnd7389
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7388)))
               (meta (lambda (v) (letrec* ((g7392 v)) g7392)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7394
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7395
                             (letrec*
                              ((x7396
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7397
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7398 x7397)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7396)))))
                           g7395))))
                      g7394))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7393
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7393)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7400
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7403
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7404 x7403)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7399)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7406
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7409
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7410 x7409)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7405)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7412
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7415
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7416 x7415)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7411)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7418
                        (lambda (g7306)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7421)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7420)))))
                           g7419))))
                      g7418))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7417
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7417)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7423
                        (lambda (g7310)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7426)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7422)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7428
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7431
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7432 x7431)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7427)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7434
                        (lambda (g7319)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7437)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7436)))))
                           g7435))))
                      g7434))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7433
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7433)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7439
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7440
                             (letrec*
                              ((x7441
                                (letrec*
                                 ((x7443
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7442
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7443 x7442)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7441)))))
                           g7440))))
                      g7439))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7438
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7438)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7444
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7444)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x7446
                        (letrec*
                         ((x7447
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7447)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7446)))))
                   g7445)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x7451
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7451))))
                    (g7449
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7452))))
                    (g7450
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7453
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7457))))
                          (x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7455)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7456 x7454)))))))
                   g7450)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7459)))))
                   g7458)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x7461
                        (letrec*
                         ((x7462
                           (letrec*
                            ((x7463
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7463)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7462)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7461)))))
                   g7460)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7467)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7466)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7465)))))
                   g7464)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7471))))
                    (g7469
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7472))))
                    (g7470
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 428 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 429 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7473
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7474 res))
                       g7474))))
                   g7470)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7476
                        (letrec*
                         ((x7477
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7477)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7476)))))
                   g7475)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7481)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7480)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7479)))))
                   g7478)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7484))))
                    (g7483
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7485
                        #f
                        (letrec*
                         ((x-cnd7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7487 k)))))
                         (if x-cnd7486
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7488)))))))))
                   g7483)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7490)))))
                   g7489)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7493))))
                    (g7492
                     (letrec*
                      ((x-cnd7494
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7494
                        ""
                        (letrec*
                         ((x7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7498))))
                          (x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7496)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7497 x7495)))))))
                   g7492)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7502))))
                    (g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7504
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7504))))
                   g7501)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7506
                        (letrec*
                         ((x7507
                           (letrec*
                            ((x7508
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7508)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7507)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7506)))))
                   g7505)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7509
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7512))))
                    (g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x-cnd7514
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7514
                        x
                        (letrec*
                         ((x7516
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7515
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7516 x7515)))))))
                   g7511)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7517
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7517)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x-cnd7519
                        (letrec*
                         ((x7520 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7520)))))
                      (if x-cnd7519
                        (letrec*
                         ((x7521 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7521)))
                        #f))))
                   g7518)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7522
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7524))))
                    (g7523
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7525
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7526 (if val7243 val7243 #f)))
                             g7526)))))
                       g7525))))
                   g7523)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7528
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7528 9)))))
                      (letrec*
                       ((g7529
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7530
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7530 10)))))
                            (letrec*
                             ((g7531
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7532
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7532 32))))))
                             g7531)))))
                       g7529))))
                   g7527)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7534
                        (letrec*
                         ((x7535
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7535)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7534)))))
                   g7533)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7538))))
                    (g7537
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7537)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7539 #f)) g7539)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7541)))))
                   g7540)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7544
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7544))))
                    (g7543
                     (letrec*
                      ((x-cnd7545
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7545
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7543)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7546
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7547
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7548
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7548
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7549
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7550
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7550
                                       (letrec*
                                        ((x-cnd7551
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7551
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7552
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7553
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7553
                                             (letrec*
                                              ((x-cnd7554
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7554
                                                (letrec*
                                                 ((x-cnd7555
                                                   (letrec*
                                                    ((x7557
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7556
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7557 x7556)))))
                                                 (if x-cnd7555
                                                   (letrec*
                                                    ((x7559
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7558
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7559 x7558)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7560
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7561
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7561
                                                (letrec*
                                                 ((x-cnd7562
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7562
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7563
                                                       (letrec*
                                                        ((x-cnd7564
                                                          (letrec*
                                                           ((x7565
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  687
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 689 60))
                                                             (display "\n")
                                                             (= x7565 n)))))
                                                        (if x-cnd7564
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7566
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          698
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7567
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7568
                                                                           (letrec*
                                                                            ((x7570
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   707
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7569
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   711
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 714
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7570
                                                                               x7569)))))
                                                                         (if x-cnd7568
                                                                           (letrec*
                                                                            ((x7571
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   720
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 723
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7571)))
                                                                           #f)))))
                                                                    g7567))))
                                                                g7566))))
                                                           (letrec*
                                                            ((g7572
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7572))
                                                          #f))))
                                                     g7563))
                                                   #f))
                                                #f)))))
                                         g7560)))))
                                   g7552)))))
                             g7549)))))
                       g7547))))
                   g7546)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((x7574
                        (letrec*
                         ((x7575
                           (letrec*
                            ((x7576
                              (begin
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7576)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7575)))))
                      (begin
                        (write '(funapp 749 23))
                        (display "\n")
                        (cdr x7574)))))
                   g7573)))
               (caaddr
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
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7580)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7579)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7578)))))
                   g7577)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7581
                     (begin
                       (write '(funapp 762 53))
                       (display "\n")
                       (eq? x y))))
                   g7581)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7584))))
                    (g7583
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7585
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7586 (if val7252 val7252 #f)))
                             g7586)))))
                       g7585))))
                   g7583)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 790 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 791 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7592
                         (begin
                           (write '(funapp 793 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7593 res))
                       g7593))))
                   g7589)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7594
                     (begin
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7594)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7600
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7600))))
                   g7597)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (begin
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 826 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (caadr
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
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
                        (display "\n")
                        (not x7619)))))
                   g7616)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7623)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7625)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7627
                     (begin
                       (write '(funapp 870 53))
                       (display "\n")
                       (memq e l))))
                   g7627)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (begin
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7631
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7631)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7639))))
                          (x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7637)))))
                         (begin
                           (write '(funapp 892 26))
                           (display "\n")
                           (append x7638 x7636)))))))
                   g7633)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 903 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (cddadr
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 914 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
                        (display "\n")
                        (= 1 x7651)))))
                   g7649)))
               (caadar
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7655)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 931 23))
                        (display "\n")
                        (car x7653)))))
                   g7652)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7661
                        (letrec*
                         ((g7662
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7662)
                        (letrec*
                         ((x-cnd7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7664)))))
                         (if x-cnd7663
                           (letrec*
                            ((g7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7666)))))
                            g7665)
                           (letrec*
                            ((x-cnd7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7668)))))
                            (if x-cnd7667
                              (letrec*
                               ((g7669
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7670
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7671 x7670)))))
                               g7669)
                              (letrec*
                               ((x-cnd7672
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7673)))))
                               (if x-cnd7672
                                 (letrec*
                                  ((g7674
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7677 x7676 x7675)))))
                                  g7674)
                                 (letrec*
                                  ((x-cnd7678
                                    (letrec*
                                     ((x7679
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7679)))))
                                  (if x-cnd7678
                                    (letrec*
                                     ((g7680
                                       (letrec*
                                        ((x7684
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
                                          (display "\n")
                                          (proc x7684 x7683 x7682 x7681)))))
                                     g7680)
                                    (letrec*
                                     ((x-cnd7685
                                       (letrec*
                                        ((x7686
                                          (letrec*
                                           ((x7687
                                             (begin
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7687)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7686)))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((g7688
                                          (letrec*
                                           ((x7694
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7689
                                             (letrec*
                                              ((x7690
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7690)))))
                                           (begin
                                             (write '(funapp 1011 44))
                                             (display "\n")
                                             (proc
                                              x7694
                                              x7693
                                              x7692
                                              x7691
                                              x7689)))))
                                        g7688)
                                       (letrec*
                                        ((x-cnd7695
                                          (letrec*
                                           ((x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7697)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7696)))))
                                        (if x-cnd7695
                                          (letrec*
                                           ((g7698
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7701
                                                (letrec*
                                                 ((x7702
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7702))))
                                               (x7699
                                                (letrec*
                                                 ((x7700
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7700)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (proc
                                                 x7706
                                                 x7705
                                                 x7704
                                                 x7703
                                                 x7701
                                                 x7699)))))
                                           g7698)
                                          (letrec*
                                           ((x-cnd7707
                                             (letrec*
                                              ((x7708
                                                (letrec*
                                                 ((x7709
                                                   (begin
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7709)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7708)))))
                                           (if x-cnd7707
                                             (letrec*
                                              ((g7710
                                                (letrec*
                                                 ((x7720
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7716))))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7714))))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7712)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
                                                   (display "\n")
                                                   (proc
                                                    x7720
                                                    x7719
                                                    x7718
                                                    x7717
                                                    x7715
                                                    x7713
                                                    x7711)))))
                                              g7710)
                                             (letrec*
                                              ((g7721
                                                (begin
                                                  (write '(funapp 1089 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7721)))))))))))))))))))
                   g7658)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7724))))
                    (g7723
                     (letrec*
                      ((x-cnd7725
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7725
                        #f
                        (letrec*
                         ((x-cnd7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7727 e)))))
                         (if x-cnd7726
                           l
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
                              (display "\n")
                              (member e x7728)))))))))
                   g7723)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 1117 23))
                        (display "\n")
                        (cdr x7730)))))
                   g7729)))
               (cadddr
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
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7737
                     (begin
                       (write '(funapp 1130 53))
                       (display "\n")
                       (random 42))))
                   g7737)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7740))))
                    (g7739
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7739)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7742
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7742))))
                   g7741)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7746
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7747)))
                           #f))))
                      (letrec*
                       ((g7748
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7748))))
                   g7745)))
               (cddaar
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
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x-cnd7754
                        (letrec*
                         ((x7755 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7755 c)))))
                      (if x-cnd7754
                        (letrec*
                         ((x7756 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7756)))
                        #f))))
                   g7753)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (letrec*
                      ((x-cnd7760
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7760
                        #f
                        (letrec*
                         ((x-cnd7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7762 k)))))
                         (if x-cnd7761
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7763)))))))))
                   g7758)))
               (not (lambda (x) (letrec* ((g7764 (if x #f #t))) g7764)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7765)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7771 e)))))
                         (if x-cnd7770
                           l
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7772)))))))))
                   g7767)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7780
                             (letrec*
                              ((x-cnd7781
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7781
                                0
                                (letrec*
                                 ((x7782
                                   (letrec*
                                    ((x7783
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7783)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7782)))))))
                           g7780))))
                      (letrec*
                       ((g7784
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7784))))
                   g7778)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7790
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7790))))
                   g7787)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7792)))))
                   g7791)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (letrec*
                         ((x7795
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7794)))))
                   g7793)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7801 k)))))
                         (if x-cnd7800
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7802)))))))))
                   g7797)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7810)))))
                   g7807)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7812
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7812))))
                   g7811)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7818
                        #t
                        (letrec*
                         ((x-cnd7819
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7819
                           (letrec*
                            ((g7820
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7822))))
                             (g7821
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7823)))))
                            g7821)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7815)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7827
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7825)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7833
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7833))))
                   g7830)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (letrec*
                            ((x7837
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7837)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7836)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7835)))))
                   g7834)))
               (newline (lambda () (letrec* ((g7838 #f)) g7838)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7842))))
                       (x7840
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7841 x7840)))))
                   g7839)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7846)))))
                   g7844)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x7853
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7854)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7856
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7857 x7856)))))))
                   g7850)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7859
                        a
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7860)))))))
                   g7858)))
               (STATE/C
                (lambda (g7331 g7332 g7333)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1421 25))
                          (display "\n")
                          ((lambda (v7330)
                             (letrec*
                              ((g7863
                                (letrec*
                                 ((x-cnd7864
                                   (begin
                                     (write '(funapp 1425 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1425 48))
                                        (display "\n")
                                        'init)
                                      v7330))))
                                 (if x-cnd7864
                                   #t
                                   (letrec*
                                    ((x-cnd7865
                                      (begin
                                        (write '(funapp 1429 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1429 51))
                                           (display "\n")
                                           'opened)
                                         v7330))))
                                    (if x-cnd7865
                                      #t
                                      (letrec*
                                       ((x-cnd7866
                                         (begin
                                           (write '(funapp 1433 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1433 54))
                                              (display "\n")
                                              'closed)
                                            v7330))))
                                       (if x-cnd7866
                                         #t
                                         (begin
                                           (write '(funapp 1436 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1436 44))
                                              (display "\n")
                                              'ignore)
                                            v7330))))))))))
                              g7863))
                           g7333))))
                      (if x-cnd7862
                        g7333
                        (begin
                          (write '(blame g7331 1441 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7331)))))))
                   g7861)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7867
                     (begin (write '(funapp 1452 50)) (display "\n") (loop))))
                   g7867)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1458 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7869
                        (begin
                          (write '(funapp 1459 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1459 44))
                          (display "\n")
                          'ignore)))))
                   g7868)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7870
                     (if x
                       (begin
                         (write '(funapp 1463 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7870)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1469 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7872
                        (letrec*
                         ((g7873
                           (begin
                             (write '(funapp 1471 41))
                             (display "\n")
                             'closed)))
                         g7873)
                        (letrec*
                         ((x-cnd7874
                           (begin
                             (write '(funapp 1473 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1473 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd7874
                           (letrec*
                            ((g7875
                              (begin
                                (write '(funapp 1475 44))
                                (display "\n")
                                'ignore)))
                            g7875)
                           (letrec*
                            ((g7876
                              (begin
                                (write '(funapp 1476 45))
                                (display "\n")
                                (loop)))
                             (g7877 0))
                            g7877)))))))
                   g7871)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g7878
                     (if x
                       (begin
                         (write '(funapp 1480 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g7878)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1484 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1484 61))
                        (display "\n")
                        (close_ y x7881))))
                    (g7880
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 1488 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1488 57))
                           (display "\n")
                           (read_ y x7883)))))
                      (begin
                        (write '(funapp 1489 23))
                        (display "\n")
                        (f x y x7882)))))
                   g7880)))
               (next
                (lambda (st)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1496 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1496 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd7885
                        (begin
                          (write '(funapp 1497 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1497 44))
                          (display "\n")
                          'ignore)))))
                   g7884)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1504 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd7887
                        (letrec*
                         ((x7888
                           (begin
                             (write '(funapp 1506 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1506 54))
                           (display "\n")
                           (f x #t x7888)))
                        (begin
                          (write '(funapp 1507 25))
                          (display "\n")
                          (f x #f st))))))
                   g7886)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1514 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd7891
                        (begin
                          (write '(funapp 1515 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1515 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1515 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1515 63))
                             (display "\n")
                             'init))))))
                    (g7890
                     (begin (write '(funapp 1516 27)) (display "\n") 'unit)))
                   g7890))))
              (letrec*
               ((g7892
                 (letrec*
                  ((x7895
                    (begin
                      (write '(funapp 1522 21))
                      (display "\n")
                      ((lambda (j7336 k7337 f7338)
                         (letrec*
                          ((g7896
                            (lambda (g7334 g7335)
                              (letrec*
                               ((g7897
                                 (letrec*
                                  ((x7898
                                    (letrec*
                                     ((x7900
                                       (begin
                                         (write '(funapp 1531 44))
                                         (display "\n")
                                         (integer?/c j7336 k7337 g7334)))
                                      (x7899
                                       (begin
                                         (write '(funapp 1532 44))
                                         (display "\n")
                                         (integer?/c j7336 k7337 g7335))))
                                     (begin
                                       (write '(funapp 1533 36))
                                       (display "\n")
                                       (f7338 x7900 x7899)))))
                                  (begin
                                    (write '(funapp 1534 33))
                                    (display "\n")
                                    (any/c j7336 k7337 x7898)))))
                               g7897))))
                          g7896))
                       (begin (write '(funapp 1537 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1538 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7894 (input))
                   (x7893 (input)))
                  (begin
                    (write '(funapp 1542 19))
                    (display "\n")
                    (x7895 x7894 x7893)))))
               g7892))))
           g7352))))
       g7350)))
    g7349)))
