(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7335 #t)) g7335)))
    (meta (lambda (v) (letrec* ((g7336 v)) g7336)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7337
          (letrec*
           ((g7338
             (letrec*
              ((x-e7339 lst))
              (letrec*
               ((v1742 x-e7339))
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
                   ((x-cnd7340
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7340
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
           g7338)))
        g7337)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7341 (lambda (v) (letrec* ((g7342 v)) g7342)))) g7341)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7343
          (letrec*
           ((x7344 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7344)))))
        g7343))))
   (letrec*
    ((g7345
      (letrec*
       ((g7346
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
           ((g7347 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7348
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7349
                     (lambda (k j lst)
                       (letrec*
                        ((g7350
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7351
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7351))
                             lst))))
                        g7350))))
                   g7349)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7352
                     (letrec*
                      ((x-cnd7353
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7353
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7352)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7355
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7354)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7357
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7356)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7360 #t)) g7360)) g7270))))
                      (if x-cnd7359
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7358)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7363 #t)) g7363)) g7273))))
                      (if x-cnd7362
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7361)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7365
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7364)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7367
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7366)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7369
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7368)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7371
                        g7285
                        (begin
                          (write '(blame g7283 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7370)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7372
                     (lambda (k j v)
                       (letrec*
                        ((g7373
                          (letrec*
                           ((x-cnd7374
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7374
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7373))))
                   g7372)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7375
                     (lambda (k j v)
                       (letrec*
                        ((g7376
                          (letrec*
                           ((x-cnd7377
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7377
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7381
                                (letrec*
                                 ((x7382
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7382))))
                               (x7378
                                (letrec*
                                 ((x7380
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7379
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7380 k j x7379)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7381 x7378)))))))
                        g7376))))
                   g7375)))
               (any? (lambda (v) (letrec* ((g7383 #t)) g7383)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x7385
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7385)))))
                   g7384)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7388
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7389)))))
                              g7388))
                           g7288))))
                      (if x-cnd7387
                        g7288
                        (begin
                          (write '(blame g7286 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7386)))
               (meta (lambda (v) (letrec* ((g7390 v)) g7390)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7392
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7393
                             (letrec*
                              ((x7394
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7395
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7293 x7396 x7395)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7394)))))
                           g7393))))
                      g7392))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7391
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7391)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7398
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7399
                             (letrec*
                              ((x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7401
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7298 x7402 x7401)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7400)))))
                           g7399))))
                      g7398))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7397
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7397)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7404
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7405
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7407
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7303 x7408 x7407)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7406)))))
                           g7405))))
                      g7404))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7403
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7403)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7410
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7411
                             (letrec*
                              ((x7412
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7413
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7308 x7414 x7413)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7412)))))
                           g7411))))
                      g7410))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7409
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7409)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7416
                        (lambda (g7309)
                          (letrec*
                           ((g7417
                             (letrec*
                              ((x7418
                                (letrec*
                                 ((x7419
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7312 x7419)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7310 k7311 x7418)))))
                           g7417))))
                      g7416))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7415
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7415)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7421
                        (lambda (g7313)
                          (letrec*
                           ((g7422
                             (letrec*
                              ((x7423
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7316 x7424)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7314 k7315 x7423)))))
                           g7422))))
                      g7421))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7420
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7420)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7426
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7429
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7321 x7430 x7429)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7425)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7432
                        (lambda (g7322)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7325 x7435)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7431)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7437
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7438
                             (letrec*
                              ((x7439
                                (letrec*
                                 ((x7441
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7440
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7330 x7441 x7440)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7328 k7329 x7439)))))
                           g7438))))
                      g7437))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7436
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7436)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7442
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7442)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x7444
                        (letrec*
                         ((x7445
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7445)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7444)))))
                   g7443)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x7449
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7449))))
                    (g7447
                     (letrec*
                      ((x7450
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7450))))
                    (g7448
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7451
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7455))))
                          (x7452
                           (letrec*
                            ((x7453
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7453)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7454 x7452)))))))
                   g7448)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7457)))))
                   g7456)))
               (cadadr
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7461)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7460)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7459)))))
                   g7458)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7463
                        (letrec*
                         ((x7464
                           (letrec*
                            ((x7465
                              (begin
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7465)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7464)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7463)))))
                   g7462)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7469
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7469))))
                    (g7467
                     (letrec*
                      ((x7470
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7470))))
                    (g7468
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
                       ((g7471
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7472 res))
                       g7472))))
                   g7468)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7474
                        (letrec*
                         ((x7475
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7475)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7474)))))
                   g7473)))
               (cdaadr
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7479)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7478)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7477)))))
                   g7476)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7482))))
                    (g7481
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7483
                        #f
                        (letrec*
                         ((x-cnd7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7485 k)))))
                         (if x-cnd7484
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7486)))))))))
                   g7481)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7488)))))
                   g7487)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7491))))
                    (g7490
                     (letrec*
                      ((x-cnd7492
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7492
                        ""
                        (letrec*
                         ((x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7496))))
                          (x7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7494)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7495 x7493)))))))
                   g7490)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7502
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7502))))
                   g7499)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (letrec*
                         ((x7505
                           (letrec*
                            ((x7506
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7506)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7505)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7504)))))
                   g7503)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((x-cnd7512
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7512
                        x
                        (letrec*
                         ((x7514
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7513
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7514 x7513)))))))
                   g7509)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7515
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7515)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x-cnd7517
                        (letrec*
                         ((x7518 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7518)))))
                      (if x-cnd7517
                        (letrec*
                         ((x7519 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7519)))
                        #f))))
                   g7516)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7522))))
                    (g7521
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7523
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7524 (if val7243 val7243 #f)))
                             g7524)))))
                       g7523))))
                   g7521)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7526
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7526 9)))))
                      (letrec*
                       ((g7527
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7528
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7528 10)))))
                            (letrec*
                             ((g7529
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7530
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7530 32))))))
                             g7529)))))
                       g7527))))
                   g7525)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7532
                        (letrec*
                         ((x7533
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7533)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7532)))))
                   g7531)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7536))))
                    (g7535
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7535)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7537 #f)) g7537)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7539)))))
                   g7538)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7542))))
                    (g7541
                     (letrec*
                      ((x-cnd7543
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7543
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7541)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7545
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7546
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7546
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7547
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7548
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7548
                                       (letrec*
                                        ((x-cnd7549
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7549
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7550
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7551
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7551
                                             (letrec*
                                              ((x-cnd7552
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7552
                                                (letrec*
                                                 ((x-cnd7553
                                                   (letrec*
                                                    ((x7555
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7554
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7555 x7554)))))
                                                 (if x-cnd7553
                                                   (letrec*
                                                    ((x7557
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7556
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7557 x7556)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7558
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7559
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7559
                                                (letrec*
                                                 ((x-cnd7560
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7560
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7561
                                                       (letrec*
                                                        ((x-cnd7562
                                                          (letrec*
                                                           ((x7563
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
                                                             (= x7563 n)))))
                                                        (if x-cnd7562
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7564
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
                                                                    ((g7565
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7566
                                                                           (letrec*
                                                                            ((x7568
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
                                                                             (x7567
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
                                                                               x7568
                                                                               x7567)))))
                                                                         (if x-cnd7566
                                                                           (letrec*
                                                                            ((x7569
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
                                                                               x7569)))
                                                                           #f)))))
                                                                    g7565))))
                                                                g7564))))
                                                           (letrec*
                                                            ((g7570
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7570))
                                                          #f))))
                                                     g7561))
                                                   #f))
                                                #f)))))
                                         g7558)))))
                                   g7550)))))
                             g7547)))))
                       g7545))))
                   g7544)))
               (cdaaar
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7574)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7573)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7572)))))
                   g7571)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7576
                        (letrec*
                         ((x7577
                           (letrec*
                            ((x7578
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7578)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7577)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7576)))))
                   g7575)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7579
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7579)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7582
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7582))))
                    (g7581
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7583
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7584 (if val7252 val7252 #f)))
                             g7584)))))
                       g7583))))
                   g7581)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7589))))
                    (g7587
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
                       ((g7590
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7591 res))
                       g7591))))
                   g7587)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7592
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7592)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7598
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7598))))
                   g7595)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7605)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7617)))))
                   g7614)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7624))))
                    (g7623
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7623)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7625
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7625)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7629
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7629)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7633
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7637))))
                          (x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7635)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7636 x7634)))))))
                   g7631)))
               (caaadr
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7641)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7639)))))
                   g7638)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7644)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7649)))))
                   g7647)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7653)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7659
                        (letrec*
                         ((g7660
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7660)
                        (letrec*
                         ((x-cnd7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7662)))))
                         (if x-cnd7661
                           (letrec*
                            ((g7663
                              (letrec*
                               ((x7664
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7664)))))
                            g7663)
                           (letrec*
                            ((x-cnd7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7666)))))
                            (if x-cnd7665
                              (letrec*
                               ((g7667
                                 (letrec*
                                  ((x7669
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7668
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7669 x7668)))))
                               g7667)
                              (letrec*
                               ((x-cnd7670
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7671)))))
                               (if x-cnd7670
                                 (letrec*
                                  ((g7672
                                    (letrec*
                                     ((x7675
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7675 x7674 x7673)))))
                                  g7672)
                                 (letrec*
                                  ((x-cnd7676
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7677)))))
                                  (if x-cnd7676
                                    (letrec*
                                     ((g7678
                                       (letrec*
                                        ((x7682
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7679
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7682 x7681 x7680 x7679)))))
                                     g7678)
                                    (letrec*
                                     ((x-cnd7683
                                       (letrec*
                                        ((x7684
                                          (letrec*
                                           ((x7685
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7685)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7684)))))
                                     (if x-cnd7683
                                       (letrec*
                                        ((g7686
                                          (letrec*
                                           ((x7692
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7689
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7687
                                             (letrec*
                                              ((x7688
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7688)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7692
                                              x7691
                                              x7690
                                              x7689
                                              x7687)))))
                                        g7686)
                                       (letrec*
                                        ((x-cnd7693
                                          (letrec*
                                           ((x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7695)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7694)))))
                                        (if x-cnd7693
                                          (letrec*
                                           ((g7696
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7701
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7699
                                                (letrec*
                                                 ((x7700
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7700))))
                                               (x7697
                                                (letrec*
                                                 ((x7698
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7698)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7704
                                                 x7703
                                                 x7702
                                                 x7701
                                                 x7699
                                                 x7697)))))
                                           g7696)
                                          (letrec*
                                           ((x-cnd7705
                                             (letrec*
                                              ((x7706
                                                (letrec*
                                                 ((x7707
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7707)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7706)))))
                                           (if x-cnd7705
                                             (letrec*
                                              ((g7708
                                                (letrec*
                                                 ((x7718
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7715
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7714))))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7712))))
                                                  (x7709
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7710)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7718
                                                    x7717
                                                    x7716
                                                    x7715
                                                    x7713
                                                    x7711
                                                    x7709)))))
                                              g7708)
                                             (letrec*
                                              ((g7719
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7719)))))))))))))))))))
                   g7656)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7722))))
                    (g7721
                     (letrec*
                      ((x-cnd7723
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7723
                        #f
                        (letrec*
                         ((x-cnd7724
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7725 e)))))
                         (if x-cnd7724
                           l
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7726)))))))))
                   g7721)))
               (cddddr
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7729)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7735
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7735)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7738))))
                    (g7737
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7737)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7740
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7740))))
                   g7739)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7744
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7745)))
                           #f))))
                      (letrec*
                       ((g7746
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7746))))
                   g7743)))
               (cddaar
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
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7750)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7749)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7748)))))
                   g7747)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x-cnd7752
                        (letrec*
                         ((x7753 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7753 c)))))
                      (if x-cnd7752
                        (letrec*
                         ((x7754 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7754)))
                        #f))))
                   g7751)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (letrec*
                      ((x-cnd7758
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7758
                        #f
                        (letrec*
                         ((x-cnd7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7760 k)))))
                         (if x-cnd7759
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7761)))))))))
                   g7756)))
               (not (lambda (x) (letrec* ((g7762 (if x #f #t))) g7762)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7763
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7763)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        #f
                        (letrec*
                         ((x-cnd7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7769 e)))))
                         (if x-cnd7768
                           l
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7770)))))))))
                   g7765)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7778
                             (letrec*
                              ((x-cnd7779
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7779
                                0
                                (letrec*
                                 ((x7780
                                   (letrec*
                                    ((x7781
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7781)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7780)))))))
                           g7778))))
                      (letrec*
                       ((g7782
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7782))))
                   g7776)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7788
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7788))))
                   g7785)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7790)))))
                   g7789)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7792)))))
                   g7791)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        #f
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7799 k)))))
                         (if x-cnd7798
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7800)))))))))
                   g7795)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7802)))))
                   g7801)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7808)))))
                   g7805)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7810
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7810))))
                   g7809)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x-cnd7816
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7816
                        #t
                        (letrec*
                         ((x-cnd7817
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7817
                           (letrec*
                            ((g7818
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7820))))
                             (g7819
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7821)))))
                            g7819)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7813)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7824))))
                    (g7823
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7825
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7823)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7831
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7831))))
                   g7828)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7833
                        (letrec*
                         ((x7834
                           (letrec*
                            ((x7835
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7835)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7834)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7833)))))
                   g7832)))
               (newline (lambda () (letrec* ((g7836 #f)) g7836)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (letrec*
                         ((x7840
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7840))))
                       (x7838
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7839 x7838)))))
                   g7837)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7843))))
                    (g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7844)))))
                   g7842)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7849))))
                    (g7846
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x7851
                        (letrec*
                         ((x7852
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7852)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x-cnd7853
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7853
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7855
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7854
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7855 x7854)))))))
                   g7848)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7857
                        a
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7858)))))))
                   g7856)))
               (c
                (lambda (_)
                  (letrec*
                   ((g7859
                     (begin (write '(funapp 1423 47)) (display "\n") 'unit)))
                   g7859)))
               (b
                (lambda (x _)
                  (letrec*
                   ((g7860
                     (begin (write '(funapp 1424 50)) (display "\n") (x 1))))
                   g7860)))
               (a
                (lambda (x y q)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1430 35))
                          (display "\n")
                          (= q 0))))
                      (if x-cnd7862
                        (letrec*
                         ((g7863
                           (begin
                             (write '(funapp 1432 42))
                             (display "\n")
                             (x 0)))
                          (g7864
                           (begin
                             (write '(funapp 1432 56))
                             (display "\n")
                             (y 0))))
                         g7864)
                        (begin
                          (write '(funapp 1433 25))
                          (display "\n")
                          (error
                           (begin
                             (write '(funapp 1433 31))
                             (display "\n")
                             'invalid)))))))
                   g7861)))
               (f
                (lambda (n x q)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1440 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7866
                        (begin (write '(funapp 1442 25)) (display "\n") (x q))
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1446 37))
                                (display "\n")
                                (p)))
                             (x7868
                              (letrec*
                               ((x7872
                                 (begin
                                   (write '(funapp 1449 40))
                                   (display "\n")
                                   (- n 1)))
                                (x7869
                                 (letrec*
                                  ((x7871
                                    (begin
                                      (write '(funapp 1452 43))
                                      (display "\n")
                                      (_)))
                                   (x7870
                                    (begin
                                      (write '(funapp 1452 55))
                                      (display "\n")
                                      (b x _))))
                                  (begin
                                    (write '(funapp 1453 35))
                                    (display "\n")
                                    (λ x7871 x7870)))))
                               (begin
                                 (write '(funapp 1454 32))
                                 (display "\n")
                                 (f x7872 x7869 p)))))
                            (begin
                              (write '(funapp 1455 29))
                              (display "\n")
                              (λ x7873 x7868)))))
                         (begin
                           (write '(funapp 1456 26))
                           (display "\n")
                           (a x x7867 q)))))))
                   g7865)))
               (s
                (lambda (n q)
                  (letrec*
                   ((g7874
                     (begin
                       (write '(funapp 1458 50))
                       (display "\n")
                       (f n c q))))
                   g7874)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7875
                     (begin (write '(funapp 1459 51)) (display "\n") (s n 0))))
                   g7875))))
              (letrec*
               ((g7876
                 (letrec*
                  ((x7878
                    (begin
                      (write '(funapp 1464 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7879
                            (lambda (g7331)
                              (letrec*
                               ((g7880
                                 (letrec*
                                  ((x7881
                                    (letrec*
                                     ((x7882
                                       (begin
                                         (write '(funapp 1473 44))
                                         (display "\n")
                                         (integer?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 1474 36))
                                       (display "\n")
                                       (f7334 x7882)))))
                                  (begin
                                    (write '(funapp 1475 33))
                                    (display "\n")
                                    (any/c j7332 k7333 x7881)))))
                               g7880))))
                          g7879))
                       (begin (write '(funapp 1478 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1479 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7877 (input)))
                  (begin
                    (write '(funapp 1482 19))
                    (display "\n")
                    (x7878 x7877)))))
               g7876))))
           g7348))))
       g7346)))
    g7345)))
