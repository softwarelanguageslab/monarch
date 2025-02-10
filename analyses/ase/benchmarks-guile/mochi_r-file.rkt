(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7338 #t)) g7338)))
    (meta (lambda (v) (letrec* ((g7339 v)) g7339)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7340
          (letrec*
           ((g7341
             (letrec*
              ((x-e7342 lst))
              (letrec*
               ((v1742 x-e7342))
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
                   ((x-cnd7343
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7343
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
           g7341)))
        g7340)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7344 (lambda (v) (letrec* ((g7345 v)) g7345)))) g7344)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7346
          (letrec*
           ((x7347 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7347)))))
        g7346))))
   (letrec*
    ((g7348
      (letrec*
       ((g7349
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
           ((g7350 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7351
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7352
                     (lambda (k j lst)
                       (letrec*
                        ((g7353
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7354
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7354))
                             lst))))
                        g7353))))
                   g7352)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7356
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7355)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7358
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7357)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7360
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7359)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7363 #t)) g7363)) g7269))))
                      (if x-cnd7362
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7361)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7366 #t)) g7366)) g7272))))
                      (if x-cnd7365
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7364)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7368
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7367)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7370
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7369)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7372
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
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
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7375
                             (begin
                               (write '(funapp 145 42))
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
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7378
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7382
                                (letrec*
                                 ((x7383
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7383))))
                               (x7379
                                (letrec*
                                 ((x7381
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7380
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7381 k j x7380)))))
                              (begin
                                (write '(funapp 168 31))
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
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7386)))))
                   g7385)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x-cnd7388
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7389
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7390)))))
                              g7389))
                           g7284))))
                      (if x-cnd7388
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7387)))
               (meta (lambda (v) (letrec* ((g7391 v)) g7391)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7393
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7394
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7397
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7396
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7397 x7396)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7395)))))
                           g7394))))
                      g7393))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7392
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7392)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7399
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7400
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7402
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7403 x7402)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7401)))))
                           g7400))))
                      g7399))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7398
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7398)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7405
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7408
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7409 x7408)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7404)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7411
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7414
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7415 x7414)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7410)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7417
                        (lambda (g7305)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7420)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7416)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7422
                        (lambda (g7309)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7425)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7421)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7427
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7430
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7431 x7430)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7426)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7433
                        (lambda (g7318)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7436
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7436)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7432)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7438
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7439
                             (letrec*
                              ((x7440
                                (letrec*
                                 ((x7442
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7441
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7442 x7441)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7440)))))
                           g7439))))
                      g7438))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7437
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7437)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7443
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
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
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7446)))))
                      (begin
                        (write '(funapp 374 23))
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
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7450))))
                    (g7448
                     (letrec*
                      ((x7451
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7451))))
                    (g7449
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7452
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7455
                           (letrec*
                            ((x7456
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7456))))
                          (x7453
                           (letrec*
                            ((x7454
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7454)))))
                         (begin
                           (write '(funapp 390 26))
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
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7462)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7461)))))
                      (begin
                        (write '(funapp 406 23))
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7466)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7465)))))
                      (begin
                        (write '(funapp 417 23))
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
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7470))))
                    (g7468
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7471))))
                    (g7469
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
                       ((g7472
                         (begin
                           (write '(funapp 431 32))
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
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7476)))))
                      (begin
                        (write '(funapp 440 23))
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7480)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7479)))))
                      (begin
                        (write '(funapp 451 23))
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
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7483))))
                    (g7482
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7484
                        #f
                        (letrec*
                         ((x-cnd7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7486 k)))))
                         (if x-cnd7485
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
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
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
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
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7492))))
                    (g7491
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7493
                        ""
                        (letrec*
                         ((x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7497))))
                          (x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7495)))))
                         (begin
                           (write '(funapp 488 26))
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
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7502))))
                    (g7500
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7503
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
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
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7507)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7506)))))
                      (begin
                        (write '(funapp 511 23))
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
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7512))))
                    (g7510
                     (letrec*
                      ((x-cnd7513
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7513
                        x
                        (letrec*
                         ((x7515
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7514
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7515 x7514)))))))
                   g7510)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7516
                     (begin (write '(funapp 527 49)) (display "\n") '())))
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
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7519)))))
                      (if x-cnd7518
                        (letrec*
                         ((x7520 #\z))
                         (begin
                           (write '(funapp 536 48))
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
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7523))))
                    (g7522
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7524
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
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
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
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
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7529 10)))))
                            (letrec*
                             ((g7530
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7531
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
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
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7534)))))
                      (begin
                        (write '(funapp 589 23))
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
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7537))))
                    (g7536
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7536)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7538 #f)) g7538)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
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
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7543))))
                    (g7542
                     (letrec*
                      ((x-cnd7544
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7544
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7542)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7546
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7548
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7547
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7548 x7547)))))
                            (letrec*
                             ((g7549
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7551
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7550
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7552 x7551 x7550)))))
                                  (letrec*
                                   ((g7553
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7561
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7560
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7557
                                             (letrec*
                                              ((x7559
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7558
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7559 x7558))))
                                            (x7554
                                             (letrec*
                                              ((x7556
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7555
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7556 x7555)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7561 x7560 x7557 x7554)))))
                                        (letrec*
                                         ((g7562
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7578
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7577
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7563
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7564
                                                    (letrec*
                                                     ((x7575
                                                       (letrec*
                                                        ((x7576
                                                          (begin
                                                            (write
                                                             '(funapp 675 59))
                                                            (display "\n")
                                                            (vector-length
                                                             b))))
                                                        (begin
                                                          (write
                                                           '(funapp 676 57))
                                                          (display "\n")
                                                          (= x7576 n))))
                                                      (x7565
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7566
                                                               (letrec*
                                                                ((x7573
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7567
                                                                  (letrec*
                                                                   ((x7570
                                                                     (letrec*
                                                                      ((x7572
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             691
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (vector-ref
                                                                           a
                                                                           i)))
                                                                       (x7571
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             695
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (vector-ref
                                                                           b
                                                                           i))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           698
                                                                           71))
                                                                        (display
                                                                         "\n")
                                                                        (equal?
                                                                         x7572
                                                                         x7571))))
                                                                    (x7568
                                                                     (letrec*
                                                                      ((x7569
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             704
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (+
                                                                           i
                                                                           1))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           707
                                                                           71))
                                                                        (display
                                                                         "\n")
                                                                        (loop
                                                                         x7569)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7570
                                                                          x7568)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7573
                                                                      x7567)))))
                                                             g7566))))
                                                        (letrec*
                                                         ((g7574
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7574))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7575 x7565)))))
                                                  g7564))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7578 x7577 x7563))))))
                                         g7562)))))
                                   g7553)))))
                             g7549)))))
                       g7546))))
                   g7545)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7580
                        (letrec*
                         ((x7581
                           (letrec*
                            ((x7582
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7582)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7581)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7580)))))
                   g7579)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7584
                        (letrec*
                         ((x7585
                           (letrec*
                            ((x7586
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7586)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7585)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7584)))))
                   g7583)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7587
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7587)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7590))))
                    (g7589
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7591
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7592 (if val7251 val7251 #f)))
                             g7592)))))
                       g7591))))
                   g7589)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 775 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 776 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7598
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7599 res))
                       g7599))))
                   g7595)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7600
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7600)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7606
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7606))))
                   g7603)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7613)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7625)))))
                   g7622)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7629)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7631)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7633
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7633)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7637
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7637)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7641
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7645))))
                          (x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7643)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7644 x7642)))))))
                   g7639)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7651)))))
                   g7650)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7657)))))
                   g7655)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7661)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7660)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7659)))))
                   g7658)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7667
                        (letrec*
                         ((g7668
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7668)
                        (letrec*
                         ((x-cnd7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7670)))))
                         (if x-cnd7669
                           (letrec*
                            ((g7671
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7672)))))
                            g7671)
                           (letrec*
                            ((x-cnd7673
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7674)))))
                            (if x-cnd7673
                              (letrec*
                               ((g7675
                                 (letrec*
                                  ((x7677
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7676
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7677 x7676)))))
                               g7675)
                              (letrec*
                               ((x-cnd7678
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7679)))))
                               (if x-cnd7678
                                 (letrec*
                                  ((g7680
                                    (letrec*
                                     ((x7683
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7682
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7681
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7683 x7682 x7681)))))
                                  g7680)
                                 (letrec*
                                  ((x-cnd7684
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7685)))))
                                  (if x-cnd7684
                                    (letrec*
                                     ((g7686
                                       (letrec*
                                        ((x7690
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7689
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7688
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7690 x7689 x7688 x7687)))))
                                     g7686)
                                    (letrec*
                                     ((x-cnd7691
                                       (letrec*
                                        ((x7692
                                          (letrec*
                                           ((x7693
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7693)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7692)))))
                                     (if x-cnd7691
                                       (letrec*
                                        ((g7694
                                          (letrec*
                                           ((x7700
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7696)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7700
                                              x7699
                                              x7698
                                              x7697
                                              x7695)))))
                                        g7694)
                                       (letrec*
                                        ((x-cnd7701
                                          (letrec*
                                           ((x7702
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7703)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7702)))))
                                        (if x-cnd7701
                                          (letrec*
                                           ((g7704
                                             (letrec*
                                              ((x7712
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7711
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7710
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7708))))
                                               (x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7706)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7712
                                                 x7711
                                                 x7710
                                                 x7709
                                                 x7707
                                                 x7705)))))
                                           g7704)
                                          (letrec*
                                           ((x-cnd7713
                                             (letrec*
                                              ((x7714
                                                (letrec*
                                                 ((x7715
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7715)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7714)))))
                                           (if x-cnd7713
                                             (letrec*
                                              ((g7716
                                                (letrec*
                                                 ((x7726
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7725
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7724
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7721
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7722))))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7720))))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7718)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7726
                                                    x7725
                                                    x7724
                                                    x7723
                                                    x7721
                                                    x7719
                                                    x7717)))))
                                              g7716)
                                             (letrec*
                                              ((g7727
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7727)))))))))))))))))))
                   g7664)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7730))))
                    (g7729
                     (letrec*
                      ((x-cnd7731
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7731
                        #f
                        (letrec*
                         ((x-cnd7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7733 e)))))
                         (if x-cnd7732
                           l
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7734)))))))))
                   g7729)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (letrec*
                            ((x7738
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7741)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7743)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7746))))
                    (g7745
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7745)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7748
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7748))))
                   g7747)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7753)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7754 x7752)))))
                      (letrec*
                       ((g7755
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7755))))
                   g7751)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x-cnd7761
                        (letrec*
                         ((x7762 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7762 c)))))
                      (if x-cnd7761
                        (letrec*
                         ((x7763 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7763)))
                        #f))))
                   g7760)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        #f
                        (letrec*
                         ((x-cnd7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7769 k)))))
                         (if x-cnd7768
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7770)))))))))
                   g7765)))
               (not (lambda (x) (letrec* ((g7771 (if x #f #t))) g7771)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7772
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7772)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x-cnd7776
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7776
                        #f
                        (letrec*
                         ((x-cnd7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7778 e)))))
                         (if x-cnd7777
                           l
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7779)))))))))
                   g7774)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7787
                             (letrec*
                              ((x-cnd7788
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7788
                                0
                                (letrec*
                                 ((x7789
                                   (letrec*
                                    ((x7790
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7790)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7789)))))))
                           g7787))))
                      (letrec*
                       ((g7791
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7791))))
                   g7785)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7797
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7797))))
                   g7794)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7799)))))
                   g7798)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7806
                        #f
                        (letrec*
                         ((x-cnd7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7808 k)))))
                         (if x-cnd7807
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7809)))))))))
                   g7804)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7811)))))
                   g7810)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7817)))))
                   g7814)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7819
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7819))))
                   g7818)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7825
                        #t
                        (letrec*
                         ((x-cnd7826
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7826
                           (letrec*
                            ((g7827
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7829))))
                             (g7828
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7830)))))
                            g7828)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7822)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7833))))
                    (g7832
                     (letrec*
                      ((x-cnd7834
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7834
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7832)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7839))))
                    (g7837
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7840
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7840))))
                   g7837)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7842
                        (letrec*
                         ((x7843
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7844)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7843)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7842)))))
                   g7841)))
               (newline (lambda () (letrec* ((g7845 #f)) g7845)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7849))))
                       (x7847
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7848 x7847)))))
                   g7846)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7852))))
                    (g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7853)))))
                   g7851)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7859))))
                    (g7856
                     (letrec*
                      ((x7860
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7861)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7860))))
                    (g7857
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7862
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7863
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7864 x7863)))))))
                   g7857)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7866
                        a
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7867)))))))
                   g7865)))
               (STATE/C
                (lambda (g7330 g7331 g7332)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1405 25))
                          (display "\n")
                          ((lambda (v7329)
                             (letrec*
                              ((g7870
                                (letrec*
                                 ((x-cnd7871
                                   (begin
                                     (write '(funapp 1409 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1409 48))
                                        (display "\n")
                                        'init)
                                      v7329))))
                                 (if x-cnd7871
                                   #t
                                   (letrec*
                                    ((x-cnd7872
                                      (begin
                                        (write '(funapp 1413 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1413 51))
                                           (display "\n")
                                           'opened)
                                         v7329))))
                                    (if x-cnd7872
                                      #t
                                      (letrec*
                                       ((x-cnd7873
                                         (begin
                                           (write '(funapp 1417 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1417 54))
                                              (display "\n")
                                              'closed)
                                            v7329))))
                                       (if x-cnd7873
                                         #t
                                         (begin
                                           (write '(funapp 1420 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1420 44))
                                              (display "\n")
                                              'ignore)
                                            v7329))))))))))
                              g7870))
                           g7332))))
                      (if x-cnd7869
                        g7332
                        (begin
                          (write '(blame g7330 1425 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7330)))))))
                   g7868)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7874
                     (begin (write '(funapp 1436 50)) (display "\n") (loop))))
                   g7874)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1442 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1442 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7876
                        (begin
                          (write '(funapp 1443 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1443 44))
                          (display "\n")
                          'ignore)))))
                   g7875)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7877
                     (if x
                       (begin
                         (write '(funapp 1447 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7877)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1453 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7879
                        (letrec*
                         ((g7880
                           (begin
                             (write '(funapp 1455 41))
                             (display "\n")
                             'closed)))
                         g7880)
                        (letrec*
                         ((x-cnd7881
                           (begin
                             (write '(funapp 1457 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1457 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd7881
                           (letrec*
                            ((g7882
                              (begin
                                (write '(funapp 1459 44))
                                (display "\n")
                                'ignore)))
                            g7882)
                           (letrec*
                            ((g7883
                              (begin
                                (write '(funapp 1460 45))
                                (display "\n")
                                (loop)))
                             (g7884 0))
                            g7884)))))))
                   g7878)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g7885
                     (if x
                       (begin
                         (write '(funapp 1464 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g7885)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1468 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1468 61))
                        (display "\n")
                        (close_ y x7888))))
                    (g7887
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 1472 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1472 57))
                           (display "\n")
                           (read_ y x7890)))))
                      (begin
                        (write '(funapp 1473 23))
                        (display "\n")
                        (f x y x7889)))))
                   g7887)))
               (next
                (lambda (st)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1480 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1480 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd7892
                        (begin
                          (write '(funapp 1481 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1481 44))
                          (display "\n")
                          'ignore)))))
                   g7891)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1488 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd7894
                        (letrec*
                         ((x7895
                           (begin
                             (write '(funapp 1490 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1490 54))
                           (display "\n")
                           (f x #t x7895)))
                        (begin
                          (write '(funapp 1491 25))
                          (display "\n")
                          (f x #f st))))))
                   g7893)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1498 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd7898
                        (begin
                          (write '(funapp 1499 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1499 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1499 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1499 63))
                             (display "\n")
                             'init))))))
                    (g7897
                     (begin (write '(funapp 1500 27)) (display "\n") 'unit)))
                   g7897))))
              (letrec*
               ((g7899
                 (letrec*
                  ((x7902
                    (begin
                      (write '(funapp 1506 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7903
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7904
                                 (letrec*
                                  ((x7905
                                    (letrec*
                                     ((x7907
                                       (begin
                                         (write '(funapp 1515 44))
                                         (display "\n")
                                         (integer?/c j7335 k7336 g7333)))
                                      (x7906
                                       (begin
                                         (write '(funapp 1516 44))
                                         (display "\n")
                                         (integer?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 1517 36))
                                       (display "\n")
                                       (f7337 x7907 x7906)))))
                                  (begin
                                    (write '(funapp 1518 33))
                                    (display "\n")
                                    (any/c j7335 k7336 x7905)))))
                               g7904))))
                          g7903))
                       (begin (write '(funapp 1521 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1522 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7901 (input))
                   (x7900 (input)))
                  (begin
                    (write '(funapp 1526 19))
                    (display "\n")
                    (x7902 x7901 x7900)))))
               g7899))))
           g7351))))
       g7349)))
    g7348)))
