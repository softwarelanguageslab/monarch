(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7349 #t)) g7349)))
    (meta (lambda (v) (letrec* ((g7350 v)) g7350)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7351
          (letrec*
           ((g7352
             (letrec*
              ((x-e7353 lst))
              (letrec*
               ((v1742 x-e7353))
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
                   ((x-cnd7354
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7354
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
           g7352)))
        g7351)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7355 (lambda (v) (letrec* ((g7356 v)) g7356)))) g7355)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7357
          (letrec*
           ((x7358 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7358)))))
        g7357))))
   (letrec*
    ((g7359
      (letrec*
       ((g7360
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
           ((g7361 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7362
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7363
                     (lambda (k j lst)
                       (letrec*
                        ((g7364
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7365
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7365))
                             lst))))
                        g7364))))
                   g7363)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7367
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7366)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7369
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7368)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7371
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7370)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7374 #t)) g7374)) g7270))))
                      (if x-cnd7373
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7372)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7377 #t)) g7377)) g7273))))
                      (if x-cnd7376
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7375)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7379
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7378)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7381
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7380)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7383
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7382)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7385
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7384)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7386
                     (lambda (k j v)
                       (letrec*
                        ((g7387
                          (letrec*
                           ((x-cnd7388
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7388
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7387))))
                   g7386)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7389
                     (lambda (k j v)
                       (letrec*
                        ((g7390
                          (letrec*
                           ((x-cnd7391
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7391
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7396))))
                               (x7392
                                (letrec*
                                 ((x7394
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7393
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7394 k j x7393)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7395 x7392)))))))
                        g7390))))
                   g7389)))
               (any? (lambda (v) (letrec* ((g7397 #t)) g7397)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7398
                     (letrec*
                      ((x7399
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7399)))))
                   g7398)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7400
                     (letrec*
                      ((x-cnd7401
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7402
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7403)))))
                              g7402))
                           g7288))))
                      (if x-cnd7401
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7400)))
               (meta (lambda (v) (letrec* ((g7404 v)) g7404)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7406
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7409
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7410 x7409)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7405)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7412
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7415
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7416 x7415)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7411)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7418
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7421
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7422 x7421)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7420)))))
                           g7419))))
                      g7418))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7417
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7417)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7424
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7427
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7428 x7427)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7426)))))
                           g7425))))
                      g7424))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7423
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7423)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7430
                        (lambda (g7309)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7433
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7433)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7429)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7435
                        (lambda (g7313)
                          (letrec*
                           ((g7436
                             (letrec*
                              ((x7437
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7438)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7437)))))
                           g7436))))
                      g7435))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7434
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7434)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7440
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7441
                             (letrec*
                              ((x7442
                                (letrec*
                                 ((x7444
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7443
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7444 x7443)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7442)))))
                           g7441))))
                      g7440))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7439
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7439)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7446
                        (lambda (g7322)
                          (letrec*
                           ((g7447
                             (letrec*
                              ((x7448
                                (letrec*
                                 ((x7449
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7449)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7448)))))
                           g7447))))
                      g7446))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7445
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7445)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7451
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7452
                             (letrec*
                              ((x7453
                                (letrec*
                                 ((x7455
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7454
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7455 x7454)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7453)))))
                           g7452))))
                      g7451))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7450
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7450)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7456
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7456)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7458
                        (letrec*
                         ((x7459
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7459)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7458)))))
                   g7457)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x7463
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7463))))
                    (g7461
                     (letrec*
                      ((x7464
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7464))))
                    (g7462
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7465
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7468
                           (letrec*
                            ((x7469
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7469))))
                          (x7466
                           (letrec*
                            ((x7467
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7467)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7468 x7466)))))))
                   g7462)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7471)))))
                   g7470)))
               (cadadr
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7475)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7474)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7473)))))
                   g7472)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7477
                        (letrec*
                         ((x7478
                           (letrec*
                            ((x7479
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7479)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7478)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7477)))))
                   g7476)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7483))))
                    (g7481
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7484))))
                    (g7482
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
                       ((g7485
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7486 res))
                       g7486))))
                   g7482)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (letrec*
                         ((x7489
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7489)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7488)))))
                   g7487)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (letrec*
                         ((x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7493)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7492)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7491)))))
                   g7490)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7496))))
                    (g7495
                     (letrec*
                      ((x-cnd7497
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7497
                        #f
                        (letrec*
                         ((x-cnd7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7499 k)))))
                         (if x-cnd7498
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7500)))))))))
                   g7495)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7502)))))
                   g7501)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7505))))
                    (g7504
                     (letrec*
                      ((x-cnd7506
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7506
                        ""
                        (letrec*
                         ((x7509
                           (letrec*
                            ((x7510
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7510))))
                          (x7507
                           (letrec*
                            ((x7508
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7508)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7509 x7507)))))))
                   g7504)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7515))))
                    (g7513
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7516
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7516))))
                   g7513)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7518
                        (letrec*
                         ((x7519
                           (letrec*
                            ((x7520
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7520)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7519)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7518)))))
                   g7517)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7524))))
                    (g7522
                     (letrec*
                      ((x7525
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7525))))
                    (g7523
                     (letrec*
                      ((x-cnd7526
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7526
                        x
                        (letrec*
                         ((x7528
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7527
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7528 x7527)))))))
                   g7523)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7529
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7529)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x-cnd7531
                        (letrec*
                         ((x7532 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7532)))))
                      (if x-cnd7531
                        (letrec*
                         ((x7533 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7533)))
                        #f))))
                   g7530)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7536))))
                    (g7535
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7537
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7538 (if val7243 val7243 #f)))
                             g7538)))))
                       g7537))))
                   g7535)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7540
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7540 9)))))
                      (letrec*
                       ((g7541
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7542
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7542 10)))))
                            (letrec*
                             ((g7543
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7544
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7544 32))))))
                             g7543)))))
                       g7541))))
                   g7539)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7546
                        (letrec*
                         ((x7547
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7547)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7546)))))
                   g7545)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7550
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7550))))
                    (g7549
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7549)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7551 #f)) g7551)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((x7553
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7553)))))
                   g7552)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((x7556
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7556))))
                    (g7555
                     (letrec*
                      ((x-cnd7557
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7557
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7555)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7558
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7559
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7560
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7560
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7561
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7562
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7562
                                       (letrec*
                                        ((x-cnd7563
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7563
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7564
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7565
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7565
                                             (letrec*
                                              ((x-cnd7566
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7566
                                                (letrec*
                                                 ((x-cnd7567
                                                   (letrec*
                                                    ((x7569
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7568
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7569 x7568)))))
                                                 (if x-cnd7567
                                                   (letrec*
                                                    ((x7571
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7570
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7571 x7570)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7572
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7573
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7573
                                                (letrec*
                                                 ((x-cnd7574
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7574
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7575
                                                       (letrec*
                                                        ((x-cnd7576
                                                          (letrec*
                                                           ((x7577
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
                                                             (= x7577 n)))))
                                                        (if x-cnd7576
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7578
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
                                                                    ((g7579
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7580
                                                                           (letrec*
                                                                            ((x7582
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
                                                                             (x7581
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
                                                                               x7582
                                                                               x7581)))))
                                                                         (if x-cnd7580
                                                                           (letrec*
                                                                            ((x7583
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
                                                                               x7583)))
                                                                           #f)))))
                                                                    g7579))))
                                                                g7578))))
                                                           (letrec*
                                                            ((g7584
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7584))
                                                          #f))))
                                                     g7575))
                                                   #f))
                                                #f)))))
                                         g7572)))))
                                   g7564)))))
                             g7561)))))
                       g7559))))
                   g7558)))
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7588)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7587)))))
                      (begin
                        (write '(funapp 757 23))
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7592)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7591)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7590)))))
                   g7589)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7593
                     (begin
                       (write '(funapp 770 53))
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
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7596))))
                    (g7595
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7597
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7598 (if val7252 val7252 #f)))
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
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7603))))
                    (g7601
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
                       ((g7604
                         (begin
                           (write '(funapp 801 32))
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
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7606)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7612
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
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
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 823 23))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 834 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7622)))))
                      (begin
                        (write '(funapp 843 23))
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
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 851 23))
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
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
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
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7635)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 870 23))
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
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7637)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7639
                     (begin
                       (write '(funapp 878 53))
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
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7643
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7643)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7647
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7651))))
                          (x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7649)))))
                         (begin
                           (write '(funapp 900 26))
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 911 23))
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7659)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 922 23))
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
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7667)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7666)))))
                      (begin
                        (write '(funapp 939 23))
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
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7673
                        (letrec*
                         ((g7674
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7674)
                        (letrec*
                         ((x-cnd7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7676)))))
                         (if x-cnd7675
                           (letrec*
                            ((g7677
                              (letrec*
                               ((x7678
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7678)))))
                            g7677)
                           (letrec*
                            ((x-cnd7679
                              (letrec*
                               ((x7680
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7680)))))
                            (if x-cnd7679
                              (letrec*
                               ((g7681
                                 (letrec*
                                  ((x7683
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7682
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7683 x7682)))))
                               g7681)
                              (letrec*
                               ((x-cnd7684
                                 (letrec*
                                  ((x7685
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7685)))))
                               (if x-cnd7684
                                 (letrec*
                                  ((g7686
                                    (letrec*
                                     ((x7689
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7688
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7687
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7689 x7688 x7687)))))
                                  g7686)
                                 (letrec*
                                  ((x-cnd7690
                                    (letrec*
                                     ((x7691
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7691)))))
                                  (if x-cnd7690
                                    (letrec*
                                     ((g7692
                                       (letrec*
                                        ((x7696
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7695
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7694
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7693
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7696 x7695 x7694 x7693)))))
                                     g7692)
                                    (letrec*
                                     ((x-cnd7697
                                       (letrec*
                                        ((x7698
                                          (letrec*
                                           ((x7699
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7699)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7698)))))
                                     (if x-cnd7697
                                       (letrec*
                                        ((g7700
                                          (letrec*
                                           ((x7706
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7703
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7701
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7702)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7706
                                              x7705
                                              x7704
                                              x7703
                                              x7701)))))
                                        g7700)
                                       (letrec*
                                        ((x-cnd7707
                                          (letrec*
                                           ((x7708
                                             (letrec*
                                              ((x7709
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7709)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7708)))))
                                        (if x-cnd7707
                                          (letrec*
                                           ((g7710
                                             (letrec*
                                              ((x7718
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7717
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7716
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7715
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7713
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7714))))
                                               (x7711
                                                (letrec*
                                                 ((x7712
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7712)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7718
                                                 x7717
                                                 x7716
                                                 x7715
                                                 x7713
                                                 x7711)))))
                                           g7710)
                                          (letrec*
                                           ((x-cnd7719
                                             (letrec*
                                              ((x7720
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7721)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7720)))))
                                           (if x-cnd7719
                                             (letrec*
                                              ((g7722
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7731
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7730
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7729
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7727
                                                   (letrec*
                                                    ((x7728
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7728))))
                                                  (x7725
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7726))))
                                                  (x7723
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7724)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7732
                                                    x7731
                                                    x7730
                                                    x7729
                                                    x7727
                                                    x7725
                                                    x7723)))))
                                              g7722)
                                             (letrec*
                                              ((g7733
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7733)))))))))))))))))))
                   g7670)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7736))))
                    (g7735
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7737
                        #f
                        (letrec*
                         ((x-cnd7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7739 e)))))
                         (if x-cnd7738
                           l
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7740)))))))))
                   g7735)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7747)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7749)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7751)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7754
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7754))))
                   g7753)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7758
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7759)))
                           #f))))
                      (letrec*
                       ((g7760
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7760))))
                   g7757)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7764)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x-cnd7766
                        (letrec*
                         ((x7767 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7767 c)))))
                      (if x-cnd7766
                        (letrec*
                         ((x7768 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7768)))
                        #f))))
                   g7765)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7772
                        #f
                        (letrec*
                         ((x-cnd7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7774 k)))))
                         (if x-cnd7773
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7775)))))))))
                   g7770)))
               (not (lambda (x) (letrec* ((g7776 (if x #f #t))) g7776)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7777
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7777)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7781
                        #f
                        (letrec*
                         ((x-cnd7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7783 e)))))
                         (if x-cnd7782
                           l
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7784)))))))))
                   g7779)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7787)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7792
                             (letrec*
                              ((x-cnd7793
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7793
                                0
                                (letrec*
                                 ((x7794
                                   (letrec*
                                    ((x7795
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7795)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7794)))))))
                           g7792))))
                      (letrec*
                       ((g7796
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7796))))
                   g7790)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7800))))
                    (g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7802
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7802))))
                   g7799)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7804)))))
                   g7803)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (letrec*
                         ((x7807
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7807)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7806)))))
                   g7805)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7810))))
                    (g7809
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7811
                        #f
                        (letrec*
                         ((x-cnd7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7813 k)))))
                         (if x-cnd7812
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7814)))))))))
                   g7809)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7816)))))
                   g7815)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7822)))))
                   g7819)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7824
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7824))))
                   g7823)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x-cnd7830
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7830
                        #t
                        (letrec*
                         ((x-cnd7831
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7831
                           (letrec*
                            ((g7832
                              (letrec*
                               ((x7834
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7834))))
                             (g7833
                              (letrec*
                               ((x7835
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7835)))))
                            g7833)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7827)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7838))))
                    (g7837
                     (letrec*
                      ((x-cnd7839
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7839
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7837)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7845
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7845))))
                   g7842)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7847
                        (letrec*
                         ((x7848
                           (letrec*
                            ((x7849
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7849)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7848)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7847)))))
                   g7846)))
               (newline (lambda () (letrec* ((g7850 #f)) g7850)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7854))))
                       (x7852
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7853 x7852)))))
                   g7851)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7857))))
                    (g7856
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7858)))))
                   g7856)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7863))))
                    (g7860
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7864))))
                    (g7861
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7866)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7865))))
                    (g7862
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7867
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7868
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7869 x7868)))))))
                   g7862)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7871
                        a
                        (letrec*
                         ((x7872
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7872)))))))
                   g7870)))
               (f
                (lambda (g)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7877
                        (begin (write '(funapp 1428 31)) (display "\n") (x y)))
                       (x7874
                        (letrec*
                         ((x7876
                           (begin
                             (write '(funapp 1431 34))
                             (display "\n")
                             (+ x 1)))
                          (x7875
                           (begin
                             (write '(funapp 1431 50))
                             (display "\n")
                             (+ y 1))))
                         (begin
                           (write '(funapp 1432 26))
                           (display "\n")
                           (g x7876 x7875)))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (λ x7877 x7874)))))
                   g7873)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1440 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7879
                        (begin
                          (write '(funapp 1442 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1444 34))
                             (display "\n")
                             (- x 1)))
                          (x7880
                           (begin
                             (write '(funapp 1444 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1445 26))
                           (display "\n")
                           (unzip x7881 x7880)))))))
                   g7878)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1452 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7883
                        (letrec*
                         ((x-cnd7884
                           (begin
                             (write '(funapp 1454 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7884
                           0
                           (begin
                             (write '(funapp 1454 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd7885
                           (begin
                             (write '(funapp 1456 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7885
                           (begin
                             (write '(funapp 1458 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x7886
                              (letrec*
                               ((x7888
                                 (begin
                                   (write '(funapp 1462 40))
                                   (display "\n")
                                   (- x 1)))
                                (x7887
                                 (begin
                                   (write '(funapp 1462 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1463 32))
                                 (display "\n")
                                 (zip x7888 x7887)))))
                            (begin
                              (write '(funapp 1464 29))
                              (display "\n")
                              (+ 1 x7886)))))))))
                   g7882)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 1466 51))
                       (display "\n")
                       (unzip n zip))))
                   g7889))))
              (letrec*
               ((g7890
                 (letrec*
                  ((x7893
                    (begin
                      (write '(funapp 1471 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7894
                            (lambda (g7331)
                              (letrec*
                               ((g7895
                                 (letrec*
                                  ((x7896
                                    (letrec*
                                     ((x7897
                                       (begin
                                         (write '(funapp 1481 38))
                                         (display "\n")
                                         ((lambda (j7342 k7343 f7344)
                                            (letrec*
                                             ((g7898
                                               (lambda (g7340 g7341)
                                                 (letrec*
                                                  ((g7899
                                                    (letrec*
                                                     ((x7900
                                                       (letrec*
                                                        ((x7902
                                                          (begin
                                                            (write
                                                             '(funapp 1491 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7342
                                                             k7343
                                                             g7340)))
                                                         (x7901
                                                          (begin
                                                            (write
                                                             '(funapp 1496 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7342
                                                             k7343
                                                             g7341))))
                                                        (begin
                                                          (write
                                                           '(funapp 1500 53))
                                                          (display "\n")
                                                          (f7344
                                                           x7902
                                                           x7901)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1501 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7342
                                                        k7343
                                                        x7900)))))
                                                  g7899))))
                                             g7898))
                                          j7332
                                          k7333
                                          g7331))))
                                     (begin
                                       (write '(funapp 1510 36))
                                       (display "\n")
                                       (f7334 x7897)))))
                                  (begin
                                    (write '(funapp 1511 33))
                                    (display "\n")
                                    ((lambda (j7337 k7338 f7339)
                                       (letrec*
                                        ((g7903
                                          (lambda (g7335 g7336)
                                            (letrec*
                                             ((g7904
                                               (letrec*
                                                ((x7905
                                                  (letrec*
                                                   ((x7907
                                                     (begin
                                                       (write
                                                        '(funapp 1521 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7337
                                                        k7338
                                                        g7335)))
                                                    (x7906
                                                     (begin
                                                       (write
                                                        '(funapp 1526 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7337
                                                        k7338
                                                        g7336))))
                                                   (begin
                                                     (write '(funapp 1530 48))
                                                     (display "\n")
                                                     (f7339 x7907 x7906)))))
                                                (begin
                                                  (write '(funapp 1531 45))
                                                  (display "\n")
                                                  (integer?/c
                                                   j7337
                                                   k7338
                                                   x7905)))))
                                             g7904))))
                                        g7903))
                                     j7332
                                     k7333
                                     x7896)))))
                               g7895))))
                          g7894))
                       (begin (write '(funapp 1539 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1540 21))
                         (display "\n")
                         'importer)
                       f)))
                   (x7892 (input)))
                  (begin
                    (write '(funapp 1543 19))
                    (display "\n")
                    (x7893 x7892))))
                (g7891
                 (letrec*
                  ((x7909
                    (begin
                      (write '(funapp 1547 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7910
                            (lambda (g7345)
                              (letrec*
                               ((g7911
                                 (letrec*
                                  ((x7912
                                    (letrec*
                                     ((x7913
                                       (begin
                                         (write '(funapp 1556 44))
                                         (display "\n")
                                         (integer?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 1557 36))
                                       (display "\n")
                                       (f7348 x7913)))))
                                  (begin
                                    (write '(funapp 1558 33))
                                    (display "\n")
                                    (integer?/c j7346 k7347 x7912)))))
                               g7911))))
                          g7910))
                       (begin (write '(funapp 1561 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1562 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7908 (input)))
                  (begin
                    (write '(funapp 1565 19))
                    (display "\n")
                    (x7909 x7908)))))
               g7891))))
           g7362))))
       g7360)))
    g7359)))
