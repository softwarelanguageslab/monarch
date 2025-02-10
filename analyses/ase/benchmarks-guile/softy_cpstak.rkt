(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7337 #t)) g7337)))
    (meta (lambda (v) (letrec* ((g7338 v)) g7338)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7339
          (letrec*
           ((g7340
             (letrec*
              ((x-e7341 lst))
              (letrec*
               ((v1742 x-e7341))
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
                   ((x-cnd7342
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7342
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
           g7340)))
        g7339)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7343 (lambda (v) (letrec* ((g7344 v)) g7344)))) g7343)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7345
          (letrec*
           ((x7346 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7346)))))
        g7345))))
   (letrec*
    ((g7347
      (letrec*
       ((g7348
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
           ((g7349 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7350
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7351
                     (lambda (k j lst)
                       (letrec*
                        ((g7352
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7353
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7353))
                             lst))))
                        g7352))))
                   g7351)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7355
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7354)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7357
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7356)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7359
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7358)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7362 #t)) g7362)) g7270))))
                      (if x-cnd7361
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7360)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7365 #t)) g7365)) g7273))))
                      (if x-cnd7364
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7363)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7367
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7366)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7369
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7368)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7371
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7370)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7373
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
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
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7376
                             (begin
                               (write '(funapp 153 42))
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
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7379
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7383
                                (letrec*
                                 ((x7384
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7384))))
                               (x7380
                                (letrec*
                                 ((x7382
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7381
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7382 k j x7381)))))
                              (begin
                                (write '(funapp 176 31))
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
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7387)))))
                   g7386)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x-cnd7389
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7390
                                (letrec*
                                 ((x7391
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7391)))))
                              g7390))
                           g7288))))
                      (if x-cnd7389
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7388)))
               (meta (lambda (v) (letrec* ((g7392 v)) g7392)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7394
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7395
                             (letrec*
                              ((x7396
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7397
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7398 x7397)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7396)))))
                           g7395))))
                      g7394))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7393
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7393)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7400
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7403
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7404 x7403)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7399)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7406
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7409
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7410 x7409)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7405)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7412
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7415
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7416 x7415)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7411)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7418
                        (lambda (g7309)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7421)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7420)))))
                           g7419))))
                      g7418))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7417
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7417)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7423
                        (lambda (g7313)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7426)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7422)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7428
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7431
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7432 x7431)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7427)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7434
                        (lambda (g7322)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7437)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7436)))))
                           g7435))))
                      g7434))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7433
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7433)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7439
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7440
                             (letrec*
                              ((x7441
                                (letrec*
                                 ((x7443
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7442
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7443 x7442)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7441)))))
                           g7440))))
                      g7439))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7438
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7438)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7444
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
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
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7447)))))
                      (begin
                        (write '(funapp 382 23))
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
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7451))))
                    (g7449
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7452))))
                    (g7450
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7453
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7457))))
                          (x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7455)))))
                         (begin
                           (write '(funapp 398 26))
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
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7463)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7462)))))
                      (begin
                        (write '(funapp 414 23))
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7467)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7466)))))
                      (begin
                        (write '(funapp 425 23))
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
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7471))))
                    (g7469
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7472))))
                    (g7470
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
                       ((g7473
                         (begin
                           (write '(funapp 439 32))
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
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7477)))))
                      (begin
                        (write '(funapp 448 23))
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7481)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7480)))))
                      (begin
                        (write '(funapp 459 23))
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
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7484))))
                    (g7483
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7485
                        #f
                        (letrec*
                         ((x-cnd7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7487 k)))))
                         (if x-cnd7486
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
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
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
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
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7493))))
                    (g7492
                     (letrec*
                      ((x-cnd7494
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7494
                        ""
                        (letrec*
                         ((x7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7498))))
                          (x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7496)))))
                         (begin
                           (write '(funapp 496 26))
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
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7502))))
                    (g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7504
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
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
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7508)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7507)))))
                      (begin
                        (write '(funapp 519 23))
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
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7512))))
                    (g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x-cnd7514
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7514
                        x
                        (letrec*
                         ((x7516
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7515
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7516 x7515)))))))
                   g7511)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7517
                     (begin (write '(funapp 535 49)) (display "\n") '())))
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
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7520)))))
                      (if x-cnd7519
                        (letrec*
                         ((x7521 #\z))
                         (begin
                           (write '(funapp 544 48))
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
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7524))))
                    (g7523
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7525
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
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
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
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
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7530 10)))))
                            (letrec*
                             ((g7531
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7532
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
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
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7535)))))
                      (begin
                        (write '(funapp 597 23))
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
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7538))))
                    (g7537
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7537)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7539 #f)) g7539)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
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
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7544))))
                    (g7543
                     (letrec*
                      ((x-cnd7545
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7545
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7543)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7546
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
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
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7548
                                 (begin
                                   (write '(funapp 637 46))
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
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7550
                                       (letrec*
                                        ((x-cnd7551
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7551
                                          (begin
                                            (write '(funapp 649 55))
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
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7553
                                             (letrec*
                                              ((x-cnd7554
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7554
                                                (letrec*
                                                 ((x-cnd7555
                                                   (letrec*
                                                    ((x7557
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7556
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7557 x7556)))))
                                                 (if x-cnd7555
                                                   (letrec*
                                                    ((x7559
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7558
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
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
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7561
                                                (letrec*
                                                 ((x-cnd7562
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7562
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
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
                                                                  695
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 697 60))
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
                                                                          706
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
                                                                                   715
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
                                                                               x7570
                                                                               x7569)))))
                                                                         (if x-cnd7568
                                                                           (letrec*
                                                                            ((x7571
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
                                                                               x7571)))
                                                                           #f)))))
                                                                    g7567))))
                                                                g7566))))
                                                           (letrec*
                                                            ((g7572
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7576)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7575)))))
                      (begin
                        (write '(funapp 757 23))
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7580)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7579)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7578)))))
                   g7577)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7581
                     (begin
                       (write '(funapp 770 53))
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
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7584))))
                    (g7583
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7585
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
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
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7591))))
                    (g7589
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
                       ((g7592
                         (begin
                           (write '(funapp 801 32))
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
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7594)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7600
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
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
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 823 23))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 834 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 843 23))
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
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 851 23))
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
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
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
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7623)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 870 23))
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
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7625)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7627
                     (begin
                       (write '(funapp 878 53))
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
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7631
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7631)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7639))))
                          (x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7637)))))
                         (begin
                           (write '(funapp 900 26))
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 911 23))
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 922 23))
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
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7655)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 939 23))
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
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7661
                        (letrec*
                         ((g7662
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7662)
                        (letrec*
                         ((x-cnd7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7664)))))
                         (if x-cnd7663
                           (letrec*
                            ((g7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7666)))))
                            g7665)
                           (letrec*
                            ((x-cnd7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7668)))))
                            (if x-cnd7667
                              (letrec*
                               ((g7669
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7670
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7671 x7670)))))
                               g7669)
                              (letrec*
                               ((x-cnd7672
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7673)))))
                               (if x-cnd7672
                                 (letrec*
                                  ((g7674
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7677 x7676 x7675)))))
                                  g7674)
                                 (letrec*
                                  ((x-cnd7678
                                    (letrec*
                                     ((x7679
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7679)))))
                                  (if x-cnd7678
                                    (letrec*
                                     ((g7680
                                       (letrec*
                                        ((x7684
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
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
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7687)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7686)))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((g7688
                                          (letrec*
                                           ((x7694
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7689
                                             (letrec*
                                              ((x7690
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7690)))))
                                           (begin
                                             (write '(funapp 1019 44))
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
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7697)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7696)))))
                                        (if x-cnd7695
                                          (letrec*
                                           ((g7698
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7701
                                                (letrec*
                                                 ((x7702
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7702))))
                                               (x7699
                                                (letrec*
                                                 ((x7700
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7700)))))
                                              (begin
                                                (write '(funapp 1050 47))
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
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7709)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7708)))))
                                           (if x-cnd7707
                                             (letrec*
                                              ((g7710
                                                (letrec*
                                                 ((x7720
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7716))))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7714))))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7712)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
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
                                                  (write '(funapp 1097 49))
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
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7724))))
                    (g7723
                     (letrec*
                      ((x-cnd7725
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7725
                        #f
                        (letrec*
                         ((x-cnd7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7727 e)))))
                         (if x-cnd7726
                           l
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 1125 23))
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7737
                     (begin
                       (write '(funapp 1138 53))
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
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7740))))
                    (g7739
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7739)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7742
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
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
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
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
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7747)))
                           #f))))
                      (letrec*
                       ((g7748
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
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
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 1185 23))
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
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7755 c)))))
                      (if x-cnd7754
                        (letrec*
                         ((x7756 #\9))
                         (begin
                           (write '(funapp 1194 48))
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
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (letrec*
                      ((x-cnd7760
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7760
                        #f
                        (letrec*
                         ((x-cnd7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7762 k)))))
                         (if x-cnd7761
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7763)))))))))
                   g7758)))
               (not (lambda (x) (letrec* ((g7764 (if x #f #t))) g7764)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1216 50))
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
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7771 e)))))
                         (if x-cnd7770
                           l
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
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
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1242 23))
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
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
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
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7781
                                0
                                (letrec*
                                 ((x7782
                                   (letrec*
                                    ((x7783
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7783)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7782)))))))
                           g7780))))
                      (letrec*
                       ((g7784
                         (begin
                           (write '(funapp 1263 40))
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
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7790
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
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
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
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
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1288 23))
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
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7801 k)))))
                         (if x-cnd7800
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
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
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
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
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
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
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7812
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
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
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7818
                        #t
                        (letrec*
                         ((x-cnd7819
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7819
                           (letrec*
                            ((g7820
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7822))))
                             (g7821
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7823)))))
                            g7821)
                           (begin
                             (write '(funapp 1346 27))
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
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7827
                        (begin
                          (write '(funapp 1353 67))
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
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7833
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
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
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7837)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7836)))))
                      (begin
                        (write '(funapp 1376 23))
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
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7842))))
                       (x7840
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
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
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
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
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x7853
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7854)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7856
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
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
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7859
                        a
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7860)))))))
                   g7858)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x-cnd7862
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1428 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1428 62))
                           (display "\n")
                           (not x7863)))))
                      (if x-cnd7862
                        (begin (write '(funapp 1430 25)) (display "\n") (k z))
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1432 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1433 26))
                           (display "\n")
                           (tak
                            x7869
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7864
                                 (letrec*
                                  ((x7868
                                    (begin
                                      (write '(funapp 1441 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1442 33))
                                    (display "\n")
                                    (tak
                                     x7868
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7865
                                          (letrec*
                                           ((x7867
                                             (begin
                                               (write '(funapp 1450 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1451 40))
                                             (display "\n")
                                             (tak
                                              x7867
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7866
                                                   (begin
                                                     (write '(funapp 1457 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7866)))))))
                                        g7865)))))))
                               g7864)))))))))
                   g7861)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (begin
                             (write '(funapp 1467 48))
                             (display "\n")
                             (x))))
                         (begin
                           (write '(funapp 1467 54))
                           (display "\n")
                           (λ x7872 x)))))
                      (begin
                        (write '(funapp 1468 23))
                        (display "\n")
                        (tak x y z x7871)))))
                   g7870))))
              (letrec*
               ((g7873
                 (letrec*
                  ((x7877
                    (begin
                      (write '(funapp 1474 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7878
                            (lambda (g7331 g7332 g7333)
                              (letrec*
                               ((g7879
                                 (letrec*
                                  ((x7880
                                    (letrec*
                                     ((x7883
                                       (begin
                                         (write '(funapp 1483 44))
                                         (display "\n")
                                         (integer?/c j7334 k7335 g7331)))
                                      (x7882
                                       (begin
                                         (write '(funapp 1484 44))
                                         (display "\n")
                                         (integer?/c j7334 k7335 g7332)))
                                      (x7881
                                       (begin
                                         (write '(funapp 1485 44))
                                         (display "\n")
                                         (integer?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 1486 36))
                                       (display "\n")
                                       (f7336 x7883 x7882 x7881)))))
                                  (begin
                                    (write '(funapp 1487 33))
                                    (display "\n")
                                    (integer?/c j7334 k7335 x7880)))))
                               g7879))))
                          g7878))
                       (begin (write '(funapp 1490 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1491 21))
                         (display "\n")
                         'importer)
                       tak-main)))
                   (x7876 (input))
                   (x7875 (input))
                   (x7874 (input)))
                  (begin
                    (write '(funapp 1496 19))
                    (display "\n")
                    (x7877 x7876 x7875 x7874)))))
               g7873))))
           g7350))))
       g7348)))
    g7347)))
