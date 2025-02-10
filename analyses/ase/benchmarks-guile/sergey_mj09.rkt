(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7331 #t)) g7331)))
    (meta (lambda (v) (letrec* ((g7332 v)) g7332)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7333
          (letrec*
           ((g7334
             (letrec*
              ((x-e7335 lst))
              (letrec*
               ((v1742 x-e7335))
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
                   ((x-cnd7336
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7336
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
           g7334)))
        g7333)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7337 (lambda (v) (letrec* ((g7338 v)) g7338)))) g7337)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7339
          (letrec*
           ((x7340 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7340)))))
        g7339))))
   (letrec*
    ((g7341
      (letrec*
       ((g7342
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
           ((g7343 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7344
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7345
                     (lambda (k j lst)
                       (letrec*
                        ((g7346
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7347
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7347))
                             lst))))
                        g7346))))
                   g7345)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7348
                     (letrec*
                      ((x-cnd7349
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7349
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7348)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7350
                     (letrec*
                      ((x-cnd7351
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7351
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7350)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7352
                     (letrec*
                      ((x-cnd7353
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7353
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7352)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7356 #t)) g7356)) g7270))))
                      (if x-cnd7355
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7354)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7359 #t)) g7359)) g7273))))
                      (if x-cnd7358
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7357)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7361
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7360)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7363
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7362)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7365
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7364)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7367
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7366)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7368
                     (lambda (k j v)
                       (letrec*
                        ((g7369
                          (letrec*
                           ((x-cnd7370
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7370
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7369))))
                   g7368)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7371
                     (lambda (k j v)
                       (letrec*
                        ((g7372
                          (letrec*
                           ((x-cnd7373
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7373
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7377
                                (letrec*
                                 ((x7378
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7378))))
                               (x7374
                                (letrec*
                                 ((x7376
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7375
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7376 k j x7375)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7377 x7374)))))))
                        g7372))))
                   g7371)))
               (any? (lambda (v) (letrec* ((g7379 #t)) g7379)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x7381
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7381)))))
                   g7380)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7384
                                (letrec*
                                 ((x7385
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7385)))))
                              g7384))
                           g7288))))
                      (if x-cnd7383
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7382)))
               (meta (lambda (v) (letrec* ((g7386 v)) g7386)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7388
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7389
                             (letrec*
                              ((x7390
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7391
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7392 x7391)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7390)))))
                           g7389))))
                      g7388))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7387
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7387)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7394
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7395
                             (letrec*
                              ((x7396
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7397
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7398 x7397)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7396)))))
                           g7395))))
                      g7394))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7393
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7393)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7400
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7403
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7404 x7403)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7399)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7406
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7409
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7410 x7409)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7405)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7412
                        (lambda (g7309)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7415)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7411)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7417
                        (lambda (g7313)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7420)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7416)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7422
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7425
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7426 x7425)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7421)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7428
                        (lambda (g7322)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7431)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7427)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7433
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7436
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7437 x7436)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7432)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7438
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7438)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x7440
                        (letrec*
                         ((x7441
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7441)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7440)))))
                   g7439)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x7445
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7445))))
                    (g7443
                     (letrec*
                      ((x7446
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7446))))
                    (g7444
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7447
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7450
                           (letrec*
                            ((x7451
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7451))))
                          (x7448
                           (letrec*
                            ((x7449
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7449)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7450 x7448)))))))
                   g7444)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7453)))))
                   g7452)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7455
                        (letrec*
                         ((x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7457)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7456)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7455)))))
                   g7454)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x7459
                        (letrec*
                         ((x7460
                           (letrec*
                            ((x7461
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7461)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7460)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7459)))))
                   g7458)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7465))))
                    (g7463
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7466))))
                    (g7464
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
                       ((g7467
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7468 res))
                       g7468))))
                   g7464)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7470
                        (letrec*
                         ((x7471
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7471)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7470)))))
                   g7469)))
               (cdaadr
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7475)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7474)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7478))))
                    (g7477
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7479
                        #f
                        (letrec*
                         ((x-cnd7480
                           (letrec*
                            ((x7481
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7481 k)))))
                         (if x-cnd7480
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7482)))))))))
                   g7477)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7484)))))
                   g7483)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7487))))
                    (g7486
                     (letrec*
                      ((x-cnd7488
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7488
                        ""
                        (letrec*
                         ((x7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7492))))
                          (x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7490)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7491 x7489)))))))
                   g7486)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7496))))
                    (g7494
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7497))))
                    (g7495
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7498
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7498))))
                   g7495)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7500
                        (letrec*
                         ((x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7502)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7501)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7500)))))
                   g7499)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7506))))
                    (g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x-cnd7508
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7508
                        x
                        (letrec*
                         ((x7510
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7509
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7510 x7509)))))))
                   g7505)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7511
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7511)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x-cnd7513
                        (letrec*
                         ((x7514 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7514)))))
                      (if x-cnd7513
                        (letrec*
                         ((x7515 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7515)))
                        #f))))
                   g7512)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7518))))
                    (g7517
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7519
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7520 (if val7243 val7243 #f)))
                             g7520)))))
                       g7519))))
                   g7517)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7522
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7522 9)))))
                      (letrec*
                       ((g7523
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7524
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7524 10)))))
                            (letrec*
                             ((g7525
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7526
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7526 32))))))
                             g7525)))))
                       g7523))))
                   g7521)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7528
                        (letrec*
                         ((x7529
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7529)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7528)))))
                   g7527)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7531)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7533 #f)) g7533)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7538))))
                    (g7537
                     (letrec*
                      ((x-cnd7539
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7539
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7537)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7541
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7542
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7542
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7543
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7544
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7544
                                       (letrec*
                                        ((x-cnd7545
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7545
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7546
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7547
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7547
                                             (letrec*
                                              ((x-cnd7548
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7548
                                                (letrec*
                                                 ((x-cnd7549
                                                   (letrec*
                                                    ((x7551
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7550
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7551 x7550)))))
                                                 (if x-cnd7549
                                                   (letrec*
                                                    ((x7553
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7552
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7553 x7552)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7554
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7555
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7555
                                                (letrec*
                                                 ((x-cnd7556
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7556
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7557
                                                       (letrec*
                                                        ((x-cnd7558
                                                          (letrec*
                                                           ((x7559
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
                                                             (= x7559 n)))))
                                                        (if x-cnd7558
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7560
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
                                                                    ((g7561
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7562
                                                                           (letrec*
                                                                            ((x7564
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
                                                                             (x7563
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
                                                                               x7564
                                                                               x7563)))))
                                                                         (if x-cnd7562
                                                                           (letrec*
                                                                            ((x7565
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
                                                                               x7565)))
                                                                           #f)))))
                                                                    g7561))))
                                                                g7560))))
                                                           (letrec*
                                                            ((g7566
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7566))
                                                          #f))))
                                                     g7557))
                                                   #f))
                                                #f)))))
                                         g7554)))))
                                   g7546)))))
                             g7543)))))
                       g7541))))
                   g7540)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7568
                        (letrec*
                         ((x7569
                           (letrec*
                            ((x7570
                              (begin
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7570)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7569)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7568)))))
                   g7567)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7572
                        (letrec*
                         ((x7573
                           (letrec*
                            ((x7574
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7574)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7573)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7572)))))
                   g7571)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7575
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7575)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7578))))
                    (g7577
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7579
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7580 (if val7252 val7252 #f)))
                             g7580)))))
                       g7579))))
                   g7577)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7584))))
                    (g7582
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7585))))
                    (g7583
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
                       ((g7586
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7587 res))
                       g7587))))
                   g7583)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7588
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7588)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7594
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7594))))
                   g7591)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7596
                        (letrec*
                         ((x7597
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7597)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7596)))))
                   g7595)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7601)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7603)))))
                   g7602)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7613)))))
                   g7610)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7617)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7619)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7621
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7621)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7625
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7625)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7628))))
                    (g7627
                     (letrec*
                      ((x-cnd7629
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7629
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7633))))
                          (x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7631)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7632 x7630)))))))
                   g7627)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7637)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7641)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7639)))))
                   g7638)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7644))))
                    (g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7645)))))
                   g7643)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7649)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7655
                        (letrec*
                         ((g7656
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7656)
                        (letrec*
                         ((x-cnd7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7658)))))
                         (if x-cnd7657
                           (letrec*
                            ((g7659
                              (letrec*
                               ((x7660
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7660)))))
                            g7659)
                           (letrec*
                            ((x-cnd7661
                              (letrec*
                               ((x7662
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7662)))))
                            (if x-cnd7661
                              (letrec*
                               ((g7663
                                 (letrec*
                                  ((x7665
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7664
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7665 x7664)))))
                               g7663)
                              (letrec*
                               ((x-cnd7666
                                 (letrec*
                                  ((x7667
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7667)))))
                               (if x-cnd7666
                                 (letrec*
                                  ((g7668
                                    (letrec*
                                     ((x7671
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7669
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7671 x7670 x7669)))))
                                  g7668)
                                 (letrec*
                                  ((x-cnd7672
                                    (letrec*
                                     ((x7673
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7673)))))
                                  (if x-cnd7672
                                    (letrec*
                                     ((g7674
                                       (letrec*
                                        ((x7678
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7677
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7676
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7675
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7678 x7677 x7676 x7675)))))
                                     g7674)
                                    (letrec*
                                     ((x-cnd7679
                                       (letrec*
                                        ((x7680
                                          (letrec*
                                           ((x7681
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7681)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7680)))))
                                     (if x-cnd7679
                                       (letrec*
                                        ((g7682
                                          (letrec*
                                           ((x7688
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7687
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7686
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7685
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7683
                                             (letrec*
                                              ((x7684
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7684)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7688
                                              x7687
                                              x7686
                                              x7685
                                              x7683)))))
                                        g7682)
                                       (letrec*
                                        ((x-cnd7689
                                          (letrec*
                                           ((x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7691)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7690)))))
                                        (if x-cnd7689
                                          (letrec*
                                           ((g7692
                                             (letrec*
                                              ((x7700
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7699
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7698
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7697
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7695
                                                (letrec*
                                                 ((x7696
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7696))))
                                               (x7693
                                                (letrec*
                                                 ((x7694
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7694)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7700
                                                 x7699
                                                 x7698
                                                 x7697
                                                 x7695
                                                 x7693)))))
                                           g7692)
                                          (letrec*
                                           ((x-cnd7701
                                             (letrec*
                                              ((x7702
                                                (letrec*
                                                 ((x7703
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7703)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7702)))))
                                           (if x-cnd7701
                                             (letrec*
                                              ((g7704
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7713
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7712
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7711
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7709
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7710))))
                                                  (x7707
                                                   (letrec*
                                                    ((x7708
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7708))))
                                                  (x7705
                                                   (letrec*
                                                    ((x7706
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7706)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7714
                                                    x7713
                                                    x7712
                                                    x7711
                                                    x7709
                                                    x7707
                                                    x7705)))))
                                              g7704)
                                             (letrec*
                                              ((g7715
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7715)))))))))))))))))))
                   g7652)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7718))))
                    (g7717
                     (letrec*
                      ((x-cnd7719
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7719
                        #f
                        (letrec*
                         ((x-cnd7720
                           (letrec*
                            ((x7721
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7721 e)))))
                         (if x-cnd7720
                           l
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7722)))))))))
                   g7717)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7724
                        (letrec*
                         ((x7725
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7726)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7725)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7724)))))
                   g7723)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7729)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7728)))))
                   g7727)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7731
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7731)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7734))))
                    (g7733
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7733)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7736
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7736))))
                   g7735)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7740
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7741)))
                           #f))))
                      (letrec*
                       ((g7742
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7742))))
                   g7739)))
               (cddaar
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
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7746)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7745)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x-cnd7748
                        (letrec*
                         ((x7749 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7749 c)))))
                      (if x-cnd7748
                        (letrec*
                         ((x7750 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7750)))
                        #f))))
                   g7747)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        #f
                        (letrec*
                         ((x-cnd7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7756 k)))))
                         (if x-cnd7755
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7757)))))))))
                   g7752)))
               (not (lambda (x) (letrec* ((g7758 (if x #f #t))) g7758)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7759
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7759)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (letrec*
                      ((x-cnd7763
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7763
                        #f
                        (letrec*
                         ((x-cnd7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7765 e)))))
                         (if x-cnd7764
                           l
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7766)))))))))
                   g7761)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7774
                             (letrec*
                              ((x-cnd7775
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7775
                                0
                                (letrec*
                                 ((x7776
                                   (letrec*
                                    ((x7777
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7777)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7776)))))))
                           g7774))))
                      (letrec*
                       ((g7778
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7778))))
                   g7772)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7782))))
                    (g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7784
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7784))))
                   g7781)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7786)))))
                   g7785)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7788)))))
                   g7787)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7793
                        #f
                        (letrec*
                         ((x-cnd7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7795 k)))))
                         (if x-cnd7794
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7796)))))))))
                   g7791)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7798)))))
                   g7797)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7804)))))
                   g7801)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7806
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7806))))
                   g7805)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7812
                        #t
                        (letrec*
                         ((x-cnd7813
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7813
                           (letrec*
                            ((g7814
                              (letrec*
                               ((x7816
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7816))))
                             (g7815
                              (letrec*
                               ((x7817
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7817)))))
                            g7815)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7809)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7820))))
                    (g7819
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7821
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7819)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7827
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7827))))
                   g7824)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7829
                        (letrec*
                         ((x7830
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7831)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7830)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7829)))))
                   g7828)))
               (newline (lambda () (letrec* ((g7832 #f)) g7832)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7836))))
                       (x7834
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7835 x7834)))))
                   g7833)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7839))))
                    (g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7840)))))
                   g7838)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7845))))
                    (g7842
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7846))))
                    (g7843
                     (letrec*
                      ((x7847
                        (letrec*
                         ((x7848
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7848)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7847))))
                    (g7844
                     (letrec*
                      ((x-cnd7849
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7849
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7850
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7851 x7850)))))))
                   g7844)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x-cnd7853
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7853
                        a
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7854)))))))
                   g7852))))
              (letrec*
               ((g7855
                 (letrec*
                  ((h
                    (letrec*
                     ((x7865
                       (begin (write '(funapp 1428 30)) (display "\n") (b)))
                      (x7856
                       (letrec*
                        ((g
                          (letrec*
                           ((x7857
                             (begin
                               (write '(funapp 1431 46))
                               (display "\n")
                               (z))))
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (λ x7857 z)))))
                        (letrec*
                         ((g7858
                           (letrec*
                            ((f
                              (letrec*
                               ((x7860
                                 (begin
                                   (write '(funapp 1437 40))
                                   (display "\n")
                                   (k)))
                                (x7859
                                 (if b
                                   (begin
                                     (write '(funapp 1437 58))
                                     (display "\n")
                                     (k 1))
                                   (begin
                                     (write '(funapp 1437 64))
                                     (display "\n")
                                     (k 2)))))
                               (begin
                                 (write '(funapp 1438 32))
                                 (display "\n")
                                 (λ x7860 x7859)))))
                            (letrec*
                             ((g7861
                               (letrec*
                                ((y
                                  (letrec*
                                   ((x7862
                                     (letrec*
                                      ((x7863
                                        (begin
                                          (write '(funapp 1445 55))
                                          (display "\n")
                                          (x))))
                                      (begin
                                        (write '(funapp 1445 61))
                                        (display "\n")
                                        (λ x7863 x)))))
                                   (begin
                                     (write '(funapp 1446 36))
                                     (display "\n")
                                     (f x7862)))))
                                (letrec*
                                 ((g7864
                                   (begin
                                     (write '(funapp 1447 50))
                                     (display "\n")
                                     (g y))))
                                 g7864))))
                             g7861))))
                         g7858))))
                     (begin
                       (write '(funapp 1450 22))
                       (display "\n")
                       (λ x7865 x7856)))))
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x
                        (begin
                          (write '(funapp 1454 27))
                          (display "\n")
                          (h #t)))
                       (y
                        (begin
                          (write '(funapp 1454 38))
                          (display "\n")
                          (h #f))))
                      (letrec* ((g7867 y)) g7867))))
                   g7866))))
               g7855))))
           g7344))))
       g7342)))
    g7341)))
